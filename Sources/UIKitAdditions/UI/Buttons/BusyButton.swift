import UIKit

public class BusyButton: Button {
    public private(set) lazy var activityIndicatorView: UIActivityIndicatorView = {
        let view = UIActivityIndicatorView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.startAnimating()
        return view
    }()

    public var hideTitleLabelWhenBusy: Bool = false
    public var isBusy: Bool = false {
        didSet {
            isBusy ? showLoader() : hideLoader()
        }
    }

    private func showLoader() {
        guard
            !subviews.contains(activityIndicatorView)
            else { return }
        imageView?.isHidden = true
        titleLabel?.isHidden = hideTitleLabelWhenBusy
        
        activityIndicatorView.startAnimating()
        addSubview(activityIndicatorView)
        
        activityIndicatorView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        if let titleLabel = self.titleLabel, !titleLabel.isHidden {
            activityIndicatorView.leftAnchor.constraint(equalTo: titleLabel.rightAnchor, constant: 8).isActive = true
        } else {
            activityIndicatorView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        }
        
        isEnabled = false
    }
    
    private func hideLoader() {
        guard
            subviews.contains(activityIndicatorView)
            else { return }
        activityIndicatorView.stopAnimating()
        activityIndicatorView.removeFromSuperview()
        titleLabel?.isHidden = false
        imageView?.isHidden = false
        isEnabled = true
    }
}
