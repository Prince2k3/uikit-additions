import UIKit

public protocol Identifiable {
    var identifier: String { get }
    static var identifier: String { get }
}

public extension Identifiable {
    public var identifier: String {
        return String(describing: self)
    }

    public static var identifier: String {
        return String(describing: self)
    }
}

public extension Identifiable where Self: NSObjectProtocol {
    public var identifier: String {
        return String(describing: type(of: self))
    }
}

extension UIViewController: Identifiable {}
extension UITableViewCell: Identifiable {}
extension UICollectionViewCell: Identifiable {}
extension UITableViewHeaderFooterView: Identifiable {}
