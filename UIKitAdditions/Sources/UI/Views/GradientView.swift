import UIKit

public class GradientView: UIView {
    @IBInspectable
    public var startColor: UIColor = .white {
        didSet {
            updateView()
        }
    }

    @IBInspectable
    public var endColor: UIColor = .black {
        didSet {
            updateView()
        }
    }

    public var startPoint: CGPoint = .zero {
        didSet {
            updateView()
        }
    }

    public var endPoint: CGPoint = CGPoint(x: 0.0, y: 1.0) {
        didSet {
            updateView()
        }
    }

    public override static var layerClass: AnyClass {
        return CAGradientLayer.self
    }

    public convenience init(startColor: UIColor, endColor: UIColor) {
        self.init()
        self.startColor = startColor
        self.endColor = endColor
        updateView()
    }

    private var gradientLayer: CAGradientLayer {
        guard let layer = self.layer as? CAGradientLayer else {
            fatalError("layer is not of type CAGradientLayer")
        }
        return layer
    }

    private func updateView() {
        self.gradientLayer.startPoint = self.startPoint
        self.gradientLayer.endPoint = self.endPoint
        self.gradientLayer.colors = [self.startColor.cgColor, self.endColor.cgColor]
    }
}
