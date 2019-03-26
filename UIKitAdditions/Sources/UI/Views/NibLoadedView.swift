import UIKit

extension UIView {
    @discardableResult
    public func loadNibContents(from nibName: String? = nil) -> UIView? {
        backgroundColor = .clear
        let name = nibName ?? String(describing: type(of: self))

        let nib = UINib(nibName: name, bundle: Bundle(for: type(of: self)))
        if let view = nib.instantiate(withOwner: self, options: nil).first as? UIView {
            addSubview(view)
            self.frame = view.frame

            view.translatesAutoresizingMaskIntoConstraints = false
            view.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
            view.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
            view.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
            view.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
            return view
        }

        return nil
    }
}

open class NibLoadedView: UIView {
    public var contentView: UIView?
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.contentView = loadNibContents()
    }

    public override init(frame: CGRect) {
        super.init(frame: frame)
        self.contentView = loadNibContents()
    }

    public required init(nibName: String) {
        super.init(frame: .zero)
        defer { self.awakeFromNib() }
        self.contentView = loadNibContents(from: nibName)
    }
}

open class NibLoadedControl: UIControl {
    public var contentView: UIView?
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.contentView = loadNibContents()
    }

    public override init(frame: CGRect) {
        super.init(frame: frame)
        self.contentView = loadNibContents()
    }

    public required init(nibName: String) {
        super.init(frame: .zero)
        defer { self.awakeFromNib() }
        self.contentView = loadNibContents(from: nibName)
    }
}
