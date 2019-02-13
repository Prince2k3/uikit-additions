import UIKit
import DataSource

public class AutoCompleteView: UIView {
    public typealias CompletionHandler = (_ selected: Any) -> Void
    public typealias TextDidChangeHandler = (_ text: String) -> Void

    private lazy var tableView: UITableView = {
        let view = UITableView(frame: .zero, style: .plain)
        view.delegate = self
        view.tableFooterView = UIView()
        view.clipsToBounds = true
        view.estimatedRowHeight = 64
        view.rowHeight = UITableView.automaticDimension
        return view
    }()

    private var dataSource: DataSource = DataSource(cellIdentifier: "")
    private var keyboardManager: KeyboardManager? = KeyboardManager()
    private var textField: UITextField?
    private var presentingView: UIView?
    
    public var completionSelected: CompletionHandler?
    public var textDidChange: TextDidChangeHandler?
    public var completions: [Any] = [] {
        didSet {
            self.dataSource.items = self.completions
            self.tableView.reloadData()
        }
    }

    deinit {
        self.keyboardManager = nil
    }

    public convenience init(textField: UITextField, presentingView: UIView) {
        self.init()
        self.textField = textField
        self.presentingView = presentingView

        textField.addTarget(self, action: #selector(textFieldDidBegan), for: .editingDidBegin)
        textField.addTarget(self, action: #selector(textFieldEditingChanged), for: .editingChanged)
        textField.addTarget(self, action: #selector(textFieldDidEnd), for: .editingDidEnd)

        presentingView.addSubview(self)

        let textFieldFrame = presentingView.convert(self.textField!.frame, from: self.textField!.superview)
        self.topAnchor.constraint(equalTo: presentingView.topAnchor, constant: textFieldFrame.maxY + 8).isActive = true
        self.leftAnchor.constraint(equalTo: presentingView.safeAreaLayoutGuide.leftAnchor, constant: 8).isActive = true
        self.rightAnchor.constraint(equalTo: presentingView.safeAreaLayoutGuide.rightAnchor, constant: -8).isActive = true

        commonInit()
    }

    private func commonInit() {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.clipsToBounds = true
        self.isHidden = true

        self.tableView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(self.tableView)
        self.tableView.anchorToSuperview()

        self.layer.cornerRadius = 10
        self.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        self.layer.shadowOffset = CGSize(width: 0, height: 1)
        self.layer.shadowOpacity = 1.0
        self.layer.shadowRadius = 2.0
        self.layer.masksToBounds = false

        self.keyboardManager?.keyboardDidShowHandler = self.keyboardDidShow
        layoutIfNeeded()
    }

    private func keyboardDidShow() {
        guard
            let endFrame = self.keyboardManager?.endFrame,
            let textField = self.textField,
            let presentingView = self.presentingView
            else { return }

        var frame = presentingView.frame
        frame.size.height -= endFrame.height
        frame.size.height -= (textField.frame.maxY + 64)

        self.heightAnchor.constraint(equalToConstant: frame.height).isActive = true
        layoutIfNeeded()
    }

    @objc public func textFieldEditingChanged(_ textField: UITextField) {
        guard
            let text = textField.text
            else { return }

        self.textDidChange?(text)
        if text.isEmpty {
            self.completions = []
        }

        self.isHidden = text.isEmpty
    }

    @objc public func textFieldDidBegan(_ textField: UITextField) {
        guard
            let text = textField.text
            else { return }
        self.isHidden = text.isEmpty
    }

    @objc public func textFieldDidEnd(_ textField: UITextField) {
        self.isHidden = true
    }
}

extension AutoCompleteView {
    public func register<T: Identifiable>(nib cls: T.Type, bundle: Bundle? = nil) {
        self.tableView.register(nib: cls, bundle: bundle)
        self.dataSource = DataSource(cellIdentifier: cls.identifier)
        self.tableView.dataSource = self.dataSource
    }

    public func register<T: Identifiable>(`class` cls: T.Type) {
        self.tableView.register(class: cls)
        self.dataSource = DataSource(cellIdentifier: cls.identifier)
        self.tableView.dataSource = self.dataSource
    }
}

extension AutoCompleteView: UITableViewDelegate {
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.textField?.removeTarget(self, action: #selector(textFieldEditingChanged), for: .editingChanged)
        tableView.deselectRow(at: indexPath, animated: true)
        self.completionSelected?(self.completions[indexPath.row])
        self.isHidden = true
        self.textField?.addTarget(self, action: #selector(textFieldEditingChanged), for: .editingChanged)
    }
}
