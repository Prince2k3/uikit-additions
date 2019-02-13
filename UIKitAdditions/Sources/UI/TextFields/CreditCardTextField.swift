import UIKit

class CreditCardTextField: TextField {
    override func setup() {
        super.setup()
        self.iconImage = UIImage(named: "unknown")
        self.iconPosition = .right
    }

    override func updateIcon() {
        super.updateIcon()

        if self.iconPosition == .left {
            self.leftViewMode = self.iconImage == nil ? .never : .always
        } else {
            self.rightViewMode = self.iconImage == nil ? .never : .always
        }
    }

    override func checkText(_ value: inout String, animated: Bool) {
        super.checkText(&value, animated: animated)
        formatCreditCard(&value)
    }

    func formatCreditCard(_ value: inout String) {
        let matchedCCs = CreditCardFormatter.all.filter { $0.hasPrefix(value) }
        if matchedCCs.count > 1 {
            self.iconImage = CreditCardFormatter.unknown.image
        } else {
            let cc = matchedCCs.first
            self.iconImage = cc?.image ?? CreditCardFormatter.unknown.image
            value = cc?.formatString(value) ?? value
        }
    }
}
