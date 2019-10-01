import UIKit
import PhoneNumberKit

public class PhoneNumberTextField: TextField {
    private let phoneNumberKit = PhoneNumberKit(metadataCallback: PhoneNumberKit.bundleMetadataCallback)
    
    private(set) lazy var partialFormatter: PartialFormatter = {
        return PartialFormatter(phoneNumberKit: phoneNumberKit, defaultRegion: defaultRegion, withPrefix: withPrefix)
    }()
    
    public var isPartialFormatterEnabled = true
    public var defaultRegion = PhoneNumberKit.defaultRegionCode() {
        didSet {
            partialFormatter.defaultRegion = defaultRegion
        }
    }
    
    public var withPrefix: Bool = true {
        didSet {
            partialFormatter = PartialFormatter(phoneNumberKit: phoneNumberKit, defaultRegion: defaultRegion, withPrefix: withPrefix)
            if withPrefix == false {
                keyboardType = .numberPad
            } else {
                keyboardType = .phonePad
            }
        }
    }
    
    public var currentRegion: String {
        return partialFormatter.currentRegion
    }
    
    public var nationalNumber: String {
        let rawNumber = text ?? ""
        return partialFormatter.nationalNumber(from: rawNumber)
    }
    
    public override func setup() {
        autocorrectionType = .no
        keyboardType = .phonePad

        super.setup()
    }
    
    public override func validate() -> Bool {
        do {
            _ = try phoneNumberKit.parse(text ?? "", withRegion: currentRegion)
            hasError = false
            return true
        } catch {
            hasError = true
            return false
        }
    }
    
    public override func checkText(_ value: inout String, animated: Bool) {
        super.checkText(&value, animated: animated)
        formatPhoneNumber(&value)
    }
    
    private func formatPhoneNumber(_ value: inout String) {
        value = partialFormatter.formatPartial(value)
    }
}

extension PhoneNumberKit {
    public static func bundleMetadataCallback() throws -> Data? {
        guard
            let jsonPath = Bundle.main.path(forResource: "PhoneNumberMetadata", ofType: "json")
            else { throw PhoneNumberError.metadataNotFound }
        return try Data(contentsOf: URL(fileURLWithPath: jsonPath))
    }
}
