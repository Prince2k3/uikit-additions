import UIKit

public struct Segue: Equatable, Comparable {
    public var identifier: String
    public var destination: UIViewController.Type?

    public init(segueIdentifier: String, destination: UIViewController.Type? = nil) {
        self.identifier = segueIdentifier
        self.destination = destination
    }

    public init(_ segueIdentifier: String, destination: UIViewController.Type? = nil) {
        self.identifier = segueIdentifier
        self.destination = destination
    }
}

extension Segue {
    public static func == (lhs: Segue, rhs: Segue) -> Bool {
        return lhs.identifier == rhs.identifier
    }

    public static func < (lhs: Segue, rhs: Segue) -> Bool {
        return lhs.identifier < rhs.identifier
    }
}

extension UIViewController {
    public func performSegue(_ segue: Segue, sender: Any?) {
        performSegue(withIdentifier: segue.identifier, sender: sender)
    }
}
