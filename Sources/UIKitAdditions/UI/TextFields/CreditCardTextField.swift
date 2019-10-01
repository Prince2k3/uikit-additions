import UIKit

class CreditCardTextField: TextField {
    public override func setup() {
        super.setup()
        iconImage = CreditCardFormatter.unknown.image
        iconPosition = .right
    }

    public override func updateIcon() {
        super.updateIcon()

        if iconPosition == .left {
            leftViewMode = iconImage == nil ? .never : .always
        } else {
            rightViewMode = iconImage == nil ? .never : .always
        }
    }

    public override func checkText(_ value: inout String, animated: Bool) {
        super.checkText(&value, animated: animated)
        formatCreditCard(&value)
    }

    private func formatCreditCard(_ value: inout String) {
        let matchedCCs = CreditCardFormatter.all.filter { $0.hasPrefix(value) }
        if matchedCCs.count > 1 {
            iconImage = CreditCardFormatter.unknown.image
        } else {
            let cc = matchedCCs.first
            iconImage = cc?.image ?? CreditCardFormatter.unknown.image
            value = cc?.formatString(value) ?? value
        }
    }
}
