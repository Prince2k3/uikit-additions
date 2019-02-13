import Foundation

extension String {
    public func attributedString(prefixed image: UIImage) -> NSAttributedString {
        let imgAttachement = NSTextAttachment()
        imgAttachement.image = image
        let str = NSMutableAttributedString(attributedString: NSAttributedString(attachment: imgAttachement))
        str.append(NSAttributedString(string: " \(self)"))
        return str
    }
}
