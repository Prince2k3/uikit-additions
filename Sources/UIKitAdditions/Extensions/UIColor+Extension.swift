import UIKit

extension UIColor {
    public var isDark: Bool {
        guard let rgb = self.cgColor.__unsafeComponents else {
            return false
        }
        return (0.299 * rgb[0] + 0.587 * rgb[1] + 0.114 * rgb[2]) < 0.5
    }

    public var inverse: UIColor {
        guard let rgb = self.cgColor.__unsafeComponents else {
            return UIColor.clear
        }
        return UIColor(red: 1 - rgb[0], green: 1 - rgb[1], blue: 1 - rgb[2], alpha: rgb[3])
    }

    public convenience init(hex: UInt32, alpha: CGFloat = 1.0) {
        let red = CGFloat((hex & 0xFF0000) >> 16) / CGFloat(255.0)
        let green = CGFloat((hex & 0x00FF00) >>  8) / CGFloat(255.0)
        let blue = CGFloat(hex & 0x0000FF) / CGFloat(255.0)
        self.init(red: red, green: green, blue: blue, alpha: alpha)
    }

    public func lighten(by amount: CGFloat = 0.25) -> UIColor {
        return hueColor(withBrightness: 1.0 + amount)
    }

    public func darken(by amount: CGFloat = 0.25) -> UIColor {
        return hueColor(withBrightness: 1.0 - amount)
    }

    private func hueColor(withBrightness amount: CGFloat) -> UIColor {
        var hue: CGFloat = 0
        var saturation: CGFloat = 0
        var brightness: CGFloat = 0
        var alpha: CGFloat = 0

        getHue(&hue, saturation: &saturation, brightness: &brightness, alpha: &alpha)
        return UIColor(hue: hue, saturation: saturation, brightness: brightness * amount, alpha: alpha)
    }
}
