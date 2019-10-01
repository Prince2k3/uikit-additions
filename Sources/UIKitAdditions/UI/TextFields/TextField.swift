import UIKit
import CoreGraphics
import SwiftAdditions

public class TextField: UITextField {
    public enum IconPosition {
        case left, right
    }

    @IBInspectable public var stringFormat: String = ""
    @IBInspectable public var allowOnlyNumbers: Bool = false
    @IBInspectable public var maxCharacterLength: Int = Int.max
    @IBInspectable public var minCharacterLength: Int = -1
    @IBInspectable public var isRequired: Bool = true
    @IBInspectable public var activeTextColor: UIColor = .black
    @IBInspectable public var inactiveTextColor: UIColor = .darkGray
    @IBInspectable public var activeFloatingLabelColor: UIColor = .blue
    @IBInspectable public var inactiveFloatingLabelColor: UIColor = .lightGray
    @IBInspectable public var placeholderTextColor: UIColor = .black {
        didSet {
            if let placeholder = placeholder {
                attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [.foregroundColor: placeholderTextColor])
            }
        }
    }

    @IBInspectable public var underlineActiveViewColor: UIColor = UIColor.lightGray.withAlphaComponent(0.4)
    @IBInspectable public var underlineViewColor: UIColor = UIColor.lightGray.withAlphaComponent(0.4) {
        didSet {
            underlineView?.backgroundColor = underlineViewColor
        }
    }

    @IBInspectable public var enableFloatingPlaceholder: Bool = true {
        didSet {
            if !enableFloatingPlaceholder {
                hideFloatinglabel(false)
            }
        }
    }

    @IBInspectable public var showUnderline: Bool = false {
        didSet {
            underlineView.alpha = showUnderline ? 1 : 0
            if showUnderline {
                borderWidth = 0
            }
        }
    }

    @IBInspectable public var useAsDropDown: Bool = false {
        didSet {
            UIMenuController.shared.isMenuVisible = !useAsDropDown
            setNeedsLayout()
        }
    }

    private var underlineView: UIView!
    private var floatingLabel: UILabel!
    private var floatingLabelTopConstraint: NSLayoutConstraint!
    private var floatingLabelVisible: Bool = false
    private var originalBorderColor: UIColor!
    private var originalTextColor: UIColor!
    private var originalPlaceholder: String = ""
    private var doAnimation: Bool = false

    public var validator: Validator?
    public var hasError: Bool = false {
        didSet {
            guard hasError != oldValue else { return }
            updateError()
        }
    }

    public var iconPosition: IconPosition = .left {
        didSet {
            guard iconPosition != oldValue else { return }
            updateIcon()
        }
    }

    public var iconSize: CGSize = CGSize(width: 45, height: 24) {
        didSet {
            guard iconSize != oldValue else { return }
            updateIcon()
        }
    }

    public var iconImage: UIImage? {
        didSet {
            guard iconImage != oldValue else { return }
            updateIcon()
        }
    }

    private var _text: String = ""

    public override var text: String? {
        get { return super.text }

        set {
            _text = newValue ?? ""
            checkText(&_text, animated: doAnimation)
            super.text = _text
        }
    }

    public override var textAlignment: NSTextAlignment {
        didSet {
            floatingLabel?.textAlignment = textAlignment
        }
    }

    public override var font: UIFont? {
        didSet {
            floatingLabel?.font = font
        }
    }

    public override var attributedPlaceholder: NSAttributedString? {
        didSet {
            if let attributedPlaceholder = attributedPlaceholder {
                floatingLabel?.text = nil
                floatingLabel?.attributedText = attributedPlaceholder
            }
        }
    }

    public override var placeholder: String? {
        didSet {
            if let placeholder = placeholder {
                floatingLabel?.attributedText = nil
                floatingLabel?.text = placeholder
                accessibilityLabel = placeholder
            }
        }
    }

    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }

    public override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }

    public override func textRect(forBounds bounds: CGRect) -> CGRect {
        var rect =  super.textRect(forBounds: bounds)

        if let leftView = leftView,
            leftViewMode == .always {
            rect.origin.x = leftView.frame.maxX + 6
        } else if let rightView = rightView,
            rightViewMode == .always {
            rect.origin.x = 0
            rect.size.width = bounds.width - rightView.frame.width
        }
        return rect
    }

    public override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return textRect(forBounds: bounds)
    }

    public override func caretRect(for position: UITextPosition) -> CGRect {
        if useAsDropDown {
            return .zero
        }
        return super.caretRect(for: position)
    }

    public override func canPerformAction(_ action: Selector, withSender sender: Any?) -> Bool {
        if action == #selector(UIResponderStandardEditActions.paste) &&
            action == #selector(UIResponderStandardEditActions.select) &&
            action == #selector(UIResponderStandardEditActions.selectAll) &&
            action == #selector(UIResponderStandardEditActions.copy) &&
            useAsDropDown {

            return false
        }
        return super.canPerformAction(action, withSender: sender)
    }

    public override func selectionRects(for range: UITextRange) -> [UITextSelectionRect] {
        if useAsDropDown {
            return []
        }
        return super.selectionRects(for: range)
    }

    func setup() {

        // setup underline View
        underlineView = UIView()
        underlineView.backgroundColor = underlineViewColor
        underlineView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(underlineView)
        underlineView.alpha = 0

        // setup floating label
        floatingLabel = UILabel()
        addSubview(floatingLabel)
        floatingLabel.translatesAutoresizingMaskIntoConstraints = false
        floatingLabel.textAlignment = textAlignment
        floatingLabel.textColor = activeFloatingLabelColor
        if let font = self.font {
            floatingLabel.font = UIFont(name: font.familyName, size: (max(12, font.pointSize * 0.65)))
        }
        floatingLabel.text = placeholder
        floatingLabel.alpha = 0
        floatingLabel.sizeToFit()

        underlineView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        underlineView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        underlineView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        underlineView.heightAnchor.constraint(equalToConstant: 1).isActive = true

        floatingLabel.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        floatingLabel.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        floatingLabelTopConstraint = floatingLabel.centerYAnchor.constraint(equalTo: centerYAnchor)
        floatingLabelTopConstraint.isActive = true

        addTarget(self, action: #selector(textFieldEditingChanged), for: .editingChanged)
        addTarget(self, action: #selector(textFieldEditingDidEnd), for: .editingDidEnd)
        addTarget(self, action: #selector(textFieldEditingDidBegin), for: .editingDidBegin)

        clipsToBounds = false
        originalPlaceholder = placeholder ?? ""
        originalBorderColor = borderColor
        originalTextColor = textColor
    }

    public func showFloatingLabel(_ animated: Bool = true) {
        if floatingLabelVisible || !enableFloatingPlaceholder {
            return
        }

        floatingLabel?.textColor = isFirstResponder ? activeFloatingLabelColor : inactiveFloatingLabelColor
        floatingLabelTopConstraint?.constant = -(bounds.height / 2)

        UIView.animate(withDuration: animated ? 0.3 : 0, delay: 0, options: .curveEaseInOut, animations: {
            self.floatingLabel?.alpha = 1
            self.layoutIfNeeded()
        }, completion: { _ in
            self.floatingLabelVisible = true
            self.doAnimation = false
        })
    }

    public func hideFloatinglabel(_ animated: Bool = true) {
        if !floatingLabelVisible || !enableFloatingPlaceholder {
            return
        }
        floatingLabelTopConstraint?.constant = 0
        UIView.animate(withDuration: animated ? 0.15 : 0, animations: {
            self.floatingLabel?.alpha = 0
            self.layoutIfNeeded()
        }, completion: { _ in
            self.floatingLabelVisible = false
            self.doAnimation = false
        })
    }

    public func updateError() {
        if hasError {
            originalBorderColor = borderColor
            originalTextColor = textColor
            borderColor = .red
            textColor = borderColor
            underlineView?.backgroundColor = borderColor
            floatingLabel?.textColor = borderColor
            placeholder = validator?.errorMessage ?? originalPlaceholder
        } else {
            borderColor = originalBorderColor
            textColor = originalTextColor
            underlineView?.backgroundColor = underlineViewColor
            floatingLabel?.textColor = isFirstResponder ? activeFloatingLabelColor : inactiveFloatingLabelColor
            placeholder = originalPlaceholder
        }

        if let placeholder = placeholder {
            let attributes: [NSAttributedString.Key: Any] =  [.foregroundColor: hasError ? borderColor ?? .red : placeholderTextColor]
            attributedPlaceholder = NSAttributedString(string: placeholder, attributes: attributes)
        }
    }

    public func updateIcon() {
        leftView = nil
        leftViewMode = .never
        rightView = nil
        rightViewMode = .never

        if let iconImage = self.iconImage {
            let imageView = UIImageView(image: iconImage)
            imageView.frame = CGRect(origin: .zero, size: iconSize)
            imageView.contentMode = .scaleAspectFit
            if iconPosition == .left {
                leftView = imageView
                leftViewMode = .always
            } else {
                rightView = imageView
                rightViewMode = .always
            }
        }
        setNeedsLayout()
    }

    @discardableResult
    public func validate() -> Bool {
        guard var text = text else {
            return (isRequired ? false : true)
        }

        if !stringFormat.isEmpty {
            text = text.clearFormat(stringFormat)
        }

        var valid: Bool = true

        if isRequired {
            valid = !text.trim().isEmpty
        }

        if !text.isEmpty &&
            minCharacterLength > text.count &&
            maxCharacterLength > text.count {
            valid = false
        }

        if let validator = validator {
            valid = valid && text.validate(validator)
        }

        hasError = !valid
        return valid
    }

    public func checkText(_ value: inout String, animated: Bool = true) {
        if hasError && isRequired {
            validate()
        }

        guard !value.isEmpty else {
            hideFloatinglabel(animated)
            return
        }

        showFloatingLabel(animated)

        if !stringFormat.isEmpty {
            value = value.clearFormat(stringFormat)
        }

        if allowOnlyNumbers {
            let characterSet = CharacterSet(charactersIn: "0123456789 +")
            value = value.components(separatedBy: characterSet.inverted).joined()
        }

        if !stringFormat.isEmpty {
            value = value.format(stringFormat)
        }

        toggleFloatingLabel()
    }

    public func toggleFloatingLabel() {
        if isFirstResponder {
            textColor = activeTextColor
            floatingLabel.textColor = hasError ? .red : activeFloatingLabelColor
        } else {
            textColor = inactiveTextColor
            floatingLabel.textColor =  hasError ? .red : inactiveFloatingLabelColor
        }
    }
}

extension TextField {
    @objc public func textFieldEditingDidBegin(_ textField: UITextField) {
        text = textField.text
        underlineView.backgroundColor = underlineActiveViewColor
    }

    @objc public func textFieldEditingDidEnd(_ textField: UITextField) {
        text = textField.text
        underlineView.backgroundColor = underlineViewColor
    }

    @objc public func textFieldEditingChanged(_ textField: UITextField) {
        doAnimation = true
        text = textField.text
    }
}
