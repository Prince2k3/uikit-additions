import UIKit

public class InputAccessoryIcons : NSObject {

    //// Cache

    private struct Cache {
        static var imageOfArrowup: UIImage?
        static var arrowupTargets: [AnyObject]?
        static var imageOfArrowdown: UIImage?
        static var arrowdownTargets: [AnyObject]?
    }

    //// Drawing Methods

    @objc dynamic public class func drawArrowup(frame targetFrame: CGRect = CGRect(width: 36, height: 36.0), resizing: ResizingBehavior = .aspectFit) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()!
        
        //// Resize to Target Frame
        context.saveGState()
        let resizedFrame: CGRect = resizing.apply(rect: CGRect(width: 36, height: 36.0), target: targetFrame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy(x: resizedFrame.width / 36, y: resizedFrame.height / 36)


        //// Color Declarations
        let fillColor = UIColor(red: 0.000, green: 0.000, blue: 0.000, alpha: 1.000)

        //// Bezier Drawing
        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: 0, y: 16.67))
        bezierPath.addLine(to: CGPoint(x: 2.83, y: 19.5))
        bezierPath.addLine(to: CGPoint(x: 12, y: 10.16))
        bezierPath.addLine(to: CGPoint(x: 21.17, y: 19.5))
        bezierPath.addLine(to: CGPoint(x: 24, y: 16.67))
        bezierPath.addLine(to: CGPoint(x: 12, y: 4.5))
        bezierPath.addLine(to: CGPoint(x: 0, y: 16.67))
        bezierPath.close()
        fillColor.setFill()
        bezierPath.fill()
        
        context.restoreGState()

    }

    @objc dynamic public class func drawArrowdown(frame targetFrame: CGRect = CGRect(width: 36, height: 36.0), resizing: ResizingBehavior = .aspectFit) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()!
        
        //// Resize to Target Frame
        context.saveGState()
        let resizedFrame: CGRect = resizing.apply(rect: CGRect(width: 36, height: 36.0), target: targetFrame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy(x: resizedFrame.width / 36, y: resizedFrame.height / 36)


        //// Color Declarations
        let fillColor = UIColor(red: 0.000, green: 0.000, blue: 0.000, alpha: 1.000)

        //// Bezier Drawing
        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: 0, y: 7.33))
        bezierPath.addLine(to: CGPoint(x: 2.83, y: 4.5))
        bezierPath.addLine(to: CGPoint(x: 12, y: 13.84))
        bezierPath.addLine(to: CGPoint(x: 21.17, y: 4.5))
        bezierPath.addLine(to: CGPoint(x: 24, y: 7.33))
        bezierPath.addLine(to: CGPoint(x: 12, y: 19.5))
        bezierPath.addLine(to: CGPoint(x: 0, y: 7.33))
        bezierPath.close()
        fillColor.setFill()
        bezierPath.fill()
        
        context.restoreGState()

    }

    //// Generated Images

    @objc dynamic public class var imageOfArrowup: UIImage {
        if Cache.imageOfArrowup != nil {
            return Cache.imageOfArrowup!
        }

        UIGraphicsBeginImageContextWithOptions(CGSize(width: 36, height: 36), false, 0)
            InputAccessoryIcons.drawArrowup()

        Cache.imageOfArrowup = UIGraphicsGetImageFromCurrentImageContext()!.withRenderingMode(.alwaysTemplate)
        UIGraphicsEndImageContext()

        return Cache.imageOfArrowup!
    }

    @objc dynamic public class var imageOfArrowdown: UIImage {
        if Cache.imageOfArrowdown != nil {
            return Cache.imageOfArrowdown!
        }

        UIGraphicsBeginImageContextWithOptions(CGSize(width: 36, height: 36), false, 0)
            InputAccessoryIcons.drawArrowdown()

        Cache.imageOfArrowdown = UIGraphicsGetImageFromCurrentImageContext()!.withRenderingMode(.alwaysTemplate)
        UIGraphicsEndImageContext()

        return Cache.imageOfArrowdown!
    }

    //// Customization Infrastructure

    @objc @IBOutlet dynamic var arrowupTargets: [AnyObject]! {
        get { return Cache.arrowupTargets }
        set {
            Cache.arrowupTargets = newValue
            for target: AnyObject in newValue {
                let _ = target.perform(NSSelectorFromString("setImage:"), with: InputAccessoryIcons.imageOfArrowup)
            }
        }
    }

    @objc @IBOutlet dynamic var arrowdownTargets: [AnyObject]! {
        get { return Cache.arrowdownTargets }
        set {
            Cache.arrowdownTargets = newValue
            for target: AnyObject in newValue {
                let _ = target.perform(NSSelectorFromString("setImage:"), with: InputAccessoryIcons.imageOfArrowdown)
            }
        }
    }

    @objc(InputAccessoryIconsResizingBehavior)
    public enum ResizingBehavior: Int {
        case aspectFit /// The content is proportionally resized to fit into the target rectangle.
        case aspectFill /// The content is proportionally resized to completely fill the target rectangle.
        case stretch /// The content is stretched to match the entire target rectangle.
        case center /// The content is centered in the target rectangle, but it is NOT resized.

        public func apply(rect: CGRect, target: CGRect) -> CGRect {
            if rect == target || target == CGRect.zero {
                return rect
            }

            var scales = CGSize.zero
            scales.width = abs(target.width / rect.width)
            scales.height = abs(target.height / rect.height)

            switch self {
                case .aspectFit:
                    scales.width = min(scales.width, scales.height)
                    scales.height = scales.width
                case .aspectFill:
                    scales.width = max(scales.width, scales.height)
                    scales.height = scales.width
                case .stretch:
                    break
                case .center:
                    scales.width = 1
                    scales.height = 1
            }

            var result = rect.standardized
            result.size.width *= scales.width
            result.size.height *= scales.height
            result.origin.x = target.minX + (target.width - result.width) / 2
            result.origin.y = target.minY + (target.height - result.height) / 2
            return result
        }
    }
}
