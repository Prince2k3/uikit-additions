import UIKit

extension UIScrollView {
    public var currentPage: Int {
        guard self.isPagingEnabled else { return Int.max }

        var page = 0
        if self.contentSize.width > 0 {
            page = Int(self.contentOffset.x / self.bounds.width)
        } else {
            page = Int(self.contentOffset.y / self.bounds.height)
        }

        return page
    }

    public func currentPage(for size: CGFloat) -> Int {
        var page = 0
        if self.contentSize.width > 0 {
            page = Int((self.contentOffset.x + (self.bounds.width / 2)) / size)
        } else {
            page = Int((self.contentOffset.y + (self.bounds.height / 2)) / size)
        }

        return page
    }
}
