import UIKit

public class KeyboardManager {
    private(set) var isVisible: Bool = false
    private(set) var isPresenting: Bool = false
    private(set) var isDismissing: Bool = false
    
    private var keyboardInfos: [AnyHashable: Any]?
    
    public var keyboardWillShowHandler: (() -> Void)?
    public var keyboardDidShowHandler: (() -> Void)?
    public var keyboardWillHideHandler: (() -> Void)?
    public var keyboardDidHideHandler: (() -> Void)?
    public var beginFrame: CGRect? {
        guard let frame = (self.keyboardInfos?[UIResponder.keyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue,
            self.isVisible else { return nil }
        return frame
    }
    
    public var endFrame: CGRect? {
        guard let frame = (self.keyboardInfos?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue,
            self.isVisible else { return nil }
        return frame
    }
    
    public var animationDuration: TimeInterval? {
        guard let duration = self.keyboardInfos?[UIResponder.keyboardAnimationDurationUserInfoKey] as? TimeInterval,
            duration > 0.0 else { return nil }
        return duration
    }
    
    public var animationCurve: UIView.AnimationCurve? {
        guard let animationCurveRawValue = self.keyboardInfos?[UIResponder.keyboardAnimationCurveUserInfoKey] as? Int else {
            return nil
        }
        
        return UIView.AnimationCurve(rawValue: animationCurveRawValue)
    }
    
    public var animationOptions: UIView.AnimationOptions? {
        guard let animationCurve = animationCurve else { return nil }
        return UIView.AnimationOptions(rawValue: UInt(animationCurve.rawValue << 16))
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    public init() {
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardDidShow), name: UIResponder.keyboardDidShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardDidHide), name: UIResponder.keyboardDidHideNotification, object: nil)
    }
    
    @objc private func keyboardWillShow(_ notification: Notification) {
        self.keyboardInfos = notification.userInfo
        self.isVisible = true
        self.isPresenting = true
        
        DispatchQueue.main.async {
            self.keyboardWillShowHandler?()
        }
    }
    
    @objc private func keyboardDidShow(_ notification: Notification) {
        self.keyboardInfos = notification.userInfo
        self.isPresenting = false
        self.keyboardDidShowHandler?()
    }
    
    @objc private func keyboardWillHide(_ notification: Notification) {
        self.keyboardInfos = notification.userInfo
        self.isDismissing = true
        self.keyboardWillHideHandler?()
    }
    
    @objc private func keyboardDidHide(_ notification: Notification) {
        self.keyboardInfos = notification.userInfo
        self.isVisible = false
        self.isDismissing = false
        self.keyboardDidHideHandler?()
    }
}
