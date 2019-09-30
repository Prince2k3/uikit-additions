import UIKit

public class InputAccessoryView: UIView {
    public enum Kind {
        case form, button
    }
    
    private lazy var formView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var buttonView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var previousButton: UIButton = {
        let button = UIButton()
        button.setImage(InputAccessoryIcons.imageOfArrowup, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.heightAnchor.constraint(equalToConstant: 44).isActive = true
        return button
    }()
    
    private lazy var nextButton: UIButton = {
        let button = UIButton()
        button.setImage(InputAccessoryIcons.imageOfArrowdown, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.heightAnchor.constraint(equalToConstant: 44).isActive = true
        return button
    }()
    
    private lazy var doneButton: UIButton = {
        let button = UIButton()
        button.setTitle("Done".localized(), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.heightAnchor.constraint(equalToConstant: 44).isActive = true
        button.widthAnchor.constraint(equalToConstant: 80).isActive = true
        return button
    }()
    
    private lazy var buttonsStackView: UIStackView = {
        let view = UIStackView(arrangedSubviews: [previousButton, nextButton])
        view.translatesAutoresizingMaskIntoConstraints = false
        view.distribution = .fillEqually
        view.alignment = .center
        view.axis = .horizontal
        return view
    }()
    
    private lazy var formStackView: UIStackView = {
        let spacer = UIView()
        spacer.translatesAutoresizingMaskIntoConstraints = false
        spacer.backgroundColor = .clear
        
        let view = UIStackView(arrangedSubviews: [buttonsStackView, spacer, doneButton])
        view.translatesAutoresizingMaskIntoConstraints = false
        view.distribution = .fill
        view.alignment = .center
        view.axis = .horizontal
        return view
    }()
    
    private var button: UIButton = {
        let button = UIButton()
        button.setTitle("Next".localized(), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    public weak var view: UIView?
    
    public var moveToPreviousHandler: ((UIView?) -> Void)?
    public var moveToNextHandler: ((UIView?) -> Void)?
    public var doneHandler: ((UIView?) -> Void)?
    public var buttonActionHandler: (() -> Void)?
    public var inputType: InputAccessoryView.Kind = .form {
        didSet {
            buttonView.isHidden = inputType != .button
            formView.isHidden = inputType != .form
        }
    }

    public var buttonBackgroundColor: UIColor? {
        didSet {
            button.setBackgroundColor(buttonBackgroundColor, for: .normal)
        }
    }
    
    public var buttonTitle: String = "Next" {
        didSet {
            button.setTitle(buttonTitle, for: .normal)
        }
    }
    
    public var formDoneTitle: String {
        get { return doneButton.titleLabel?.text ?? "" }
        set { doneButton.setTitle(newValue, for: .normal) }
    }

    public var isPreviousButtonEnabled: Bool = false {
        didSet {
            previousButton.isEnabled = isPreviousButtonEnabled
            previousButton.alpha = isPreviousButtonEnabled ? 1 : 0.4
        }
    }

    public var isNextButtonEnabled: Bool = false {
        didSet {
            nextButton.isEnabled = isNextButtonEnabled
            nextButton.alpha = isNextButtonEnabled ? 1 : 0.4
        }
    }

    public var isNextButtonHidden: Bool = false {
        didSet {
            nextButton.isHidden = isNextButtonHidden
        }
    }

    public var isPreviousButtonHidden: Bool = false {
        didSet {
            previousButton.isHidden = isPreviousButtonHidden
        }
    }
    
    public override init(frame: CGRect) {
        super.init(frame: .zero)
        commonInit()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    func commonInit() {
        formView.addSubview(formStackView)
        formStackView.anchorToSuperview(edgeInset: UIEdgeInsets(right: 16, left: 16))
        
        addSubview(formView)
        formView.anchorToSuperview()
        
        buttonView.addSubview(button)
        button.anchorToSuperview()
        
        addSubview(buttonView)
        buttonView.anchorToSuperview()
    }
    
    func previousButtonAction(_ button: UIButton) {
        moveToPreviousHandler?(view)
    }
    
    func nextButtonAction(_ button: UIButton) {
        moveToNextHandler?(view)
    }
    
    func doneButtonAction(_ button: UIButton) {
        doneHandler?(view)
    }
    
    func buttonAction() {
        buttonActionHandler?()
    }
}
