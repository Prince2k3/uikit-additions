import UIKit

public class GradientView: UIView {
    @IBInspectable public var startColor: UIColor = .white {
        didSet {
            updateView()
        }
    }

    @IBInspectable public var endColor: UIColor = .black {
        didSet {
            updateView()
        }
    }

    public var startPoint: Point = .topLeft {
        didSet {
            updateView()
        }
    }

    public var endPoint: Point = .bottomLeft {
        didSet {
            updateView()
        }
    }

    public override static var layerClass: AnyClass {
        return CAGradientLayer.self
    }

    public convenience init(startColor: UIColor, startPoint: Point = .topLeft, endColor: UIColor, endPoint: Point = .bottomLeft) {
        self.init()
        self.startColor = startColor
        self.startPoint = startPoint
        self.endColor = endColor
        self.endPoint = endPoint
        
        updateView()
    }

    private var gradientLayer: CAGradientLayer {
        guard
            let layer = self.layer as? CAGradientLayer
            else { fatalError("layer is not of type CAGradientLayer") }
        return layer
    }

    private func updateView() {
        self.gradientLayer.startPoint = self.startPoint.point
        self.gradientLayer.endPoint = self.endPoint.point
        self.gradientLayer.colors = [self.startColor.cgColor, self.endColor.cgColor]
    }
}

extension GradientView {
    public enum Point {
        case topLeft
        case centerLeft
        case bottomLeft
        case topCenter
        case center
        case bottomCenter
        case topRight
        case centerRight
        case bottomRight
        
        var point: CGPoint {
            switch self {
            case .topLeft:
                return CGPoint(x: 0.0, y: 0)
            case .centerLeft:
                return CGPoint(x: 0.0, y: 0.5)
            case .bottomLeft:
                return CGPoint(x: 0.0, y: 1.0)
            case .topCenter:
                return CGPoint(x: 0.5, y: 0)
            case .center:
                return CGPoint(x: 0.5, y: 0.5)
            case .bottomCenter:
                return CGPoint(x: 0.5, y: 1.0)
            case .topRight:
                return CGPoint(x: 1.0, y: 0.0)
            case .centerRight:
                return CGPoint(x: 1.0, y: 0.5)
            case .bottomRight:
                return CGPoint(x: 1.0, y: 1.0)
            }
        }
    }
}
