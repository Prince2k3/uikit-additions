import UIKit

public enum AppInfo {
    public static let bundleName = Bundle.main.object(forInfoDictionaryKey: "CFBundleName") as? String ?? ""
    public static let shortVersion = Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String ?? ""
    public static let bundleVersion = Bundle.main.object(forInfoDictionaryKey: kCFBundleVersionKey as String) as? String ?? ""
    public static let isPrerelease: Bool = {
        let digitSet = CharacterSet(charactersIn: "0123456789.")
        return (AppInfo.shortVersion.rangeOfCharacter(from: digitSet.inverted) != nil)
    }()
}
