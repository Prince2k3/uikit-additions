import UIKit

public protocol Identifiable {
    var identifier: String { get }
    static var identifier: String { get }
}

extension Identifiable {
    public var identifier: String {
        return String(describing: self)
    }

    public static var identifier: String {
        return String(describing: self)
    }
}

extension Identifiable where Self: NSObjectProtocol {
    public var identifier: String {
        return String(describing: type(of: self))
    }
}

extension UIViewController: Identifiable {}
extension UITableViewCell: Identifiable {}
extension UICollectionReusableView: Identifiable {}
extension UITableViewHeaderFooterView: Identifiable {}

extension Identifiable where Self: UIViewController {
    static func fromStoryboard(_ name: String = "") -> Self? {
        return name.isEmpty ?
        UIStoryboard.makeViewController(fromStoryboard: Self.identifier) as Self? :
        UIStoryboard.makeViewController(fromStoryboard: name) as Self?
    }
}
