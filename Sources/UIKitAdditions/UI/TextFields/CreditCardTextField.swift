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
        let matched = CreditCardFormatter.all.compactMap { $0.hasPrefix(value) }.sorted { $0.1 > $1.1 }.first
        if let matched = matched, matched.1 > 0 {
            iconImage = matched.0.image
            value = matched.0.formatString(value)
        } else {
            iconImage = CreditCardFormatter.unknown.image
        }
    }
}
