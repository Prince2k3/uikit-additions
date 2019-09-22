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
        return self.viewControllers.first?.preferredInterfaceOrientationForPresentation ?? super.preferredInterfaceOrientationForPresentation
    }

    open override var transitioningDelegate: UIViewControllerTransitioningDelegate? {
        get {
            return self.viewControllers.first?.transitioningDelegate ?? super.transitioningDelegate
        }

        set {

            if let rootViewController = self.viewControllers.first {
                rootViewController.transitioningDelegate = newValue
            } else {
               super.transitioningDelegate = newValue
            }
        }
    }

    open override var preferredStatusBarStyle: UIStatusBarStyle {
        return self.viewControllers.first?.preferredStatusBarStyle ?? super.preferredStatusBarStyle
    }

    open override var prefersStatusBarHidden: Bool {
        return self.viewControllers.first?.prefersStatusBarHidden ?? super.prefersStatusBarHidden
    }

    open override var modalPresentationStyle: UIModalPresentationStyle {
        get {
            return self.viewControllers.first?.modalPresentationStyle ?? super.modalPresentationStyle
        }

        set {
            if let rootViewController = self.viewControllers.first {
                rootViewController.modalPresentationStyle = newValue
            } else {
               super.modalPresentationStyle = newValue
            }
        }
    }

    open override var modalTransitionStyle: UIModalTransitionStyle {
        get {
            return self.viewControllers.first?.modalTransitionStyle ?? super.modalTransitionStyle
        }

        set {
            if let rootViewController = self.viewControllers.first {
                rootViewController.modalTransitionStyle = newValue
            } else {
                super.modalTransitionStyle = newValue
            }
        }
    }

    open override var shouldAutorotate: Bool {
        return self.topViewController?.shouldAutorotate ?? super.shouldAutorotate
    }
}
