import UIKit

class BusyButton: Button {
    private lazy var activityIndicatorView: UIActivityIndicatorView = {
        let view = UIActivityIndicatorView(style: self.activityIndicatorStyle)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.startAnimating()
        return view
    }()

    var activityIndicatorStyle: UIActivityIndicatorView.Style = .gray {
        didSet {
            self.activityIndicatorView.style = self.activityIndicatorStyle
        }
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        commonInit()
    }

    func commonInit() {
        setTitleColor(.lightGray, for: .disabled)
        setBackgroundColor(.lightGray, for: .disabled)

        addSubview(self.activityIndicatorView)

        if let titleLabel = self.titleLabel {
            self.activityIndicatorView.leftAnchor.constraint(equalTo: titleLabel.rightAnchor, constant: 8).isActive = true
        } else {
            self.activityIndicatorView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        }

        self.activityIndicatorView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        self.activityIndicatorView.stopAnimating()
    }

    var isBusy: Bool = false {
        didSet {
            self.isEnabled = !self.isBusy
            self.isBusy ?
            self.activityIndicatorView.startAnimating() :
            self.activityIndicatorView.stopAnimating()
        }
    }
}
