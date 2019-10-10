import UIKit

open class InputAccessoryView: UIToolbar {
    public var orientation: Orientation = .horizontal {
        didSet {
            switch orientation {
            case .horizontal:
                previousItem.image = image(forDirection: .left)
                nextItem.image = image(forDirection: .right)
            case .vertical:
                previousItem.image = image(forDirection: .up)
                nextItem.image = image(forDirection: .down)
            }
        }
    }
    
    public var previousHandler: ((UIBarButtonItem, UIView) -> Void)?
    public var nextHandler: ((UIBarButtonItem, UIView) -> Void)?
    public var doneHandler: ((UIView) -> Void)?
    public var doneTitle: String {
        get { return doneItem.title ?? "" }
        set { doneItem.title = newValue }
    }

    public var isPreviousButtonEnabled: Bool = false {
        didSet {
            previousItem.isEnabled = isPreviousButtonEnabled
        }
    }

    public var isNextButtonEnabled: Bool = false {
        didSet {
            nextItem.isEnabled = isNextButtonEnabled
        }
    }
    
    public weak var view: UIView?
    
    private var flexible: UIBarButtonItem = {
        return UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
    }()
    
    private lazy var fixed: UIBarButtonItem = {
        let item = UIBarButtonItem(barButtonSystemItem: .fixedSpace, target: nil, action: nil)
        item.width = 20
        return item
    }()
    
    lazy var previousItem: UIBarButtonItem = {
        return UIBarButtonItem(image: nil, style: .plain, target: self, action: #selector(handlePrevious))
    }()
    
    lazy var nextItem: UIBarButtonItem = {
        return UIBarButtonItem(image: nil, style: .plain, target: self, action: #selector(handleNext))
    }()
    
    lazy var doneItem: UIBarButtonItem = {
        return UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(handleDone))
    }()
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit() {
        setItems([previousItem, fixed, nextItem, flexible, doneItem], animated: false)
        orientation = .vertical
    }
    
    private func image(forDirection direction: Direction) -> UIImage {
        let upArrowImage = self.upArrowImage()
        let image = UIImage(cgImage: upArrowImage.cgImage!, scale: upArrowImage.scale, orientation: direction.imageOrientation)
        return image
    }
    
    private func upArrowImage() -> UIImage {
        let lineWidth: CGFloat = 1.5
        let ratio: CGFloat = 5.0 / 9.0
        let dimension: CGFloat = 20
        let size = CGSize(width: dimension, height: dimension * ratio)
        let bounds = CGRect(origin: .zero, size: size).insetBy(dx: lineWidth / 2, dy: lineWidth / 2)
        
        let renderer = UIGraphicsImageRenderer(size: size)
        return renderer.image { context in
            let path = UIBezierPath()
            path.lineWidth = lineWidth
            path.lineCapStyle = .round
            path.move(to: CGPoint(x: bounds.minX, y: bounds.maxY))
            path.addLine(to: CGPoint(x: bounds.midX, y: bounds.minY))
            path.addLine(to: CGPoint(x: bounds.maxX, y: bounds.maxY))
            UIColor.black.setStroke()
            path.stroke()
        }
    }
}

extension InputAccessoryView {
    @objc private func handlePrevious(_ item: UIBarButtonItem) {
        view.flatMap { previousHandler?(item, $0) }
    }

    @objc private func handleNext(_ item: UIBarButtonItem) {
        view.flatMap { nextHandler?(item, $0) }
    }

    @objc private func handleDone(_ item: UIBarButtonItem) {
        view.flatMap { doneHandler?($0) }
    }
}

extension InputAccessoryView {
    public enum Orientation {
        case vertical, horizontal
    }
    
    private enum Direction {
        case left, right, up, down
        
        var imageOrientation: UIImage.Orientation {
            switch self {
            case .up: return .up
            case .down: return .down
            case .left: return .left
            case .right: return .right
            }
        }
    }
}
