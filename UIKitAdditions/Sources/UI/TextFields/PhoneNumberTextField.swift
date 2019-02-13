import UIKit
import PhoneNumberKit

class PhoneNumberTextField: TextField {
    private let phoneNumberKit = PhoneNumberKit()
    
    private(set) var partialFormatter: PartialFormatter?
    
    var isPartialFormatterEnabled = true
    var defaultRegion = PhoneNumberKit.defaultRegionCode() {
        didSet {
            self.partialFormatter?.defaultRegion = defaultRegion
        }
    }
    
    var withPrefix: Bool = true {
        didSet {
            self.partialFormatter = PartialFormatter(phoneNumberKit: self.phoneNumberKit, defaultRegion: self.defaultRegion, withPrefix: self.withPrefix)
            
            if self.withPrefix == false {
                self.keyboardType = UIKeyboardType.numberPad
            } else {
                self.keyboardType = UIKeyboardType.phonePad
            }
        }
    }
    
    var currentRegion: String {
        return self.partialFormatter?.currentRegion ?? ""
    }
    
    var nationalNumber: String {
        let rawNumber = self.text ?? ""
        return self.partialFormatter?.nationalNumber(from: rawNumber) ?? ""
    }
    
    override func setup() {
        self.partialFormatter = PartialFormatter(phoneNumberKit: self.phoneNumberKit, defaultRegion: self.defaultRegion, withPrefix: self.withPrefix)
        self.autocorrectionType = .no
        self.keyboardType = UIKeyboardType.phonePad

        super.setup()
    }
    
    override func validate() -> Bool {
        do {
            _ = try phoneNumberKit.parse(self.text ?? "", withRegion: self.currentRegion)
            self.hasError = false
            return true
        } catch {
            self.hasError = true
            return false
        }
    }
    
    override func checkText(_ value: inout String, animated: Bool) {
        super.checkText(&value, animated: animated)
        formatPhoneNumber(&value)
    }
    
    private func formatPhoneNumber(_ value: inout String) {
        value = self.partialFormatter?.formatPartial(value) ?? value
    }
}
