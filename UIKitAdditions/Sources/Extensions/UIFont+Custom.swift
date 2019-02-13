import UIKit

public struct CustomFont: RawRepresentable, Equatable, Hashable, Comparable {
    public var rawValue: String

    public init(_ rawValue: String) {
        self.rawValue = rawValue
    }

    public init(rawValue: String) {
        self.rawValue = rawValue
    }
}

extension CustomFont {
    public static func == (lhs: CustomFont, rhs: CustomFont) -> Bool {
        return lhs.rawValue == rhs.rawValue
    }

    public static func < (lhs: CustomFont, rhs: CustomFont) -> Bool {
        return lhs.rawValue < rhs.rawValue
    }
}

extension UIFont {
    public convenience init?(_ customFont: CustomFont, size: Double) {
        self.init(name: customFont.rawValue, size: CGFloat(size))
    }
}
