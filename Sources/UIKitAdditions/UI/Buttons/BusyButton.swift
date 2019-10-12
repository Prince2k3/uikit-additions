import UIKit

public class BusyButton: Button {
    private(set) lazy var activityIndicatorView: UIActivityIndicatorView = {
        let view = UIActivityIndicatorView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.startAnimating()
        return view
    }()

    public var hideTitleLabelWhenBusy: Bool = false
    public var isBusy: Bool = false {
        didSet {
            if isBusy {
                showLoader()
            } else {
                hideLoader()
            }
        }
    }

    private func showLoader() {
        guard
            !subviews.contains(activityIndicatorView)
            else { return }
        
        isEnabled = false
        UIView.transition(with: self, duration: 0.2, options: .curveEaseOut, animations: {
            self.titleLabel?.alpha = self.hideTitleLabelWhenBusy ? 0.0 : 1.0
            self.imageView?.alpha = 0.0
        }) { [weak self] _ in
            guard let self = self else { return }
            self.addSubview(self.activityIndicatorView)
            if self.isBusy {
                self.activityIndicatorView.startAnimating()
            } else {
                self.hideLoader()
            }
        }
    }
    
    private func hideLoader() {
        guard
            subviews.contains(activityIndicatorView)
            else { return }
        isEnabled = true
        activityIndicatorView.stopAnimating()
        activityIndicatorView.removeFromSuperview()
        UIView.transition(with: self, duration: 0.2, options: .curveEaseIn, animations: {
            self.titleLabel?.alpha = 1.0
            self.imageView?.alpha = 1.0
        }) { _ in }
    }
    
    open override func layoutSubviews() {
        super.layoutSubviews()
        
        guard activityIndicatorView.superview != nil else { return }
        
        if let titleLabel = self.titleLabel, titleLabel.alpha == 1.0 {
            activityIndicatorView.leftAnchor.constraint(equalTo: titleLabel.rightAnchor, constant: 8).isActive = true
        } else {
            activityIndicatorView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        }
        
        activityIndicatorView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
    }
}
