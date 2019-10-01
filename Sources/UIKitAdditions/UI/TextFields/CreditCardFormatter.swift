import UIKit

public enum CreditCardFormatter: String, Codable {
    case visa, masterCard, maestro, discover, amex, dinersClub, jcb, unknown

    public static var all: [CreditCardFormatter] = [.visa, .masterCard, .maestro, .discover, .amex, .dinersClub, .jcb]

    public var formats: [(Int, String)] {   //[length, format]
        switch self {
        case .visa, .discover, .masterCard, .jcb:
            return [(16, "XXXX XXXX XXXX XXXX")]
        case .maestro:
            return [(16, "XXXX XXXX XXXX XXXX"), (17, "XXXX XXXX XXXX XXXX X"), (18, "XXXX XXXX XXXX XXXX XX"), (19, "XXXX XXXX XXXX XXXX XXX")]
        case .amex:
            return [(15, "XXXX XXXXXX XXXXX")]
        case .dinersClub:
            return [(14, "XXXX XXXXXX XXXX"), (16, "XXXX XXXX XXXX XXXX")]
        case .unknown:
            return []
        }
    }

    public var prefixes: [[Int]] {
        switch self {
        case .visa:
            return [[4]]
        case .masterCard:
            return [[50, 55], [222100, 272099]]
        case .maestro:
            return [[5018], [5020], [5038], [5612], [5893], [6304], [6759], [6761], [6762], [6763], [0604], [6390]]
        case .discover:
            return [[6011], [622126, 622925], [644, 649], [65]]
        case .amex:
            return [[34], [37]]
        case .dinersClub:
            return [[300, 305], [309], [36], [38, 39], [54], [55]]
        case .jcb:
            return [[3528, 3589]]
        case .unknown:
            return []
        }
    }

    public var image: UIImage? {
        switch self {
        case .visa:
            return CreditCardIcons.imageOfVisa
        case .masterCard:
            return CreditCardIcons.imageOfMastercard
        case .maestro:
            return CreditCardIcons.imageOfMaestro
        case .discover:
            return CreditCardIcons.imageOfDiscover
        case .amex:
            return CreditCardIcons.imageOfAmex
        case .dinersClub:
            return CreditCardIcons.imageOfDiners
        case .jcb:
            return CreditCardIcons.imageOfJcb
        case .unknown:
            return CreditCardIcons.imageOfUnknown
        }
    }
}

extension CreditCardFormatter {
    func hasPrefix(_ value: String) -> Bool {
        var found = false
        for prefix in self.prefixes {
            if prefix.count == 1, let first = prefix.first, value.hasPrefix(first) {
                return true
            } else if let first = prefix.first, let last = prefix.last,
                      let number = Int(value.prefix(first.digitsCount)),
                      (first...last).contains(number) {
                    return true
            }
        }

        return false
    }

    func formatString(_ value: String) -> String {
        var formattedValue = value.replace(" ", with: "")
        guard let format = self.formats.filter({ $0.0 == value.count }).first ?? self.formats.first else { return value }
        formattedValue = formattedValue.format(format.1)
        return formattedValue
    }
}

private extension String {
    func hasPrefix(_ prefix: Int) -> Bool {
        let str = "\(prefix)"
        return hasPrefix(str)
    }
}

private extension Int {
    var digitsCount: Int {
        return String(self).count
    }
}
