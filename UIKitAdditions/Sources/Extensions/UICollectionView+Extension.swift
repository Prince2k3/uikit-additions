import UIKit

extension UICollectionView {
    public func register<T: Identifiable>(nib cls: T.Type, bundle: Bundle? = nil) {
        register(UINib(nibName: cls.identifier, bundle: bundle), forCellWithReuseIdentifier: cls.identifier)
    }

    public func register<T: Identifiable>(`class` cls: T.Type) {
        register(cls.self as? AnyClass, forCellWithReuseIdentifier: cls.identifier)
    }
    
    public func registe<T: Identifiable>(nib cls: T.Type, bundle: Bundle? = nil, forSupplementaryViewOfKind kind: String) {
        register(UINib(nibName: cls.identifier, bundle: bundle), forSupplementaryViewOfKind: kind, withReuseIdentifier: cls.identifier)
    }
    
    public func register<T: Identifiable>(`class` cls: T.Type, forSupplementaryViewOfKind kind: String) {
        register(cls.self as? AnyClass, forSupplementaryViewOfKind: kind, withReuseIdentifier: cls.identifier)
    }
}

extension UICollectionView {
    public func scrollToSection(_ section: Int, animated: Bool = true) {
        let indexPath = IndexPath(item: 1, section: section)
        if let attributes = layoutAttributesForSupplementaryElement(ofKind: UICollectionView.elementKindSectionHeader, at: indexPath) {

            let offset = CGPoint(x: 0, y: attributes.frame.origin.y - self.contentInset.top)
            setContentOffset(offset, animated: animated)
        }
    }
}
