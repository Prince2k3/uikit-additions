import UIKit

extension UINavigationController {
    @discardableResult
    func popToViewController(type: UIViewController.Type, animated: Bool) -> [UIViewController]? {
        guard
            let foundViewController = self.viewControllers.filter({ $0.identifier == type.identifier }).first
            else { return nil }
        return popToViewController(foundViewController, animated: true)
    }
}

extension UINavigationController {
    open override var preferredInterfaceOrientationForPresentation: UIInterfaceOrientation {
        return self.topViewController?.preferredInterfaceOrientationForPresentation ?? super.preferredInterfaceOrientationForPresentation
    }

    open override var transitioningDelegate: UIViewControllerTransitioningDelegate? {
        get {
            return self.topViewController?.transitioningDelegate ?? super.transitioningDelegate
        }

        set {

            if let topViewController = self.topViewController {
                topViewController.transitioningDelegate = newValue
            } else {
               super.transitioningDelegate = newValue
            }
        }
    }

    open override var preferredStatusBarStyle: UIStatusBarStyle {
        return self.topViewController?.preferredStatusBarStyle ?? super.preferredStatusBarStyle
    }

    open override var prefersStatusBarHidden: Bool {
        return self.topViewController?.prefersStatusBarHidden ?? super.prefersStatusBarHidden
    }

    open override var modalPresentationStyle: UIModalPresentationStyle {
        get {
            return self.topViewController?.modalPresentationStyle ?? super.modalPresentationStyle
        }

        set {
            if let topViewController = self.topViewController {
                topViewController.modalPresentationStyle = newValue
            } else {
               super.modalPresentationStyle = newValue
            }
        }
    }

    open override var modalTransitionStyle: UIModalTransitionStyle {
        get {
            return self.topViewController?.modalTransitionStyle ?? super.modalTransitionStyle
        }

        set {
            if let topViewController = self.topViewController {
                topViewController.modalTransitionStyle = newValue
            } else {
                super.modalTransitionStyle = newValue
            }
        }
    }

    open override var shouldAutorotate: Bool {
        return self.topViewController?.shouldAutorotate ?? super.shouldAutorotate
    }
}
