import UIKit

class GradientView: UIView {
    @IBInspectable var startColor: UIColor = .white {
        didSet {
            updateView()
        }
    }

    @IBInspectable var endColor: UIColor = .black {
        didSet {
            updateView()
        }
    }

    var startPoint: CGPoint = .zero {
        didSet {
            updateView()
        }
    }

    var endPoint: CGPoint = CGPoint(x: 0.0, y: 1.0) {
        didSet {
            updateView()
        }
    }

    override static var layerClass: AnyClass {
        return CAGradientLayer.self
    }

    convenience init(startColor: UIColor, endColor: UIColor) {
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
