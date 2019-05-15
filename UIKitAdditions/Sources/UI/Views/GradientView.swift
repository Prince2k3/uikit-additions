import UIKit

public class GradientView: UIView {
    @IBInspectable public var startColor: UIColor = .white {
        didSet {
            self.colors = [self.startColor, self.endColor]
        }
    }

    @IBInspectable public var endColor: UIColor = .black {
        didSet {
            self.colors = [self.startColor, self.endColor]
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
    
    public var colors: [UIColor] = [] {
        didSet {
            updateView()
        }
    }
    
    public var locations: [NSNumber]? {
        didSet {
            updateView()
        }
    }

    public override static var layerClass: AnyClass {
        return CAGradientLayer.self
    }

    public convenience init(colors: [UIColor], startPoint: Point = .topLeft, endPoint: Point = .bottomLeft) {
        self.init()
        self.colors = colors
        self.startPoint = startPoint
        self.endPoint = endPoint
        
        updateView()
    }
    
    public convenience init(startColor: UIColor, endColor: UIColor, startPoint: Point = .topLeft, endPoint: Point = .bottomLeft) {
        self.init(colors: [startColor, endColor], startPoint: startPoint, endPoint: endPoint)
    }

    private var gradientLayer: CAGradientLayer {
        guard
            let layer = self.layer as? CAGradientLayer
            else { fatalError("layer is not of type CAGradientLayer") }
        return layer
    }

    private func updateView() {
        self.gradientLayer.colors = self.colors
        self.gradientLayer.locations = self.locations
        self.gradientLayer.startPoint = self.startPoint.rawValue
        self.gradientLayer.endPoint = self.endPoint.rawValue
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
    }
}

extension GradientView.Point: RawRepresentable {
    public init?(rawValue: CGPoint) {
        switch rawValue {
        case CGPoint(x: 0.0, y: 0):
            self = .topLeft
        case CGPoint(x: 0.0, y: 0.5):
            self = .centerLeft
        case CGPoint(x: 0.0, y: 1.0):
            self = .bottomLeft
        case CGPoint(x: 0.5, y: 0):
            self = .topCenter
        case CGPoint(x: 0.5, y: 0.5):
            self = .center
        case CGPoint(x: 0.5, y: 1.0):
            self = .bottomCenter
        case CGPoint(x: 1.0, y: 0.0):
            self = .topRight
        case CGPoint(x: 1.0, y: 0.5):
            self = .centerRight
        case CGPoint(x: 1.0, y: 1.0):
            self = .bottomRight
        default:
            return nil
        }
    }
    
    public var rawValue: CGPoint {
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
    
    public typealias RawValue = CGPoint
}
