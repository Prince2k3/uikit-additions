import UIKit
import ObjectiveC

public protocol Performable {
    associatedtype Destination
}

extension UIViewController: Performable {
    public typealias Destination = UIViewController

    private struct AssociatedKeys {
        static var prepareDestination: UInt8 = 0
        static var destinationIdentifier: UInt8 = 1
    }

    private var prepareDestination: ((Destination) -> Void)? {
        get { return objc_getAssociatedObject(self, &AssociatedKeys.prepareDestination) as? ((UIViewController) -> Void) }
        set { objc_setAssociatedObject(self, &AssociatedKeys.prepareDestination, newValue, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC) }
    }

    private var destinationIdentifier: String? {
        get { return objc_getAssociatedObject(self, &AssociatedKeys.destinationIdentifier) as? String }
        set { objc_setAssociatedObject(self, &AssociatedKeys.destinationIdentifier, newValue, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC) }
    }

    public func performSegue(_ segue: Segue, prepareDestination: @escaping (Destination) -> Void = { _ in }) {
        self.destinationIdentifier = segue.destination?.identifier
        self.prepareDestination = prepareDestination
        performSegue(withIdentifier: segue.identifier, sender: nil)
    }
}

extension UIViewController {
    public static func prepareSwizzleMethods() {
        guard self === UIViewController.self else { return }

        let swizzlingClosure: () = {
            UIViewController().swizzlePrepareForSegue()
        }()
        swizzlingClosure
    }

    private func swizzlePrepareForSegue() {
        let originalSelector = #selector(UIViewController.prepare(for:sender:))
        let swizzledSelector = #selector(UIViewController.sc_prepare(for:sender:))

        let originalMethod = class_getInstanceMethod(UIViewController.self, originalSelector)!
        let swizzledMethod = class_getInstanceMethod(UIViewController.self, swizzledSelector)!

        let flag = class_addMethod(UIViewController.self, originalSelector, method_getImplementation(swizzledMethod), method_getTypeEncoding(swizzledMethod))
        if flag {
            class_replaceMethod(UIViewController.self, swizzledSelector, method_getImplementation(originalMethod), method_getTypeEncoding(originalMethod))
        } else {
            method_exchangeImplementations(originalMethod, swizzledMethod)
        }
    }

    @objc func sc_prepare(for segue: UIStoryboardSegue, sender: Any?) {
        sc_prepare(for: segue, sender: sender)
        defer { self.prepareDestination = nil }
        self.prepareDestination?(find(destinationIdentifier, from: segue.destination))
    }

    private func find(_ identifier: String?, from root: UIViewController) -> UIViewController {
        guard let identifier = identifier else { return root }

        for childDestination in root.children {
            if childDestination.identifier == identifier {
                return childDestination
            } else {
                return find(identifier, from: childDestination)
            }
        }

        return root
    }
}
