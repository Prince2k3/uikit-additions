import UIKit

class Toast {
    enum Position {
        case top, bottom
    }

    static let `default`: Toast = Toast()

    private lazy var toastView: ToastView = {
        let view = ToastView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    private var timer: Timer?
    private var positionConstraint: NSLayoutConstraint?

    var positionOffset: CGFloat = 84
    var position: Position = .bottom
    var percentageWidth: CGFloat = 0.7
    var cornerRadius: CGFloat = 4
    var dismissDuration: TimeInterval = 2
    var backgroundColor: UIColor = .red
    var duration: TimeInterval = 0.3
    var isShadowEnabled: Bool = true
    var isVisible: Bool = false

    private init() {}

    func show(message: String) {

        DispatchQueue.main.async {
            if self.isVisible {
                self.timer?.invalidate()
                self.toastView.removeFromSuperview()
                self.isVisible = false
            }

            self.toastView.message = message
            self.addToastToWindow()
        }
    }

    func addToastToWindow() {
        self.toastView.alpha = 1
        self.toastView.cornerRadius = self.cornerRadius
        self.toastView.backgroundColor = self.backgroundColor
        self.toastView.transform = .identity
        if self.isShadowEnabled {
            self.toastView.shadowColor = .black
            self.toastView.shadowOffset = .zero
            self.toastView.shadowRadius = 4
            self.toastView.shadowOpacity = 0.15
        }

        guard let window = UIApplication.shared.keyWindow else { return }

        window.addSubview(self.toastView)

        self.toastView.widthAnchor.constraint(equalToConstant: window.bounds.width * self.percentageWidth).isActive = true
        self.toastView.centerXAnchor.constraint(equalTo: window.centerXAnchor).isActive = true
        if self.position == .bottom {
            self.positionConstraint = self.toastView.bottomAnchor.constraint(equalTo: window.bottomAnchor, constant: -self.positionOffset)
        } else {
            self.positionConstraint = self.toastView.topAnchor.constraint(equalTo: window.topAnchor, constant: self.positionOffset)
        }
        self.positionConstraint?.isActive = true

        animateIn()
    }

    private func animateIn() {
        self.toastView.alpha = 0
        self.toastView.transform = CGAffineTransform(scaleX: 0.2, y: 0.2)
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
            self.label.textColor = self.textColor
        }
    }

    var message: String = "" {
        didSet {
            self.label.textColor = self.textColor
            self.label.text = message
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
        addSubview(self.label)
        self.label.anchorToSuperview(edgeInset: UIEdgeInsets(top: 8, left: 8, bottom: -8, right: -8))
    }
}
