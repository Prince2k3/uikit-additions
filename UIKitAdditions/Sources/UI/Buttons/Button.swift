import UIKit

class Button: UIButton {
    enum VerticalAlignment: String {
        case center, top, bottom
    }

    enum HorizontalAlignment: String {
        case center, left, right
    }

    @IBInspectable var imageToTitleSpacing: CGFloat = 8.0 {
        didSet {
            setNeedsLayout()
        }
    }

    @IBInspectable private var imageVerticalAlignmentName: String! {
        willSet {
            if let imageVerticalAlignmentName = VerticalAlignment(rawValue: newValue.lowercased()) {
                self.imageVerticalAlignment = imageVerticalAlignmentName
            }
        }
    }

    @IBInspectable private var imageHorizontalAlignmentName: String! {
        willSet {
            if let imageHorizontalAlignmentName = HorizontalAlignment(rawValue: newValue.lowercased()) {
                self.imageHorizontalAlignment = imageHorizontalAlignmentName
            }
        }
    }

    var imageVerticalAlignment: VerticalAlignment = .center {
        didSet {
            setNeedsLayout()
        }
    }

    var imageHorizontalAlignment: HorizontalAlignment = .left {
        didSet {
            setNeedsLayout()
        }
    }

    private var extraContentEdgeInsets: UIEdgeInsets = .zero

    override var contentEdgeInsets: UIEdgeInsets {
        get { return super.contentEdgeInsets }
        set {
            super.contentEdgeInsets = newValue
            self.extraContentEdgeInsets = newValue
        }
    }

    private var extraImageEdgeInsets: UIEdgeInsets = .zero

    override var imageEdgeInsets: UIEdgeInsets {
        get { return super.imageEdgeInsets }
        set {
            super.imageEdgeInsets = newValue
            self.extraImageEdgeInsets = newValue
        }
    }

    private var extraTitleEdgeInsets: UIEdgeInsets = .zero

    override var titleEdgeInsets: UIEdgeInsets {
        get { return super.titleEdgeInsets }
        set {
            super.titleEdgeInsets = newValue
            self.extraTitleEdgeInsets = newValue
        }
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)

        self.imageEdgeInsets = super.imageEdgeInsets
        self.titleEdgeInsets = super.titleEdgeInsets
        self.contentEdgeInsets = super.contentEdgeInsets
    }

    override func layoutSubviews() {
        if let imageSize = self.imageView?.image?.size,
            let font = self.titleLabel?.font,
            let textSize = self.titleLabel?.attributedText?.size() ?? self.titleLabel?.text?.size(withAttributes: [.font: font]) {

            var imageEdgeInsets: UIEdgeInsets = .zero
            var titleEdgeInsets: UIEdgeInsets = .zero
            var contentEdgeInsets: UIEdgeInsets = .zero

            let halfImageToTitleSpacing = self.imageToTitleSpacing / 2.0

            switch self.imageVerticalAlignment {
            case .bottom:
                imageEdgeInsets.top = (textSize.height + self.imageToTitleSpacing) / 2.0
                imageEdgeInsets.bottom = (-textSize.height - self.imageToTitleSpacing) / 2.0
                titleEdgeInsets.top = (-imageSize.height - self.imageToTitleSpacing) / 2.0
                titleEdgeInsets.bottom = (imageSize.height + self.imageToTitleSpacing) / 2.0
                contentEdgeInsets.top = (min(imageSize.height, textSize.height) + self.imageToTitleSpacing) / 2.0
                contentEdgeInsets.bottom = (min(imageSize.height, textSize.height) + self.imageToTitleSpacing) / 2.0

                self.contentVerticalAlignment = .center
            case .top:
                imageEdgeInsets.top = (-textSize.height - self.imageToTitleSpacing) / 2.0
                imageEdgeInsets.bottom = (textSize.height + self.imageToTitleSpacing) / 2.0
                titleEdgeInsets.top = (imageSize.height + self.imageToTitleSpacing) / 2.0
                titleEdgeInsets.bottom = (-imageSize.height - self.imageToTitleSpacing) / 2.0
                contentEdgeInsets.top = (min(imageSize.height, textSize.height) + self.imageToTitleSpacing) / 2.0
                contentEdgeInsets.bottom = (min(imageSize.height, textSize.height) + self.imageToTitleSpacing) / 2.0

                self.contentVerticalAlignment = .center
            case .center:
                self.contentVerticalAlignment = .center
            }

            switch self.imageHorizontalAlignment {
            case .left:
                imageEdgeInsets.left = -halfImageToTitleSpacing
                imageEdgeInsets.right = halfImageToTitleSpacing
                titleEdgeInsets.left = halfImageToTitleSpacing
                titleEdgeInsets.right = -halfImageToTitleSpacing
                contentEdgeInsets.left = halfImageToTitleSpacing
                contentEdgeInsets.right = halfImageToTitleSpacing
            case .right:
                imageEdgeInsets.left = textSize.width + halfImageToTitleSpacing
                imageEdgeInsets.right = -textSize.width - halfImageToTitleSpacing
                titleEdgeInsets.left = -imageSize.width - halfImageToTitleSpacing
                titleEdgeInsets.right = imageSize.width + halfImageToTitleSpacing
                contentEdgeInsets.left = halfImageToTitleSpacing
                contentEdgeInsets.right = halfImageToTitleSpacing
            case .center:
                imageEdgeInsets.left = textSize.width / 2.0
                imageEdgeInsets.right = -textSize.width / 2.0
                titleEdgeInsets.left = -imageSize.width / 2.0
                titleEdgeInsets.right = imageSize.width / 2.0
                contentEdgeInsets.left = -((imageSize.width + textSize.width) - max(imageSize.width, textSize.width)) / 2.0
                contentEdgeInsets.right = -((imageSize.width + textSize.width) - max(imageSize.width, textSize.width)) / 2.0
            }

            contentEdgeInsets.top += self.extraContentEdgeInsets.top
            contentEdgeInsets.bottom += self.extraContentEdgeInsets.bottom
            contentEdgeInsets.left += self.extraContentEdgeInsets.left
            contentEdgeInsets.right += self.extraContentEdgeInsets.right

            imageEdgeInsets.top += self.extraImageEdgeInsets.top
            imageEdgeInsets.bottom += self.extraImageEdgeInsets.bottom
            imageEdgeInsets.left += self.extraImageEdgeInsets.left
            imageEdgeInsets.right += self.extraImageEdgeInsets.right

            titleEdgeInsets.top += self.extraTitleEdgeInsets.top
            titleEdgeInsets.bottom += self.extraTitleEdgeInsets.bottom
            titleEdgeInsets.left += self.extraTitleEdgeInsets.left
            titleEdgeInsets.right += self.extraTitleEdgeInsets.right

            super.imageEdgeInsets = imageEdgeInsets
            super.titleEdgeInsets = titleEdgeInsets
            super.contentEdgeInsets = contentEdgeInsets
        } else {
            super.imageEdgeInsets = self.extraImageEdgeInsets
            super.titleEdgeInsets = self.extraTitleEdgeInsets
            super.contentEdgeInsets = self.extraContentEdgeInsets
        }

        super.layoutSubviews()
    }

}
