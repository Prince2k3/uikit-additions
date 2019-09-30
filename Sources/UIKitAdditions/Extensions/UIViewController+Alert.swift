import UIKit

extension UIViewController {
    @discardableResult
    public func presentAlert(title: String, message: String, buttonTitles: [String] = ["OK".localized()], completion: ((UIAlertAction) -> Void)? = nil) -> UIAlertController {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        buttonTitles.forEach {
            var style: UIAlertAction.Style = .default
            var title = $0
            if title.hasPrefix("!") {
                style = .cancel
                title = String(title.dropFirst())
            }

            let alertAction = UIAlertAction(title: title, style: style) { action in
                completion?(action)
            }
            alertController.addAction(alertAction)
        }

        present(alertController, animated: true, completion: nil)
        return alertController
    }
}

extension UIApplication {
    @discardableResult
    public static func presentAlert(title: String, message: String, buttonTitles: [String] = ["OK".localized()], completion: ((UIAlertAction) -> Void)? = nil) -> UIAlertController? {
        return self.shared.keyWindow?.rootViewController?.presentAlert(title: title, message: message, buttonTitles: buttonTitles, completion: completion)
    }
}
