import UIKit

open class Toast {
    public enum Position {
        case top, bottom
    }

    public static let `default`: Toast = Toast()
    public static let error: Toast  = {
        let toast = Toast.default
        toast.backgroundColor = .red
        return toast
    }()
    
    public static let info: Toast = {
       let toast = Toast.default
        toast.backgroundColor = .blue
        return toast
    }()

    private lazy var toastView: ToastView = {
        let view = ToastView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    private var timer: Timer?
    private var positionConstraint: NSLayoutConstraint?
    private var keyboardManager: KeyboardManager? = KeyboardManager()
    
    public var positionOffset: CGFloat = 84
    public var position: Position = .bottom
    public var percentageWidth: CGFloat = 0.7
    public var cornerRadius: CGFloat = 4
    public var dismissDuration: TimeInterval = 2
    public var backgroundColor: UIColor = .red
    public var duration: TimeInterval = 0.3
    public var isShadowEnabled: Bool = true
    public var isVisible: Bool = false
    
    private init() {}
    
    deinit {
        keyboardManager = nil
    }

    open func showMessage(_ message: String) {
        DispatchQueue.main.async {
            if self.isVisible {
                self.timer?.invalidate()
                self.toastView.removeFromSuperview()
                self.isVisible = false
            }

            self.toastView.message = message
            self.addToastToWindow(self.keyboardManager?.keyboardInfo?.frameEnd.height)
        }
    }

    func addToastToWindow(_ keyboardHeight: CGFloat? = nil) {
        toastView.alpha = 1
        toastView.cornerRadius = cornerRadius
        toastView.backgroundColor = backgroundColor
        toastView.transform = .identity
        if isShadowEnabled {
            toastView.shadowColor = .black
            toastView.shadowOffset = .zero
            toastView.shadowRadius = 4
            toastView.shadowOpacity = 0.15
        }

        guard let window = UIApplication.shared.keyWindow else { return }

        window.addSubview(toastView)

        toastView.widthAnchor.constraint(equalToConstant: window.bounds.width * percentageWidth).isActive = true
        toastView.centerXAnchor.constraint(equalTo: window.centerXAnchor).isActive = true
        
        if position == .bottom {
            positionConstraint = toastView.bottomAnchor.constraint(equalTo: window.bottomAnchor, constant: -(positionOffset + (keyboardHeight ?? 0.0)))
        } else {
            positionConstraint = toastView.topAnchor.constraint(equalTo: window.topAnchor, constant: (positionOffset + (keyboardHeight ?? 0.0)))
        }
        
        positionConstraint?.isActive = true

        animateIn()
    }

    private func animateIn() {
        toastView.alpha = 0
        toastView.transform = CGAffineTransform(scaleX: 0.2, y: 0.2)
        
        let animator = UIViewPropertyAnimator(duration: 0.35, dampingRatio: 0.7) {
            self.toastView.alpha = 1
            self.toastView.transform = .identity
        }
        
        animator.addCompletion { position in
            if position == .end {
                self.timer?.invalidate()
                self.timer = Timer.scheduledTimer(withTimeInterval: self.dismissDuration, repeats: false) { _ in
                    self.animateOut()
                }
                self.isVisible = true
            }
        }
        
        animator.startAnimation()
    }

    private func animateOut() {
        let animator = UIViewPropertyAnimator(duration: self.duration / 2, curve: .easeInOut) {
            self.toastView.alpha = 0
            self.toastView.transform = CGAffineTransform(scaleX: 0.2, y: 0.2)
        }
        
        animator.addCompletion { position in
            if position == .end {
                self.isVisible = false
                self.toastView.removeFromSuperview()
            }
        }
        
        animator.startAnimation()
    }
}

private class ToastView: UIView {
    private lazy var label: UILabel = {
        let view = UILabel()
        view.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        view.textAlignment = .center
        view.numberOfLines = 0
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    var textColor: UIColor = .white {
        didSet {
            label.textColor = textColor
        }
    }

    var message: String = "" {
        didSet {
            label.textColor = textColor
            label.text = message
        }
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }

    func commonInit() {
        addSubview(label)
        label.anchorToSuperview(edgeInset: UIEdgeInsets(top: 8, left: 8, bottom: -8, right: -8))
    }
}

/// Extensions

extension UIViewController {
    public func presentInfo(_ message: String, toast: Toast = .info) {
        toast.showMessage(message)
    }
    
    public func presentError(_ error: Error?, toast: Toast = .error) {
        var message = "Something went wrong that requires customer support."
        if let error = error as? String {
            message = error
        } else {
            message = error?.localizedDescription ?? message
        }
        
        toast.showMessage(message)
    }
}

extension UIApplication {
    public static func presentError(_ error: Error?) {
        shared.keyWindow?.rootViewController?.presentError(error)
    }
    
    public static func presentInfo(_ message: String) {
        shared.keyWindow?.rootViewController?.presentInfo(message)
    }
}
