import UIKit

extension UIStoryboard {
    public static func makeViewController<T: Identifiable>(fromStoryboard name: String = "Main") -> T? {
        let storyboard: UIStoryboard = UIStoryboard(name: name, bundle: nil)
        return storyboard.instantiateViewController(withIdentifier: T.identifier) as? T

    }

    public static func makeInitialViewController<T: Identifiable>(fromStoryboard name: String = "Main") -> T? {
        let storyboard: UIStoryboard = UIStoryboard(name: name, bundle: nil)
        return storyboard.instantiateInitialViewController() as? T
    }
}
