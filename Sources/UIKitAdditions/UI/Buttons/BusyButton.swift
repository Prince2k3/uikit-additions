import UIKit

public class BusyButton: Button {
    private lazy var activityIndicatorView: UIActivityIndicatorView = {
        let view = UIActivityIndicatorView(style:  activityIndicatorStyle)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.startAnimating()
        return view
    }()

    public var isBusy: Bool = false {
        didSet {
            if isBusy {
                showLoader()
            } else {
                hideLoader()
            }
        }
    }
    
    public var activityIndicatorStyle: UIActivityIndicatorView.Style = .gray {
        didSet {
            activityIndicatorView.style = activityIndicatorStyle
        }
    }

    private func showLoader() {
        guard
            !subviews.contains(activityIndicatorView)
            else { return }
        
        activityIndicatorView.radius = min(0.7 * frame.height / 2, activityIndicatorView.radius)
        self.isUserInteractionEnabled = false
        UIView.transition(with: self, duration: 0.2, options: .curveEaseOut, animations: {
            self.titleLabel?.alpha = 0.0
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
        isUserInteractionEnabled = true
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
        
        if let titleLabel = self.titleLabel {
            activityIndicatorView.leftAnchor.constraint(equalTo: titleLabel.rightAnchor, constant: 8).isActive = true
        } else {
            activityIndicatorView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        }
    }
}

extension UIActivityIndicatorView {
    public var radius: CGFloat {
        get { return frame.width / 2 }
        set {
            frame.size = CGSize(width: 2 * newValue, height: 2 * newValue)
            setNeedsDisplay()
        }
    }
}
