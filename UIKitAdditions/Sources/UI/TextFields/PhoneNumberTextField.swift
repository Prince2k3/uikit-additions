import UIKit
import PhoneNumberKit

public class PhoneNumberTextField: TextField {
    private let phoneNumberKit = PhoneNumberKit()
    
    private(set) var partialFormatter: PartialFormatter?
    
    public var isPartialFormatterEnabled = true
    public var defaultRegion = PhoneNumberKit.defaultRegionCode() {
        didSet {
            self.partialFormatter?.defaultRegion = defaultRegion
        }
    }
    
    public var withPrefix: Bool = true {
        didSet {
            self.partialFormatter = PartialFormatter(phoneNumberKit: self.phoneNumberKit, defaultRegion: self.defaultRegion, withPrefix: self.withPrefix)
            
            if self.withPrefix == false {
                self.keyboardType = UIKeyboardType.numberPad
            } else {
                self.keyboardType = UIKeyboardType.phonePad
            }
        }
    }
    
    public var currentRegion: String {
        return self.partialFormatter?.currentRegion ?? ""
    }
    
    public var nationalNumber: String {
        let rawNumber = self.text ?? ""
        return self.partialFormatter?.nationalNumber(from: rawNumber) ?? ""
    }
    
    public override func setup() {
        self.partialFormatter = PartialFormatter(phoneNumberKit: self.phoneNumberKit, defaultRegion: self.defaultRegion, withPrefix: self.withPrefix)
        self.autocorrectionType = .no
        self.keyboardType = UIKeyboardType.phonePad

        super.setup()
    }
    
    public override func validate() -> Bool {
        do {
            _ = try phoneNumberKit.parse(self.text ?? "", withRegion: self.currentRegion)
            self.hasError = false
            return true
        } catch {
            self.hasError = true
            return false
        }
    }
    
    public override func checkText(_ value: inout String, animated: Bool) {
        super.checkText(&value, animated: animated)
        formatPhoneNumber(&value)
    }
    
    private func formatPhoneNumber(_ value: inout String) {
        value = self.partialFormatter?.formatPartial(value) ?? value
    }
}
