import UIKit

extension UITableView {
    func register<T: Identifiable>(nib cls: T.Type, bundle: Bundle? = nil) {
        register(UINib(nibName: cls.identifier, bundle: bundle), forCellReuseIdentifier: cls.identifier)
    }

    func register<T: Identifiable>(`class` cls: T.Type) {
        register(cls.self as? AnyClass, forCellReuseIdentifier: cls.identifier)
    }

    func registerHeaderFooter<T: Identifiable>(nib cls: T.Type, bundle: Bundle? = nil) {
        register(UINib(nibName: cls.identifier, bundle: bundle), forHeaderFooterViewReuseIdentifier: cls.identifier)
    }

    func registerHeaderFooter<T: Identifiable>(`class` cls: T.Type) {
        register(cls.self as? AnyClass, forHeaderFooterViewReuseIdentifier: cls.identifier)
    }
}
