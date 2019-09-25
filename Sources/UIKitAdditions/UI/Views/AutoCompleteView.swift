import UIKit
import DataSource

public class AutoCompleteView: UIView, UITableViewDelegate {
    public enum Section: String, CaseIterable {
        case main
    }
    
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
    
    private lazy var dataSource: DataSource<Section> = {
        return DataSource<Section>(sections: Section.allCases, tableViewCellProvider: tableViewCellProvider)
    }()
    
    private var keyboardManager: KeyboardManager? = KeyboardManager()
    private var tableViewCellProvider: DataSource<Section>.TableViewCellProvider!
    
    private weak var textField: UITextField!
    private weak var presentingView: UIView!
    
    public var completionSelected: CompletionHandler?
    public var textDidChange: TextDidChangeHandler?
    public var completions: [Any] = [] {
        didSet {
            dataSource.items[.main] = completions
            tableView.reloadData()
        }
    }
    
    public var textFieldText: String? {
        get { return textField?.text }
        set { textField?.text = newValue }
    }

    deinit {
        keyboardManager = nil
    }

    public convenience init(textField: UITextField, presentingView: UIView, tableViewCellProvider: @escaping DataSource<Section>.TableViewCellProvider) {
        self.init()
        self.textField = textField
        self.presentingView = presentingView
        self.tableViewCellProvider = tableViewCellProvider
        
        self.textField.addTarget(self, action: #selector(textFieldDidBegan), for: .editingDidBegin)
        self.textField.addTarget(self, action: #selector(textFieldEditingChanged), for: .editingChanged)
        self.textField.addTarget(self, action: #selector(textFieldDidEnd), for: .editingDidEnd)

        self.presentingView.addSubview(self)

        let textFieldFrame = self.presentingView.convert(self.textField.frame, from: self.textField.superview)
        topAnchor.constraint(equalTo: self.presentingView.topAnchor, constant: textFieldFrame.maxY + 8).isActive = true
        leftAnchor.constraint(equalTo: self.presentingView.safeAreaLayoutGuide.leftAnchor, constant: 8).isActive = true
        rightAnchor.constraint(equalTo: self.presentingView.safeAreaLayoutGuide.rightAnchor, constant: -8).isActive = true

        commonInit()
    }

    private func commonInit() {
        translatesAutoresizingMaskIntoConstraints = false
        clipsToBounds = true
        isHidden = true

        tableView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(tableView)
        tableView.anchorToSuperview()
        tableView.dataSource = dataSource
        
        layer.cornerRadius = 10
        layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        layer.shadowOffset = CGSize(width: 0, height: 1)
        layer.shadowOpacity = 1.0
        layer.shadowRadius = 2.0
        layer.masksToBounds = false

        keyboardManager?.keyboardDidShowHandler = keyboardDidShow
        layoutIfNeeded()
    }

    private func keyboardDidShow() {
        guard
            let endFrame = keyboardManager?.keyboardInfo?.frameEnd,
            let textField = self.textField,
            let presentingView = self.presentingView
            else { return }

        var frame = presentingView.frame
        frame.size.height -= endFrame.height
        frame.size.height -= (textField.frame.maxY + 64)

        heightAnchor.constraint(equalToConstant: frame.height).isActive = true
        layoutIfNeeded()
    }

    @objc public func textFieldEditingChanged(_ textField: UITextField) {
        guard
            let text = textField.text
            else { return }

        self.textDidChange?(text)
        if text.isEmpty {
            completions = []
        }

        isHidden = text.isEmpty
    }

    @objc public func textFieldDidBegan(_ textField: UITextField) {
        guard
            let text = textField.text
            else { return }
        isHidden = text.isEmpty
    }

    @objc public func textFieldDidEnd(_ textField: UITextField) {
        isHidden = true
    }
    
    @objc public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        textField?.removeTarget(self, action: #selector(textFieldEditingChanged), for: .editingChanged)
        tableView.deselectRow(at: indexPath, animated: true)
        completionSelected?(completions[indexPath.row])
        isHidden = true
        textField?.addTarget(self, action: #selector(textFieldEditingChanged), for: .editingChanged)
    }
}

extension AutoCompleteView {
    public func register<T: Identifiable>(nib cls: T.Type, bundle: Bundle? = nil) {
        tableView.register(nib: cls, bundle: bundle)
    }

    public func register<T: Identifiable>(`class` cls: T.Type) {
        tableView.register(class: cls)
    }
}
