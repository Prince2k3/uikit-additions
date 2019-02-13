import UIKit

extension UITableView {
    public func register<T: Identifiable>(nib cls: T.Type, bundle: Bundle? = nil) {
        register(UINib(nibName: cls.identifier, bundle: bundle), forCellReuseIdentifier: cls.identifier)
    }

    public func register<T: Identifiable>(`class` cls: T.Type) {
        register(cls.self as? AnyClass, forCellReuseIdentifier: cls.identifier)
    }

    public func registerHeaderFooter<T: Identifiable>(nib cls: T.Type, bundle: Bundle? = nil) {
        register(UINib(nibName: cls.identifier, bundle: bundle), forHeaderFooterViewReuseIdentifier: cls.identifier)
    }

    public func registerHeaderFooter<T: Identifiable>(`class` cls: T.Type) {
        register(cls.self as? AnyClass, forHeaderFooterViewReuseIdentifier: cls.identifier)
    }
}
