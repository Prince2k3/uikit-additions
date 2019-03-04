import UIKit

public class KeyboardManager {
    public struct KeyboardInfo {
        public var frameStart: CGRect
        public var frameEnd: CGRect
        public var animationDuration: TimeInterval
        public var animationCurve: UIView.AnimationCurve?
        public var animationOptions: UIView.AnimationOptions? {
            guard
                let animationCurve = self.animationCurve
                else { return nil }
            return UIView.AnimationOptions(rawValue: UInt(animationCurve.rawValue << 16))
        }
        
        init?(_ notification: Notification) {
            guard
                let info = notification.userInfo
                else { return nil }
            self.frameStart = (info[UIWindow.keyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue ?? .zero
            self.frameEnd = (info[UIWindow.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue  ?? .zero
            self.animationCurve = UIView.AnimationCurve(rawValue: info[UIWindow.keyboardAnimationCurveUserInfoKey] as? Int ?? 0)
            self.animationDuration = info[UIWindow.keyboardAnimationDurationUserInfoKey] as? Double ?? 0
        }
    }
    
    private(set) var isVisible: Bool = false
    private(set) var isPresenting: Bool = false
    private(set) var isDismissing: Bool = false
    
    public var keyboardWillShowHandler: (() -> Void)?
    public var keyboardDidShowHandler: (() -> Void)?
    public var keyboardWillHideHandler: (() -> Void)?
    public var keyboardDidHideHandler: (() -> Void)?
    public var keyboardInfo: KeyboardInfo?
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    public init() {
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIWindow.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardDidShow), name: UIWindow.keyboardDidShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIWindow.keyboardWillHideNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardDidHide), name: UIWindow.keyboardDidHideNotification, object: nil)
    }
    
    @objc private func keyboardWillShow(_ notification: Notification) {
        self.keyboardInfo = KeyboardInfo(notification)
        self.isVisible = true
        self.isPresenting = true
        
        DispatchQueue.main.async {
            self.keyboardWillShowHandler?()
        }
    }
    
    @objc private func keyboardDidShow(_ notification: Notification) {
        self.keyboardInfo = KeyboardInfo(notification)
        self.isPresenting = false
        DispatchQueue.main.async {
            self.keyboardDidShowHandler?()
        }
    }
    
    @objc private func keyboardWillHide(_ notification: Notification) {
        self.keyboardInfo = KeyboardInfo(notification)
        self.isDismissing = true
        DispatchQueue.main.async {
            self.keyboardWillHideHandler?()
        }
    }
    
    @objc private func keyboardDidHide(_ notification: Notification) {
        self.keyboardInfo = KeyboardInfo(notification)
        self.isVisible = false
        self.isDismissing = false
        DispatchQueue.main.async {
            self.keyboardDidHideHandler?()
        }
    }
}
