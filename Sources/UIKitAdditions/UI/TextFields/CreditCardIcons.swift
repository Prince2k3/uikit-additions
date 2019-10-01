import UIKit

public class CreditCardIcons : NSObject {

    //// Cache

    private struct Cache {
        static var imageOfAmex: UIImage?
        static var amexTargets: [AnyObject]?
        static var imageOfDiners: UIImage?
        static var dinersTargets: [AnyObject]?
        static var imageOfDiscover: UIImage?
        static var discoverTargets: [AnyObject]?
        static var imageOfUnknown: UIImage?
        static var unknownTargets: [AnyObject]?
        static var imageOfJcb: UIImage?
        static var jcbTargets: [AnyObject]?
        static var imageOfVisa: UIImage?
        static var visaTargets: [AnyObject]?
        static var imageOfMaestro: UIImage?
        static var maestroTargets: [AnyObject]?
        static var imageOfMastercard: UIImage?
        static var mastercardTargets: [AnyObject]?
    }

    //// Drawing Methods

    @objc dynamic public class func drawAmex(frame targetFrame: CGRect = CGRect(width: 40, height: 28.0), resizing: ResizingBehavior = .aspectFit) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()!
        
        //// Resize to Target Frame
        context.saveGState()
        let resizedFrame: CGRect = resizing.apply(rect: CGRect(width: 40, height: 28.0), target: targetFrame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy(x: resizedFrame.width / 40, y: resizedFrame.height / 28)


        //// Color Declarations
        let fillColor = UIColor(red: 0.145, green: 0.341, blue: 0.839, alpha: 1.000)
        let fillColor2 = UIColor(red: 1.000, green: 1.000, blue: 1.000, alpha: 1.000)

        //// Group
        //// Bezier Drawing
        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: 2.05, y: 0))
        bezierPath.addLine(to: CGPoint(x: 37.95, y: 0))
        bezierPath.addCurve(to: CGPoint(x: 40, y: 2.24), controlPoint1: CGPoint(x: 39.08, y: 0), controlPoint2: CGPoint(x: 40, y: 1))
        bezierPath.addLine(to: CGPoint(x: 40, y: 25.76))
        bezierPath.addCurve(to: CGPoint(x: 37.95, y: 28), controlPoint1: CGPoint(x: 40, y: 27), controlPoint2: CGPoint(x: 39.08, y: 28))
        bezierPath.addLine(to: CGPoint(x: 2.05, y: 28))
        bezierPath.addCurve(to: CGPoint(x: 0, y: 25.76), controlPoint1: CGPoint(x: 0.92, y: 28), controlPoint2: CGPoint(x: 0, y: 27))
        bezierPath.addLine(to: CGPoint(x: 0, y: 2.24))
        bezierPath.addCurve(to: CGPoint(x: 2.05, y: 0), controlPoint1: CGPoint(x: 0, y: 1), controlPoint2: CGPoint(x: 0.92, y: 0))
        bezierPath.close()
        fillColor.setFill()
        bezierPath.fill()


        //// Bezier 2 Drawing
        let bezier2Path = UIBezierPath()
        bezier2Path.move(to: CGPoint(x: 0.01, y: 13.2))
        bezier2Path.addLine(to: CGPoint(x: 1.93, y: 13.2))
        bezier2Path.addLine(to: CGPoint(x: 2.37, y: 12.11))
        bezier2Path.addLine(to: CGPoint(x: 3.34, y: 12.11))
        bezier2Path.addLine(to: CGPoint(x: 3.77, y: 13.2))
        bezier2Path.addLine(to: CGPoint(x: 7.54, y: 13.2))
        bezier2Path.addLine(to: CGPoint(x: 7.54, y: 12.36))
        bezier2Path.addLine(to: CGPoint(x: 7.88, y: 13.2))
        bezier2Path.addLine(to: CGPoint(x: 9.84, y: 13.2))
        bezier2Path.addLine(to: CGPoint(x: 10.18, y: 12.35))
        bezier2Path.addLine(to: CGPoint(x: 10.18, y: 13.2))
        bezier2Path.addLine(to: CGPoint(x: 19.57, y: 13.2))
        bezier2Path.addLine(to: CGPoint(x: 19.56, y: 11.41))
        bezier2Path.addLine(to: CGPoint(x: 19.75, y: 11.41))
        bezier2Path.addCurve(to: CGPoint(x: 19.91, y: 11.64), controlPoint1: CGPoint(x: 19.87, y: 11.41), controlPoint2: CGPoint(x: 19.91, y: 11.42))
        bezier2Path.addLine(to: CGPoint(x: 19.91, y: 13.2))
        bezier2Path.addLine(to: CGPoint(x: 24.77, y: 13.2))
        bezier2Path.addLine(to: CGPoint(x: 24.77, y: 12.78))
        bezier2Path.addCurve(to: CGPoint(x: 26.57, y: 13.2), controlPoint1: CGPoint(x: 25.16, y: 13), controlPoint2: CGPoint(x: 25.77, y: 13.2))
        bezier2Path.addLine(to: CGPoint(x: 28.61, y: 13.2))
        bezier2Path.addLine(to: CGPoint(x: 29.05, y: 12.11))
        bezier2Path.addLine(to: CGPoint(x: 30.02, y: 12.11))
        bezier2Path.addLine(to: CGPoint(x: 30.45, y: 13.2))
        bezier2Path.addLine(to: CGPoint(x: 34.38, y: 13.2))
        bezier2Path.addLine(to: CGPoint(x: 34.38, y: 12.16))
        bezier2Path.addLine(to: CGPoint(x: 34.98, y: 13.2))
        bezier2Path.addLine(to: CGPoint(x: 38.13, y: 13.2))
        bezier2Path.addLine(to: CGPoint(x: 38.13, y: 6.34))
        bezier2Path.addLine(to: CGPoint(x: 35.01, y: 6.34))
        bezier2Path.addLine(to: CGPoint(x: 35.01, y: 7.15))
        bezier2Path.addLine(to: CGPoint(x: 34.57, y: 6.34))
        bezier2Path.addLine(to: CGPoint(x: 31.37, y: 6.34))
        bezier2Path.addLine(to: CGPoint(x: 31.37, y: 7.15))
        bezier2Path.addLine(to: CGPoint(x: 30.97, y: 6.34))
        bezier2Path.addLine(to: CGPoint(x: 26.64, y: 6.34))
        bezier2Path.addCurve(to: CGPoint(x: 24.77, y: 6.74), controlPoint1: CGPoint(x: 25.92, y: 6.34), controlPoint2: CGPoint(x: 25.28, y: 6.44))
        bezier2Path.addLine(to: CGPoint(x: 24.77, y: 6.34))
        bezier2Path.addLine(to: CGPoint(x: 21.78, y: 6.34))
        bezier2Path.addLine(to: CGPoint(x: 21.78, y: 6.74))
        bezier2Path.addCurve(to: CGPoint(x: 20.51, y: 6.34), controlPoint1: CGPoint(x: 21.45, y: 6.43), controlPoint2: CGPoint(x: 21.01, y: 6.34))
        bezier2Path.addLine(to: CGPoint(x: 9.6, y: 6.34))
        bezier2Path.addLine(to: CGPoint(x: 8.87, y: 8.11))
        bezier2Path.addLine(to: CGPoint(x: 8.12, y: 6.34))
        bezier2Path.addLine(to: CGPoint(x: 4.68, y: 6.34))
        bezier2Path.addLine(to: CGPoint(x: 4.68, y: 7.15))
        bezier2Path.addLine(to: CGPoint(x: 4.3, y: 6.34))
        bezier2Path.addLine(to: CGPoint(x: 1.37, y: 6.34))
        bezier2Path.addLine(to: CGPoint(x: 0.01, y: 9.6))
        bezier2Path.addLine(to: CGPoint(x: 0.01, y: 13.2))
        bezier2Path.addLine(to: CGPoint(x: 0.01, y: 13.2))
        bezier2Path.addLine(to: CGPoint(x: 0.01, y: 13.2))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 12.13, y: 12.21))
        bezier2Path.addLine(to: CGPoint(x: 10.98, y: 12.21))
        bezier2Path.addLine(to: CGPoint(x: 10.98, y: 8.36))
        bezier2Path.addLine(to: CGPoint(x: 9.35, y: 12.21))
        bezier2Path.addLine(to: CGPoint(x: 8.36, y: 12.21))
        bezier2Path.addLine(to: CGPoint(x: 6.73, y: 8.35))
        bezier2Path.addLine(to: CGPoint(x: 6.73, y: 12.21))
        bezier2Path.addLine(to: CGPoint(x: 4.44, y: 12.21))
        bezier2Path.addLine(to: CGPoint(x: 4.01, y: 11.11))
        bezier2Path.addLine(to: CGPoint(x: 1.67, y: 11.11))
        bezier2Path.addLine(to: CGPoint(x: 1.23, y: 12.21))
        bezier2Path.addLine(to: CGPoint(x: 0.01, y: 12.21))
        bezier2Path.addLine(to: CGPoint(x: 2.03, y: 7.29))
        bezier2Path.addLine(to: CGPoint(x: 3.69, y: 7.29))
        bezier2Path.addLine(to: CGPoint(x: 5.61, y: 11.95))
        bezier2Path.addLine(to: CGPoint(x: 5.61, y: 7.29))
        bezier2Path.addLine(to: CGPoint(x: 7.44, y: 7.29))
        bezier2Path.addLine(to: CGPoint(x: 8.91, y: 10.63))
        bezier2Path.addLine(to: CGPoint(x: 10.26, y: 7.29))
        bezier2Path.addLine(to: CGPoint(x: 12.13, y: 7.29))
        bezier2Path.addLine(to: CGPoint(x: 12.13, y: 12.21))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 3.63, y: 10.09))
        bezier2Path.addLine(to: CGPoint(x: 2.86, y: 8.13))
        bezier2Path.addLine(to: CGPoint(x: 2.09, y: 10.09))
        bezier2Path.addLine(to: CGPoint(x: 3.63, y: 10.09))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 16.72, y: 12.21))
        bezier2Path.addLine(to: CGPoint(x: 12.96, y: 12.21))
        bezier2Path.addLine(to: CGPoint(x: 12.96, y: 7.29))
        bezier2Path.addLine(to: CGPoint(x: 16.72, y: 7.29))
        bezier2Path.addLine(to: CGPoint(x: 16.72, y: 8.31))
        bezier2Path.addLine(to: CGPoint(x: 14.09, y: 8.31))
        bezier2Path.addLine(to: CGPoint(x: 14.09, y: 9.2))
        bezier2Path.addLine(to: CGPoint(x: 16.65, y: 9.2))
        bezier2Path.addLine(to: CGPoint(x: 16.65, y: 10.21))
        bezier2Path.addLine(to: CGPoint(x: 14.09, y: 10.21))
        bezier2Path.addLine(to: CGPoint(x: 14.09, y: 11.19))
        bezier2Path.addLine(to: CGPoint(x: 16.72, y: 11.19))
        bezier2Path.addLine(to: CGPoint(x: 16.72, y: 12.21))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 22.01, y: 8.61))
        bezier2Path.addCurve(to: CGPoint(x: 21.22, y: 9.93), controlPoint1: CGPoint(x: 22.01, y: 9.4), controlPoint2: CGPoint(x: 21.51, y: 9.8))
        bezier2Path.addCurve(to: CGPoint(x: 21.77, y: 10.34), controlPoint1: CGPoint(x: 21.46, y: 10.02), controlPoint2: CGPoint(x: 21.67, y: 10.2))
        bezier2Path.addCurve(to: CGPoint(x: 21.96, y: 11.24), controlPoint1: CGPoint(x: 21.93, y: 10.58), controlPoint2: CGPoint(x: 21.96, y: 10.8))
        bezier2Path.addLine(to: CGPoint(x: 21.96, y: 12.21))
        bezier2Path.addLine(to: CGPoint(x: 20.82, y: 12.21))
        bezier2Path.addLine(to: CGPoint(x: 20.82, y: 11.59))
        bezier2Path.addCurve(to: CGPoint(x: 20.64, y: 10.63), controlPoint1: CGPoint(x: 20.82, y: 11.29), controlPoint2: CGPoint(x: 20.85, y: 10.87))
        bezier2Path.addCurve(to: CGPoint(x: 19.82, y: 10.42), controlPoint1: CGPoint(x: 20.48, y: 10.46), controlPoint2: CGPoint(x: 20.23, y: 10.42))
        bezier2Path.addLine(to: CGPoint(x: 18.62, y: 10.42))
        bezier2Path.addLine(to: CGPoint(x: 18.62, y: 12.21))
        bezier2Path.addLine(to: CGPoint(x: 17.49, y: 12.21))
        bezier2Path.addLine(to: CGPoint(x: 17.49, y: 7.29))
        bezier2Path.addLine(to: CGPoint(x: 20.08, y: 7.29))
        bezier2Path.addCurve(to: CGPoint(x: 21.44, y: 7.53), controlPoint1: CGPoint(x: 20.65, y: 7.29), controlPoint2: CGPoint(x: 21.08, y: 7.31))
        bezier2Path.addCurve(to: CGPoint(x: 22.01, y: 8.61), controlPoint1: CGPoint(x: 21.79, y: 7.75), controlPoint2: CGPoint(x: 22.01, y: 8.07))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 20.59, y: 9.35))
        bezier2Path.addCurve(to: CGPoint(x: 20.03, y: 9.45), controlPoint1: CGPoint(x: 20.43, y: 9.44), controlPoint2: CGPoint(x: 20.25, y: 9.45))
        bezier2Path.addLine(to: CGPoint(x: 18.67, y: 9.45))
        bezier2Path.addLine(to: CGPoint(x: 18.67, y: 8.35))
        bezier2Path.addLine(to: CGPoint(x: 20.05, y: 8.35))
        bezier2Path.addCurve(to: CGPoint(x: 20.58, y: 8.44), controlPoint1: CGPoint(x: 20.25, y: 8.35), controlPoint2: CGPoint(x: 20.45, y: 8.36))
        bezier2Path.addCurve(to: CGPoint(x: 20.82, y: 8.88), controlPoint1: CGPoint(x: 20.73, y: 8.51), controlPoint2: CGPoint(x: 20.82, y: 8.67))
        bezier2Path.addCurve(to: CGPoint(x: 20.59, y: 9.35), controlPoint1: CGPoint(x: 20.82, y: 9.09), controlPoint2: CGPoint(x: 20.73, y: 9.27))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 23.81, y: 12.21))
        bezier2Path.addLine(to: CGPoint(x: 22.66, y: 12.21))
        bezier2Path.addLine(to: CGPoint(x: 22.66, y: 7.29))
        bezier2Path.addLine(to: CGPoint(x: 23.81, y: 7.29))
        bezier2Path.addLine(to: CGPoint(x: 23.81, y: 12.21))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 37.12, y: 12.21))
        bezier2Path.addLine(to: CGPoint(x: 35.53, y: 12.21))
        bezier2Path.addLine(to: CGPoint(x: 33.4, y: 8.52))
        bezier2Path.addLine(to: CGPoint(x: 33.4, y: 12.21))
        bezier2Path.addLine(to: CGPoint(x: 31.11, y: 12.21))
        bezier2Path.addLine(to: CGPoint(x: 30.67, y: 11.11))
        bezier2Path.addLine(to: CGPoint(x: 28.34, y: 11.11))
        bezier2Path.addLine(to: CGPoint(x: 27.91, y: 12.21))
        bezier2Path.addLine(to: CGPoint(x: 26.6, y: 12.21))
        bezier2Path.addCurve(to: CGPoint(x: 24.97, y: 11.66), controlPoint1: CGPoint(x: 26.05, y: 12.21), controlPoint2: CGPoint(x: 25.36, y: 12.08))
        bezier2Path.addCurve(to: CGPoint(x: 24.37, y: 9.79), controlPoint1: CGPoint(x: 24.57, y: 11.25), controlPoint2: CGPoint(x: 24.37, y: 10.68))
        bezier2Path.addCurve(to: CGPoint(x: 24.97, y: 7.86), controlPoint1: CGPoint(x: 24.37, y: 9.06), controlPoint2: CGPoint(x: 24.49, y: 8.39))
        bezier2Path.addCurve(to: CGPoint(x: 26.68, y: 7.29), controlPoint1: CGPoint(x: 25.34, y: 7.47), controlPoint2: CGPoint(x: 25.91, y: 7.29))
        bezier2Path.addLine(to: CGPoint(x: 27.77, y: 7.29))
        bezier2Path.addLine(to: CGPoint(x: 27.77, y: 8.34))
        bezier2Path.addLine(to: CGPoint(x: 26.7, y: 8.34))
        bezier2Path.addCurve(to: CGPoint(x: 25.84, y: 8.64), controlPoint1: CGPoint(x: 26.29, y: 8.34), controlPoint2: CGPoint(x: 26.06, y: 8.41))
        bezier2Path.addCurve(to: CGPoint(x: 25.52, y: 9.75), controlPoint1: CGPoint(x: 25.65, y: 8.84), controlPoint2: CGPoint(x: 25.52, y: 9.23))
        bezier2Path.addCurve(to: CGPoint(x: 25.83, y: 10.9), controlPoint1: CGPoint(x: 25.52, y: 10.28), controlPoint2: CGPoint(x: 25.62, y: 10.66))
        bezier2Path.addCurve(to: CGPoint(x: 26.61, y: 11.16), controlPoint1: CGPoint(x: 26, y: 11.1), controlPoint2: CGPoint(x: 26.31, y: 11.16))
        bezier2Path.addLine(to: CGPoint(x: 27.11, y: 11.16))
        bezier2Path.addLine(to: CGPoint(x: 28.7, y: 7.29))
        bezier2Path.addLine(to: CGPoint(x: 30.38, y: 7.29))
        bezier2Path.addLine(to: CGPoint(x: 32.28, y: 11.94))
        bezier2Path.addLine(to: CGPoint(x: 32.28, y: 7.29))
        bezier2Path.addLine(to: CGPoint(x: 33.99, y: 7.29))
        bezier2Path.addLine(to: CGPoint(x: 35.97, y: 10.72))
        bezier2Path.addLine(to: CGPoint(x: 35.97, y: 7.29))
        bezier2Path.addLine(to: CGPoint(x: 37.12, y: 7.29))
        bezier2Path.addLine(to: CGPoint(x: 37.12, y: 12.21))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 30.29, y: 10.09))
        bezier2Path.addLine(to: CGPoint(x: 29.51, y: 8.13))
        bezier2Path.addLine(to: CGPoint(x: 28.74, y: 10.09))
        bezier2Path.addLine(to: CGPoint(x: 30.29, y: 10.09))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 39.98, y: 20.06))
        bezier2Path.addCurve(to: CGPoint(x: 38.46, y: 20.69), controlPoint1: CGPoint(x: 39.71, y: 20.48), controlPoint2: CGPoint(x: 39.18, y: 20.69))
        bezier2Path.addLine(to: CGPoint(x: 36.29, y: 20.69))
        bezier2Path.addLine(to: CGPoint(x: 36.29, y: 19.64))
        bezier2Path.addLine(to: CGPoint(x: 38.45, y: 19.64))
        bezier2Path.addCurve(to: CGPoint(x: 38.91, y: 19.52), controlPoint1: CGPoint(x: 38.67, y: 19.64), controlPoint2: CGPoint(x: 38.82, y: 19.61))
        bezier2Path.addCurve(to: CGPoint(x: 39.04, y: 19.2), controlPoint1: CGPoint(x: 38.99, y: 19.43), controlPoint2: CGPoint(x: 39.04, y: 19.32))
        bezier2Path.addCurve(to: CGPoint(x: 38.9, y: 18.87), controlPoint1: CGPoint(x: 39.04, y: 19.05), controlPoint2: CGPoint(x: 38.98, y: 18.94))
        bezier2Path.addCurve(to: CGPoint(x: 38.51, y: 18.76), controlPoint1: CGPoint(x: 38.82, y: 18.79), controlPoint2: CGPoint(x: 38.7, y: 18.76))
        bezier2Path.addCurve(to: CGPoint(x: 36.13, y: 17.24), controlPoint1: CGPoint(x: 37.45, y: 18.72), controlPoint2: CGPoint(x: 36.13, y: 18.79))
        bezier2Path.addCurve(to: CGPoint(x: 37.75, y: 15.77), controlPoint1: CGPoint(x: 36.13, y: 16.52), controlPoint2: CGPoint(x: 36.57, y: 15.77))
        bezier2Path.addLine(to: CGPoint(x: 39.98, y: 15.77))
        bezier2Path.addLine(to: CGPoint(x: 39.98, y: 14.79))
        bezier2Path.addLine(to: CGPoint(x: 37.9, y: 14.79))
        bezier2Path.addCurve(to: CGPoint(x: 36.5, y: 15.2), controlPoint1: CGPoint(x: 37.28, y: 14.79), controlPoint2: CGPoint(x: 36.82, y: 14.95))
        bezier2Path.addLine(to: CGPoint(x: 36.5, y: 14.79))
        bezier2Path.addLine(to: CGPoint(x: 33.42, y: 14.79))
        bezier2Path.addCurve(to: CGPoint(x: 32.08, y: 15.2), controlPoint1: CGPoint(x: 32.93, y: 14.79), controlPoint2: CGPoint(x: 32.35, y: 14.92))
        bezier2Path.addLine(to: CGPoint(x: 32.08, y: 14.79))
        bezier2Path.addLine(to: CGPoint(x: 26.59, y: 14.79))
        bezier2Path.addLine(to: CGPoint(x: 26.59, y: 15.2))
        bezier2Path.addCurve(to: CGPoint(x: 25.07, y: 14.79), controlPoint1: CGPoint(x: 26.15, y: 14.87), controlPoint2: CGPoint(x: 25.41, y: 14.79))
        bezier2Path.addLine(to: CGPoint(x: 21.45, y: 14.79))
        bezier2Path.addLine(to: CGPoint(x: 21.45, y: 15.2))
        bezier2Path.addCurve(to: CGPoint(x: 19.86, y: 14.79), controlPoint1: CGPoint(x: 21.1, y: 14.85), controlPoint2: CGPoint(x: 20.33, y: 14.79))
        bezier2Path.addLine(to: CGPoint(x: 15.81, y: 14.79))
        bezier2Path.addLine(to: CGPoint(x: 14.88, y: 15.84))
        bezier2Path.addLine(to: CGPoint(x: 14.01, y: 14.79))
        bezier2Path.addLine(to: CGPoint(x: 7.95, y: 14.79))
        bezier2Path.addLine(to: CGPoint(x: 7.95, y: 21.66))
        bezier2Path.addLine(to: CGPoint(x: 13.9, y: 21.66))
        bezier2Path.addLine(to: CGPoint(x: 14.85, y: 20.59))
        bezier2Path.addLine(to: CGPoint(x: 15.75, y: 21.66))
        bezier2Path.addLine(to: CGPoint(x: 19.42, y: 21.66))
        bezier2Path.addLine(to: CGPoint(x: 19.42, y: 20.05))
        bezier2Path.addLine(to: CGPoint(x: 19.78, y: 20.05))
        bezier2Path.addCurve(to: CGPoint(x: 21.34, y: 19.81), controlPoint1: CGPoint(x: 20.26, y: 20.06), controlPoint2: CGPoint(x: 20.84, y: 20.03))
        bezier2Path.addLine(to: CGPoint(x: 21.34, y: 21.66))
        bezier2Path.addLine(to: CGPoint(x: 24.36, y: 21.66))
        bezier2Path.addLine(to: CGPoint(x: 24.36, y: 19.87))
        bezier2Path.addLine(to: CGPoint(x: 24.51, y: 19.87))
        bezier2Path.addCurve(to: CGPoint(x: 24.71, y: 20.07), controlPoint1: CGPoint(x: 24.7, y: 19.87), controlPoint2: CGPoint(x: 24.71, y: 19.88))
        bezier2Path.addLine(to: CGPoint(x: 24.71, y: 21.66))
        bezier2Path.addLine(to: CGPoint(x: 33.89, y: 21.66))
        bezier2Path.addCurve(to: CGPoint(x: 35.42, y: 21.22), controlPoint1: CGPoint(x: 34.48, y: 21.66), controlPoint2: CGPoint(x: 35.09, y: 21.5))
        bezier2Path.addLine(to: CGPoint(x: 35.42, y: 21.66))
        bezier2Path.addLine(to: CGPoint(x: 38.34, y: 21.66))
        bezier2Path.addCurve(to: CGPoint(x: 39.98, y: 21.34), controlPoint1: CGPoint(x: 38.94, y: 21.66), controlPoint2: CGPoint(x: 39.53, y: 21.57))
        bezier2Path.addLine(to: CGPoint(x: 39.98, y: 20.06))
        bezier2Path.addLine(to: CGPoint(x: 39.98, y: 20.06))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 21.78, y: 17.42))
        bezier2Path.addCurve(to: CGPoint(x: 19.83, y: 19.07), controlPoint1: CGPoint(x: 21.78, y: 18.79), controlPoint2: CGPoint(x: 20.81, y: 19.07))
        bezier2Path.addLine(to: CGPoint(x: 18.42, y: 19.07))
        bezier2Path.addLine(to: CGPoint(x: 18.42, y: 20.72))
        bezier2Path.addLine(to: CGPoint(x: 16.24, y: 20.72))
        bezier2Path.addLine(to: CGPoint(x: 14.86, y: 19.09))
        bezier2Path.addLine(to: CGPoint(x: 13.42, y: 20.72))
        bezier2Path.addLine(to: CGPoint(x: 8.97, y: 20.72))
        bezier2Path.addLine(to: CGPoint(x: 8.97, y: 15.8))
        bezier2Path.addLine(to: CGPoint(x: 13.49, y: 15.8))
        bezier2Path.addLine(to: CGPoint(x: 14.87, y: 17.41))
        bezier2Path.addLine(to: CGPoint(x: 16.3, y: 15.8))
        bezier2Path.addLine(to: CGPoint(x: 19.89, y: 15.8))
        bezier2Path.addCurve(to: CGPoint(x: 21.78, y: 17.42), controlPoint1: CGPoint(x: 20.78, y: 15.8), controlPoint2: CGPoint(x: 21.78, y: 16.06))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 12.85, y: 19.69))
        bezier2Path.addLine(to: CGPoint(x: 10.09, y: 19.69))
        bezier2Path.addLine(to: CGPoint(x: 10.09, y: 18.71))
        bezier2Path.addLine(to: CGPoint(x: 12.55, y: 18.71))
        bezier2Path.addLine(to: CGPoint(x: 12.55, y: 17.7))
        bezier2Path.addLine(to: CGPoint(x: 10.09, y: 17.7))
        bezier2Path.addLine(to: CGPoint(x: 10.09, y: 16.81))
        bezier2Path.addLine(to: CGPoint(x: 12.9, y: 16.81))
        bezier2Path.addLine(to: CGPoint(x: 14.13, y: 18.24))
        bezier2Path.addLine(to: CGPoint(x: 12.85, y: 19.69))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 17.3, y: 20.25))
        bezier2Path.addLine(to: CGPoint(x: 15.57, y: 18.25))
        bezier2Path.addLine(to: CGPoint(x: 17.3, y: 16.31))
        bezier2Path.addLine(to: CGPoint(x: 17.3, y: 20.25))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 19.85, y: 18.06))
        bezier2Path.addLine(to: CGPoint(x: 18.4, y: 18.06))
        bezier2Path.addLine(to: CGPoint(x: 18.4, y: 16.81))
        bezier2Path.addLine(to: CGPoint(x: 19.86, y: 16.81))
        bezier2Path.addCurve(to: CGPoint(x: 20.55, y: 17.41), controlPoint1: CGPoint(x: 20.27, y: 16.81), controlPoint2: CGPoint(x: 20.55, y: 16.98))
        bezier2Path.addCurve(to: CGPoint(x: 19.85, y: 18.06), controlPoint1: CGPoint(x: 20.55, y: 17.84), controlPoint2: CGPoint(x: 20.28, y: 18.06))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 27.46, y: 15.8))
        bezier2Path.addLine(to: CGPoint(x: 31.21, y: 15.8))
        bezier2Path.addLine(to: CGPoint(x: 31.21, y: 16.82))
        bezier2Path.addLine(to: CGPoint(x: 28.58, y: 16.82))
        bezier2Path.addLine(to: CGPoint(x: 28.58, y: 17.71))
        bezier2Path.addLine(to: CGPoint(x: 31.15, y: 17.71))
        bezier2Path.addLine(to: CGPoint(x: 31.15, y: 18.72))
        bezier2Path.addLine(to: CGPoint(x: 28.58, y: 18.72))
        bezier2Path.addLine(to: CGPoint(x: 28.58, y: 19.7))
        bezier2Path.addLine(to: CGPoint(x: 31.21, y: 19.7))
        bezier2Path.addLine(to: CGPoint(x: 31.21, y: 20.72))
        bezier2Path.addLine(to: CGPoint(x: 27.46, y: 20.72))
        bezier2Path.addLine(to: CGPoint(x: 27.46, y: 15.8))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 26.02, y: 18.44))
        bezier2Path.addCurve(to: CGPoint(x: 26.57, y: 18.85), controlPoint1: CGPoint(x: 26.27, y: 18.53), controlPoint2: CGPoint(x: 26.47, y: 18.71))
        bezier2Path.addCurve(to: CGPoint(x: 26.75, y: 19.75), controlPoint1: CGPoint(x: 26.73, y: 19.09), controlPoint2: CGPoint(x: 26.75, y: 19.31))
        bezier2Path.addLine(to: CGPoint(x: 26.75, y: 20.72))
        bezier2Path.addLine(to: CGPoint(x: 25.63, y: 20.72))
        bezier2Path.addLine(to: CGPoint(x: 25.63, y: 20.11))
        bezier2Path.addCurve(to: CGPoint(x: 25.44, y: 19.14), controlPoint1: CGPoint(x: 25.63, y: 19.81), controlPoint2: CGPoint(x: 25.65, y: 19.37))
        bezier2Path.addCurve(to: CGPoint(x: 24.62, y: 18.93), controlPoint1: CGPoint(x: 25.28, y: 18.97), controlPoint2: CGPoint(x: 25.03, y: 18.93))
        bezier2Path.addLine(to: CGPoint(x: 23.42, y: 18.93))
        bezier2Path.addLine(to: CGPoint(x: 23.42, y: 20.72))
        bezier2Path.addLine(to: CGPoint(x: 22.29, y: 20.72))
        bezier2Path.addLine(to: CGPoint(x: 22.29, y: 15.8))
        bezier2Path.addLine(to: CGPoint(x: 24.88, y: 15.8))
        bezier2Path.addCurve(to: CGPoint(x: 26.24, y: 16.03), controlPoint1: CGPoint(x: 25.45, y: 15.8), controlPoint2: CGPoint(x: 25.87, y: 15.83))
        bezier2Path.addCurve(to: CGPoint(x: 26.81, y: 17.13), controlPoint1: CGPoint(x: 26.59, y: 16.26), controlPoint2: CGPoint(x: 26.81, y: 16.57))
        bezier2Path.addCurve(to: CGPoint(x: 26.02, y: 18.44), controlPoint1: CGPoint(x: 26.81, y: 17.91), controlPoint2: CGPoint(x: 26.31, y: 18.31))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 25.38, y: 17.81))
        bezier2Path.addCurve(to: CGPoint(x: 24.83, y: 17.92), controlPoint1: CGPoint(x: 25.23, y: 17.91), controlPoint2: CGPoint(x: 25.05, y: 17.92))
        bezier2Path.addLine(to: CGPoint(x: 23.46, y: 17.92))
        bezier2Path.addLine(to: CGPoint(x: 23.46, y: 16.81))
        bezier2Path.addLine(to: CGPoint(x: 24.85, y: 16.81))
        bezier2Path.addCurve(to: CGPoint(x: 25.38, y: 16.9), controlPoint1: CGPoint(x: 25.05, y: 16.81), controlPoint2: CGPoint(x: 25.25, y: 16.81))
        bezier2Path.addCurve(to: CGPoint(x: 25.62, y: 17.34), controlPoint1: CGPoint(x: 25.53, y: 16.98), controlPoint2: CGPoint(x: 25.62, y: 17.13))
        bezier2Path.addCurve(to: CGPoint(x: 25.38, y: 17.81), controlPoint1: CGPoint(x: 25.62, y: 17.55), controlPoint2: CGPoint(x: 25.53, y: 17.72))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 35.53, y: 18.13))
        bezier2Path.addCurve(to: CGPoint(x: 35.86, y: 19.17), controlPoint1: CGPoint(x: 35.75, y: 18.36), controlPoint2: CGPoint(x: 35.86, y: 18.66))
        bezier2Path.addCurve(to: CGPoint(x: 34.1, y: 20.72), controlPoint1: CGPoint(x: 35.86, y: 20.23), controlPoint2: CGPoint(x: 35.23, y: 20.72))
        bezier2Path.addLine(to: CGPoint(x: 31.91, y: 20.72))
        bezier2Path.addLine(to: CGPoint(x: 31.91, y: 19.67))
        bezier2Path.addLine(to: CGPoint(x: 34.09, y: 19.67))
        bezier2Path.addCurve(to: CGPoint(x: 34.55, y: 19.55), controlPoint1: CGPoint(x: 34.3, y: 19.67), controlPoint2: CGPoint(x: 34.45, y: 19.64))
        bezier2Path.addCurve(to: CGPoint(x: 34.68, y: 19.22), controlPoint1: CGPoint(x: 34.63, y: 19.47), controlPoint2: CGPoint(x: 34.68, y: 19.36))
        bezier2Path.addCurve(to: CGPoint(x: 34.54, y: 18.9), controlPoint1: CGPoint(x: 34.68, y: 19.08), controlPoint2: CGPoint(x: 34.62, y: 18.97))
        bezier2Path.addCurve(to: CGPoint(x: 34.14, y: 18.79), controlPoint1: CGPoint(x: 34.46, y: 18.82), controlPoint2: CGPoint(x: 34.34, y: 18.79))
        bezier2Path.addCurve(to: CGPoint(x: 31.78, y: 17.27), controlPoint1: CGPoint(x: 33.09, y: 18.75), controlPoint2: CGPoint(x: 31.78, y: 18.82))
        bezier2Path.addCurve(to: CGPoint(x: 33.38, y: 15.8), controlPoint1: CGPoint(x: 31.78, y: 16.55), controlPoint2: CGPoint(x: 32.21, y: 15.8))
        bezier2Path.addLine(to: CGPoint(x: 35.64, y: 15.8))
        bezier2Path.addLine(to: CGPoint(x: 35.64, y: 16.85))
        bezier2Path.addLine(to: CGPoint(x: 33.57, y: 16.85))
        bezier2Path.addCurve(to: CGPoint(x: 33.12, y: 16.94), controlPoint1: CGPoint(x: 33.37, y: 16.85), controlPoint2: CGPoint(x: 33.24, y: 16.86))
        bezier2Path.addCurve(to: CGPoint(x: 32.96, y: 17.29), controlPoint1: CGPoint(x: 33, y: 17.02), controlPoint2: CGPoint(x: 32.96, y: 17.14))
        bezier2Path.addCurve(to: CGPoint(x: 33.2, y: 17.66), controlPoint1: CGPoint(x: 32.96, y: 17.48), controlPoint2: CGPoint(x: 33.06, y: 17.6))
        bezier2Path.addCurve(to: CGPoint(x: 33.64, y: 17.71), controlPoint1: CGPoint(x: 33.32, y: 17.7), controlPoint2: CGPoint(x: 33.45, y: 17.71))
        bezier2Path.addLine(to: CGPoint(x: 34.24, y: 17.73))
        bezier2Path.addCurve(to: CGPoint(x: 35.53, y: 18.13), controlPoint1: CGPoint(x: 34.85, y: 17.75), controlPoint2: CGPoint(x: 35.27, y: 17.86))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 39.99, y: 16.81))
        bezier2Path.addLine(to: CGPoint(x: 37.94, y: 16.81))
        bezier2Path.addCurve(to: CGPoint(x: 37.48, y: 16.9), controlPoint1: CGPoint(x: 37.73, y: 16.81), controlPoint2: CGPoint(x: 37.6, y: 16.82))
        bezier2Path.addCurve(to: CGPoint(x: 37.32, y: 17.25), controlPoint1: CGPoint(x: 37.37, y: 16.98), controlPoint2: CGPoint(x: 37.32, y: 17.1))
        bezier2Path.addCurve(to: CGPoint(x: 37.57, y: 17.62), controlPoint1: CGPoint(x: 37.32, y: 17.44), controlPoint2: CGPoint(x: 37.42, y: 17.56))
        bezier2Path.addCurve(to: CGPoint(x: 38, y: 17.68), controlPoint1: CGPoint(x: 37.68, y: 17.66), controlPoint2: CGPoint(x: 37.81, y: 17.68))
        bezier2Path.addLine(to: CGPoint(x: 38.61, y: 17.69))
        bezier2Path.addCurve(to: CGPoint(x: 39.88, y: 18.09), controlPoint1: CGPoint(x: 39.22, y: 17.71), controlPoint2: CGPoint(x: 39.63, y: 17.82))
        bezier2Path.addCurve(to: CGPoint(x: 39.99, y: 18.21), controlPoint1: CGPoint(x: 39.93, y: 18.13), controlPoint2: CGPoint(x: 39.96, y: 18.17))
        bezier2Path.addLine(to: CGPoint(x: 39.99, y: 16.81))
        bezier2Path.addLine(to: CGPoint(x: 39.99, y: 16.81))
        bezier2Path.close()
        fillColor2.setFill()
        bezier2Path.fill()
        
        context.restoreGState()

    }

    @objc dynamic public class func drawDiners(frame targetFrame: CGRect = CGRect(x: 0, y: 0, width: 40, height: 28), resizing: ResizingBehavior = .aspectFit) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()!
        
        //// Resize to Target Frame
        context.saveGState()
        let resizedFrame: CGRect = resizing.apply(rect: CGRect(x: 0, y: 0, width: 40, height: 28), target: targetFrame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy(x: resizedFrame.width / 40, y: resizedFrame.height / 28)


        //// Color Declarations
        let fillColor2 = UIColor(red: 1.000, green: 1.000, blue: 1.000, alpha: 1.000)
        let fillColor3 = UIColor(red: 0.000, green: 0.475, blue: 0.745, alpha: 1.000)

        //// Group
        //// Bezier Drawing
        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: 2.05, y: 0))
        bezierPath.addLine(to: CGPoint(x: 37.95, y: 0))
        bezierPath.addCurve(to: CGPoint(x: 40, y: 2.24), controlPoint1: CGPoint(x: 39.08, y: 0), controlPoint2: CGPoint(x: 40, y: 1))
        bezierPath.addLine(to: CGPoint(x: 40, y: 25.76))
        bezierPath.addCurve(to: CGPoint(x: 37.95, y: 28), controlPoint1: CGPoint(x: 40, y: 27), controlPoint2: CGPoint(x: 39.08, y: 28))
        bezierPath.addLine(to: CGPoint(x: 2.05, y: 28))
        bezierPath.addCurve(to: CGPoint(x: 0, y: 25.76), controlPoint1: CGPoint(x: 0.92, y: 28), controlPoint2: CGPoint(x: 0, y: 27))
        bezierPath.addLine(to: CGPoint(x: 0, y: 2.24))
        bezierPath.addCurve(to: CGPoint(x: 2.05, y: 0), controlPoint1: CGPoint(x: 0, y: 1), controlPoint2: CGPoint(x: 0.92, y: 0))
        bezierPath.close()
        fillColor3.setFill()
        bezierPath.fill()


        //// Bezier 2 Drawing
        let bezier2Path = UIBezierPath()
        bezier2Path.move(to: CGPoint(x: 30.77, y: 14.08))
        bezier2Path.addCurve(to: CGPoint(x: 21.85, y: 4.67), controlPoint1: CGPoint(x: 30.77, y: 8.51), controlPoint2: CGPoint(x: 26.51, y: 4.67))
        bezier2Path.addLine(to: CGPoint(x: 17.84, y: 4.67))
        bezier2Path.addCurve(to: CGPoint(x: 9.23, y: 14.08), controlPoint1: CGPoint(x: 13.12, y: 4.67), controlPoint2: CGPoint(x: 9.23, y: 8.52))
        bezier2Path.addCurve(to: CGPoint(x: 17.84, y: 23.33), controlPoint1: CGPoint(x: 9.23, y: 19.17), controlPoint2: CGPoint(x: 13.12, y: 23.36))
        bezier2Path.addLine(to: CGPoint(x: 21.85, y: 23.33))
        bezier2Path.addCurve(to: CGPoint(x: 30.77, y: 14.08), controlPoint1: CGPoint(x: 26.51, y: 23.36), controlPoint2: CGPoint(x: 30.77, y: 19.17))
        bezier2Path.close()
        fillColor2.setFill()
        bezier2Path.fill()


        //// Oval Drawing
        let ovalPath = UIBezierPath(ovalIn: CGRect(x: 9.75, y: 5.11, width: 16.1, height: 17.5))
        fillColor3.setFill()
        ovalPath.fill()


        //// Bezier 3 Drawing
        let bezier3Path = UIBezierPath()
        bezier3Path.move(to: CGPoint(x: 12.93, y: 13.98))
        bezier3Path.addCurve(to: CGPoint(x: 16.1, y: 8.92), controlPoint1: CGPoint(x: 12.93, y: 11.67), controlPoint2: CGPoint(x: 14.25, y: 9.7))
        bezier3Path.addLine(to: CGPoint(x: 16.1, y: 19.03))
        bezier3Path.addCurve(to: CGPoint(x: 12.93, y: 13.98), controlPoint1: CGPoint(x: 14.25, y: 18.25), controlPoint2: CGPoint(x: 12.93, y: 16.28))
        bezier3Path.close()
        bezier3Path.move(to: CGPoint(x: 19.64, y: 19.03))
        bezier3Path.addLine(to: CGPoint(x: 19.64, y: 8.92))
        bezier3Path.addCurve(to: CGPoint(x: 22.82, y: 13.98), controlPoint1: CGPoint(x: 21.5, y: 9.7), controlPoint2: CGPoint(x: 22.82, y: 11.67))
        bezier3Path.addCurve(to: CGPoint(x: 19.64, y: 19.03), controlPoint1: CGPoint(x: 22.82, y: 16.29), controlPoint2: CGPoint(x: 21.5, y: 18.25))
        bezier3Path.addLine(to: CGPoint(x: 19.64, y: 19.03))
        bezier3Path.close()
        fillColor2.setFill()
        bezier3Path.fill()
        
        context.restoreGState()

    }

    @objc dynamic public class func drawDiscover(frame targetFrame: CGRect = CGRect(x: 0, y: 0, width: 40, height: 28), resizing: ResizingBehavior = .aspectFit) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()!
        
        //// Resize to Target Frame
        context.saveGState()
        let resizedFrame: CGRect = resizing.apply(rect: CGRect(x: 0, y: 0, width: 40, height: 28), target: targetFrame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy(x: resizedFrame.width / 40, y: resizedFrame.height / 28)


        //// Color Declarations
        let fillColor2 = UIColor(red: 1.000, green: 1.000, blue: 1.000, alpha: 1.000)
        let fillColor4 = UIColor(red: 0.302, green: 0.302, blue: 0.302, alpha: 1.000)
        let fillColor5 = UIColor(red: 0.957, green: 0.447, blue: 0.086, alpha: 1.000)

        //// Group
        //// Bezier Drawing
        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: 2.82, y: 0))
        bezierPath.addCurve(to: CGPoint(x: 0, y: 3.07), controlPoint1: CGPoint(x: 1.26, y: 0), controlPoint2: CGPoint(x: 0, y: 1.38))
        bezierPath.addLine(to: CGPoint(x: 0, y: 24.93))
        bezierPath.addCurve(to: CGPoint(x: 2.82, y: 28), controlPoint1: CGPoint(x: 0, y: 26.62), controlPoint2: CGPoint(x: 1.26, y: 28))
        bezierPath.addLine(to: CGPoint(x: 37.18, y: 28))
        bezierPath.addCurve(to: CGPoint(x: 40, y: 24.93), controlPoint1: CGPoint(x: 38.74, y: 28), controlPoint2: CGPoint(x: 40, y: 26.62))
        bezierPath.addLine(to: CGPoint(x: 40, y: 3.07))
        bezierPath.addCurve(to: CGPoint(x: 37.18, y: 0), controlPoint1: CGPoint(x: 40, y: 1.38), controlPoint2: CGPoint(x: 38.74, y: 0))
        bezierPath.addLine(to: CGPoint(x: 2.82, y: 0))
        bezierPath.close()
        bezierPath.usesEvenOddFillRule = true
        fillColor4.setFill()
        bezierPath.fill()


        //// Bezier 2 Drawing
        let bezier2Path = UIBezierPath()
        bezier2Path.move(to: CGPoint(x: 16.78, y: 9.05))
        bezier2Path.addCurve(to: CGPoint(x: 18.07, y: 9.39), controlPoint1: CGPoint(x: 17.23, y: 9.05), controlPoint2: CGPoint(x: 17.61, y: 9.15))
        bezier2Path.addLine(to: CGPoint(x: 18.07, y: 10.66))
        bezier2Path.addCurve(to: CGPoint(x: 16.75, y: 10.04), controlPoint1: CGPoint(x: 17.63, y: 10.22), controlPoint2: CGPoint(x: 17.25, y: 10.04))
        bezier2Path.addCurve(to: CGPoint(x: 14.99, y: 11.94), controlPoint1: CGPoint(x: 15.76, y: 10.04), controlPoint2: CGPoint(x: 14.99, y: 10.88))
        bezier2Path.addCurve(to: CGPoint(x: 16.8, y: 13.85), controlPoint1: CGPoint(x: 14.99, y: 13.06), controlPoint2: CGPoint(x: 15.74, y: 13.85))
        bezier2Path.addCurve(to: CGPoint(x: 18.07, y: 13.24), controlPoint1: CGPoint(x: 17.28, y: 13.85), controlPoint2: CGPoint(x: 17.65, y: 13.68))
        bezier2Path.addLine(to: CGPoint(x: 18.07, y: 14.52))
        bezier2Path.addCurve(to: CGPoint(x: 16.75, y: 14.84), controlPoint1: CGPoint(x: 17.59, y: 14.75), controlPoint2: CGPoint(x: 17.21, y: 14.84))
        bezier2Path.addCurve(to: CGPoint(x: 13.9, y: 11.95), controlPoint1: CGPoint(x: 15.15, y: 14.84), controlPoint2: CGPoint(x: 13.9, y: 13.58))
        bezier2Path.addCurve(to: CGPoint(x: 16.78, y: 9.05), controlPoint1: CGPoint(x: 13.9, y: 10.34), controlPoint2: CGPoint(x: 15.18, y: 9.05))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 11.8, y: 9.08))
        bezier2Path.addCurve(to: CGPoint(x: 13.38, y: 9.7), controlPoint1: CGPoint(x: 12.39, y: 9.08), controlPoint2: CGPoint(x: 12.93, y: 9.29))
        bezier2Path.addLine(to: CGPoint(x: 12.83, y: 10.44))
        bezier2Path.addCurve(to: CGPoint(x: 11.98, y: 9.99), controlPoint1: CGPoint(x: 12.56, y: 10.12), controlPoint2: CGPoint(x: 12.3, y: 9.99))
        bezier2Path.addCurve(to: CGPoint(x: 11.2, y: 10.6), controlPoint1: CGPoint(x: 11.53, y: 9.99), controlPoint2: CGPoint(x: 11.2, y: 10.25))
        bezier2Path.addCurve(to: CGPoint(x: 12.02, y: 11.3), controlPoint1: CGPoint(x: 11.2, y: 10.9), controlPoint2: CGPoint(x: 11.38, y: 11.06))
        bezier2Path.addCurve(to: CGPoint(x: 13.57, y: 13.03), controlPoint1: CGPoint(x: 13.21, y: 11.75), controlPoint2: CGPoint(x: 13.57, y: 12.15))
        bezier2Path.addCurve(to: CGPoint(x: 11.71, y: 14.85), controlPoint1: CGPoint(x: 13.57, y: 14.1), controlPoint2: CGPoint(x: 12.8, y: 14.85))
        bezier2Path.addCurve(to: CGPoint(x: 9.84, y: 13.79), controlPoint1: CGPoint(x: 10.91, y: 14.85), controlPoint2: CGPoint(x: 10.32, y: 14.52))
        bezier2Path.addLine(to: CGPoint(x: 10.52, y: 13.12))
        bezier2Path.addCurve(to: CGPoint(x: 11.67, y: 13.86), controlPoint1: CGPoint(x: 10.76, y: 13.6), controlPoint2: CGPoint(x: 11.16, y: 13.86))
        bezier2Path.addCurve(to: CGPoint(x: 12.49, y: 13.08), controlPoint1: CGPoint(x: 12.14, y: 13.86), controlPoint2: CGPoint(x: 12.49, y: 13.53))
        bezier2Path.addCurve(to: CGPoint(x: 12.17, y: 12.51), controlPoint1: CGPoint(x: 12.49, y: 12.85), controlPoint2: CGPoint(x: 12.38, y: 12.65))
        bezier2Path.addCurve(to: CGPoint(x: 11.44, y: 12.19), controlPoint1: CGPoint(x: 12.06, y: 12.44), controlPoint2: CGPoint(x: 11.85, y: 12.34))
        bezier2Path.addCurve(to: CGPoint(x: 10.11, y: 10.67), controlPoint1: CGPoint(x: 10.45, y: 11.82), controlPoint2: CGPoint(x: 10.11, y: 11.43))
        bezier2Path.addCurve(to: CGPoint(x: 11.8, y: 9.08), controlPoint1: CGPoint(x: 10.11, y: 9.76), controlPoint2: CGPoint(x: 10.84, y: 9.08))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 23.83, y: 9.18))
        bezier2Path.addLine(to: CGPoint(x: 24.98, y: 9.18))
        bezier2Path.addLine(to: CGPoint(x: 26.42, y: 12.9))
        bezier2Path.addLine(to: CGPoint(x: 27.88, y: 9.18))
        bezier2Path.addLine(to: CGPoint(x: 29.03, y: 9.18))
        bezier2Path.addLine(to: CGPoint(x: 26.69, y: 14.86))
        bezier2Path.addLine(to: CGPoint(x: 26.13, y: 14.86))
        bezier2Path.addLine(to: CGPoint(x: 23.83, y: 9.18))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 3.46, y: 9.19))
        bezier2Path.addLine(to: CGPoint(x: 5, y: 9.19))
        bezier2Path.addCurve(to: CGPoint(x: 7.9, y: 11.96), controlPoint1: CGPoint(x: 6.71, y: 9.19), controlPoint2: CGPoint(x: 7.9, y: 10.33))
        bezier2Path.addCurve(to: CGPoint(x: 6.92, y: 14.09), controlPoint1: CGPoint(x: 7.9, y: 12.78), controlPoint2: CGPoint(x: 7.54, y: 13.57))
        bezier2Path.addCurve(to: CGPoint(x: 5, y: 14.73), controlPoint1: CGPoint(x: 6.4, y: 14.53), controlPoint2: CGPoint(x: 5.81, y: 14.73))
        bezier2Path.addLine(to: CGPoint(x: 3.46, y: 14.73))
        bezier2Path.addLine(to: CGPoint(x: 3.46, y: 9.19))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 8.39, y: 9.19))
        bezier2Path.addLine(to: CGPoint(x: 9.44, y: 9.19))
        bezier2Path.addLine(to: CGPoint(x: 9.44, y: 14.73))
        bezier2Path.addLine(to: CGPoint(x: 8.39, y: 14.73))
        bezier2Path.addLine(to: CGPoint(x: 8.39, y: 9.19))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 29.5, y: 9.19))
        bezier2Path.addLine(to: CGPoint(x: 32.49, y: 9.19))
        bezier2Path.addLine(to: CGPoint(x: 32.49, y: 10.13))
        bezier2Path.addLine(to: CGPoint(x: 30.55, y: 10.13))
        bezier2Path.addLine(to: CGPoint(x: 30.55, y: 11.36))
        bezier2Path.addLine(to: CGPoint(x: 32.42, y: 11.36))
        bezier2Path.addLine(to: CGPoint(x: 32.42, y: 12.3))
        bezier2Path.addLine(to: CGPoint(x: 30.55, y: 12.3))
        bezier2Path.addLine(to: CGPoint(x: 30.55, y: 13.79))
        bezier2Path.addLine(to: CGPoint(x: 32.49, y: 13.79))
        bezier2Path.addLine(to: CGPoint(x: 32.49, y: 14.73))
        bezier2Path.addLine(to: CGPoint(x: 29.5, y: 14.73))
        bezier2Path.addLine(to: CGPoint(x: 29.5, y: 9.19))
        bezier2Path.addLine(to: CGPoint(x: 29.5, y: 9.19))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 33.19, y: 9.19))
        bezier2Path.addLine(to: CGPoint(x: 34.75, y: 9.19))
        bezier2Path.addCurve(to: CGPoint(x: 36.66, y: 10.82), controlPoint1: CGPoint(x: 35.96, y: 9.19), controlPoint2: CGPoint(x: 36.66, y: 9.79))
        bezier2Path.addCurve(to: CGPoint(x: 35.43, y: 12.39), controlPoint1: CGPoint(x: 36.66, y: 11.67), controlPoint2: CGPoint(x: 36.22, y: 12.23))
        bezier2Path.addLine(to: CGPoint(x: 37.13, y: 14.73))
        bezier2Path.addLine(to: CGPoint(x: 35.83, y: 14.73))
        bezier2Path.addLine(to: CGPoint(x: 34.38, y: 12.5))
        bezier2Path.addLine(to: CGPoint(x: 34.24, y: 12.5))
        bezier2Path.addLine(to: CGPoint(x: 34.24, y: 14.73))
        bezier2Path.addLine(to: CGPoint(x: 33.19, y: 14.73))
        bezier2Path.addLine(to: CGPoint(x: 33.19, y: 9.19))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 34.24, y: 10.06))
        bezier2Path.addLine(to: CGPoint(x: 34.24, y: 11.74))
        bezier2Path.addLine(to: CGPoint(x: 34.55, y: 11.74))
        bezier2Path.addCurve(to: CGPoint(x: 35.58, y: 10.88), controlPoint1: CGPoint(x: 35.22, y: 11.74), controlPoint2: CGPoint(x: 35.58, y: 11.44))
        bezier2Path.addCurve(to: CGPoint(x: 34.56, y: 10.06), controlPoint1: CGPoint(x: 35.58, y: 10.34), controlPoint2: CGPoint(x: 35.22, y: 10.06))
        bezier2Path.addLine(to: CGPoint(x: 34.24, y: 10.06))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 4.51, y: 10.13))
        bezier2Path.addLine(to: CGPoint(x: 4.51, y: 13.79))
        bezier2Path.addLine(to: CGPoint(x: 4.79, y: 13.79))
        bezier2Path.addCurve(to: CGPoint(x: 6.23, y: 13.35), controlPoint1: CGPoint(x: 5.47, y: 13.79), controlPoint2: CGPoint(x: 5.9, y: 13.66))
        bezier2Path.addCurve(to: CGPoint(x: 6.82, y: 11.95), controlPoint1: CGPoint(x: 6.6, y: 13.02), controlPoint2: CGPoint(x: 6.82, y: 12.49))
        bezier2Path.addCurve(to: CGPoint(x: 6.23, y: 10.58), controlPoint1: CGPoint(x: 6.82, y: 11.42), controlPoint2: CGPoint(x: 6.6, y: 10.91))
        bezier2Path.addCurve(to: CGPoint(x: 4.79, y: 10.13), controlPoint1: CGPoint(x: 5.89, y: 10.25), controlPoint2: CGPoint(x: 5.47, y: 10.13))
        bezier2Path.addLine(to: CGPoint(x: 4.51, y: 10.13))
        bezier2Path.close()
        bezier2Path.usesEvenOddFillRule = true
        fillColor2.setFill()
        bezier2Path.fill()


        //// Bezier 3 Drawing
        let bezier3Path = UIBezierPath()
        bezier3Path.move(to: CGPoint(x: 21.29, y: 9.01))
        bezier3Path.addCurve(to: CGPoint(x: 24.16, y: 11.96), controlPoint1: CGPoint(x: 22.88, y: 9.01), controlPoint2: CGPoint(x: 24.16, y: 10.33))
        bezier3Path.addLine(to: CGPoint(x: 24.16, y: 11.96))
        bezier3Path.addCurve(to: CGPoint(x: 21.29, y: 14.9), controlPoint1: CGPoint(x: 24.16, y: 13.59), controlPoint2: CGPoint(x: 22.88, y: 14.9))
        bezier3Path.addCurve(to: CGPoint(x: 18.42, y: 11.96), controlPoint1: CGPoint(x: 19.7, y: 14.9), controlPoint2: CGPoint(x: 18.42, y: 13.59))
        bezier3Path.addLine(to: CGPoint(x: 18.42, y: 11.96))
        bezier3Path.addCurve(to: CGPoint(x: 21.29, y: 9.01), controlPoint1: CGPoint(x: 18.42, y: 10.33), controlPoint2: CGPoint(x: 19.7, y: 9.01))
        bezier3Path.close()
        bezier3Path.move(to: CGPoint(x: 40, y: 16.12))
        bezier3Path.addCurve(to: CGPoint(x: 11.35, y: 28), controlPoint1: CGPoint(x: 38.66, y: 17.14), controlPoint2: CGPoint(x: 28.66, y: 24.46))
        bezier3Path.addLine(to: CGPoint(x: 37.18, y: 28))
        bezier3Path.addCurve(to: CGPoint(x: 40, y: 24.92), controlPoint1: CGPoint(x: 38.74, y: 28), controlPoint2: CGPoint(x: 40, y: 26.62))
        bezier3Path.addLine(to: CGPoint(x: 40, y: 16.12))
        bezier3Path.addLine(to: CGPoint(x: 40, y: 16.12))
        bezier3Path.close()
        bezier3Path.usesEvenOddFillRule = true
        fillColor5.setFill()
        bezier3Path.fill()
        
        context.restoreGState()

    }

    @objc dynamic public class func drawUnknown(frame targetFrame: CGRect = CGRect(x: 0, y: 0, width: 40, height: 28), resizing: ResizingBehavior = .aspectFit) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()!
        
        //// Resize to Target Frame
        context.saveGState()
        let resizedFrame: CGRect = resizing.apply(rect: CGRect(x: 0, y: 0, width: 40, height: 28), target: targetFrame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy(x: resizedFrame.width / 40, y: resizedFrame.height / 28)


        //// Color Declarations
        let fillColor6 = UIColor(red: 0.717, green: 0.717, blue: 0.717, alpha: 1.000)
        let fillColor7 = UIColor(red: 0.000, green: 0.000, blue: 0.000, alpha: 1.000)
        let color = UIColor(red: 1.000, green: 1.000, blue: 1.000, alpha: 1.000)
        let color2 = UIColor(red: 0.823, green: 0.818, blue: 0.818, alpha: 1.000)

        //// Group
        //// box Drawing
        let boxPath = UIBezierPath()
        boxPath.move(to: CGPoint(x: 2.05, y: 0))
        boxPath.addLine(to: CGPoint(x: 37.95, y: 0))
        boxPath.addCurve(to: CGPoint(x: 40, y: 2.24), controlPoint1: CGPoint(x: 39.08, y: 0), controlPoint2: CGPoint(x: 40, y: 1))
        boxPath.addLine(to: CGPoint(x: 40, y: 25.76))
        boxPath.addCurve(to: CGPoint(x: 37.95, y: 28), controlPoint1: CGPoint(x: 40, y: 27), controlPoint2: CGPoint(x: 39.08, y: 28))
        boxPath.addLine(to: CGPoint(x: 2.05, y: 28))
        boxPath.addCurve(to: CGPoint(x: 0, y: 25.76), controlPoint1: CGPoint(x: 0.92, y: 28), controlPoint2: CGPoint(x: 0, y: 27))
        boxPath.addLine(to: CGPoint(x: 0, y: 2.24))
        boxPath.addCurve(to: CGPoint(x: 2.05, y: 0), controlPoint1: CGPoint(x: 0, y: 1), controlPoint2: CGPoint(x: 0.92, y: 0))
        boxPath.close()
        fillColor6.setFill()
        boxPath.fill()


        //// Rectangle 3 Drawing
        let rectangle3Path = UIBezierPath(rect: CGRect(x: 0, y: 4.91, width: 40, height: 5.68))
        fillColor7.setFill()
        rectangle3Path.fill()


        //// Rectangle Drawing
        let rectanglePath = UIBezierPath(rect: CGRect(x: 0, y: 12, width: 40, height: 5))
        color.setFill()
        rectanglePath.fill()


        //// Rectangle 2 Drawing
        let rectangle2Path = UIBezierPath(rect: CGRect(x: 0, y: 19, width: 40, height: 4))
        color2.setFill()
        rectangle2Path.fill()
        
        context.restoreGState()

    }

    @objc dynamic public class func drawJcb(frame targetFrame: CGRect = CGRect(x: 0, y: 0, width: 40, height: 28), resizing: ResizingBehavior = .aspectFit) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()!
        
        //// Resize to Target Frame
        context.saveGState()
        let resizedFrame: CGRect = resizing.apply(rect: CGRect(x: 0, y: 0, width: 40, height: 28), target: targetFrame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy(x: resizedFrame.width / 40, y: resizedFrame.height / 28)


        //// Color Declarations
        let fillColor2 = UIColor(red: 1.000, green: 1.000, blue: 1.000, alpha: 1.000)
        let gradientColor = UIColor(red: 0.114, green: 0.161, blue: 0.439, alpha: 1.000)
        let gradientColor2 = UIColor(red: 0.000, green: 0.427, blue: 0.729, alpha: 1.000)
        let gradientColor3 = UIColor(red: 0.000, green: 0.482, blue: 0.251, alpha: 1.000)
        let gradientColor4 = UIColor(red: 0.333, green: 0.702, blue: 0.188, alpha: 1.000)
        let gradientColor5 = UIColor(red: 0.431, green: 0.169, blue: 0.184, alpha: 1.000)
        let gradientColor6 = UIColor(red: 0.890, green: 0.004, blue: 0.220, alpha: 1.000)
        let fillColor9 = UIColor(red: 0.055, green: 0.298, blue: 0.588, alpha: 1.000)

        //// Gradient Declarations
        let b = CGGradient(colorsSpace: nil, colors: [gradientColor.cgColor, gradientColor2.cgColor] as CFArray, locations: [0, 1])!
        let c = CGGradient(colorsSpace: nil, colors: [gradientColor3.cgColor, gradientColor4.cgColor] as CFArray, locations: [0, 1])!
        let a = CGGradient(colorsSpace: nil, colors: [gradientColor5.cgColor, gradientColor6.cgColor] as CFArray, locations: [0, 1])!

        //// Group
        //// Bezier Drawing
        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: 2.05, y: 0))
        bezierPath.addLine(to: CGPoint(x: 37.95, y: 0))
        bezierPath.addCurve(to: CGPoint(x: 40, y: 2.24), controlPoint1: CGPoint(x: 39.08, y: 0), controlPoint2: CGPoint(x: 40, y: 1))
        bezierPath.addLine(to: CGPoint(x: 40, y: 25.76))
        bezierPath.addCurve(to: CGPoint(x: 37.95, y: 28), controlPoint1: CGPoint(x: 40, y: 27), controlPoint2: CGPoint(x: 39.08, y: 28))
        bezierPath.addLine(to: CGPoint(x: 2.05, y: 28))
        bezierPath.addCurve(to: CGPoint(x: 0, y: 25.76), controlPoint1: CGPoint(x: 0.92, y: 28), controlPoint2: CGPoint(x: 0, y: 27))
        bezierPath.addLine(to: CGPoint(x: 0, y: 2.24))
        bezierPath.addCurve(to: CGPoint(x: 2.05, y: 0), controlPoint1: CGPoint(x: 0, y: 1), controlPoint2: CGPoint(x: 0.92, y: 0))
        bezierPath.close()
        fillColor9.setFill()
        bezierPath.fill()


        //// Bezier 2 Drawing
        let bezier2Path = UIBezierPath()
        bezier2Path.move(to: CGPoint(x: 32.42, y: 20.23))
        bezier2Path.addCurve(to: CGPoint(x: 28.56, y: 24.45), controlPoint1: CGPoint(x: 32.42, y: 22.56), controlPoint2: CGPoint(x: 30.69, y: 24.45))
        bezier2Path.addLine(to: CGPoint(x: 7.58, y: 24.45))
        bezier2Path.addLine(to: CGPoint(x: 7.58, y: 7.77))
        bezier2Path.addCurve(to: CGPoint(x: 11.44, y: 3.55), controlPoint1: CGPoint(x: 7.58, y: 5.44), controlPoint2: CGPoint(x: 9.31, y: 3.55))
        bezier2Path.addLine(to: CGPoint(x: 32.42, y: 3.55))
        bezier2Path.addLine(to: CGPoint(x: 32.42, y: 20.23))
        bezier2Path.addLine(to: CGPoint(x: 32.42, y: 20.23))
        bezier2Path.close()
        fillColor2.setFill()
        bezier2Path.fill()


        //// Bezier 3 Drawing
        let bezier3Path = UIBezierPath()
        bezier3Path.move(to: CGPoint(x: 25.58, y: 14.37))
        bezier3Path.addCurve(to: CGPoint(x: 27.38, y: 14.39), controlPoint1: CGPoint(x: 26.18, y: 14.38), controlPoint2: CGPoint(x: 26.78, y: 14.34))
        bezier3Path.addCurve(to: CGPoint(x: 27.59, y: 15.84), controlPoint1: CGPoint(x: 27.99, y: 14.51), controlPoint2: CGPoint(x: 28.13, y: 15.51))
        bezier3Path.addCurve(to: CGPoint(x: 26.4, y: 15.96), controlPoint1: CGPoint(x: 27.23, y: 16.05), controlPoint2: CGPoint(x: 26.79, y: 15.92))
        bezier3Path.addLine(to: CGPoint(x: 25.58, y: 15.96))
        bezier3Path.addLine(to: CGPoint(x: 25.58, y: 14.37))
        bezier3Path.close()
        bezier3Path.move(to: CGPoint(x: 27.73, y: 12.57))
        bezier3Path.addCurve(to: CGPoint(x: 26.96, y: 13.47), controlPoint1: CGPoint(x: 27.86, y: 13.08), controlPoint2: CGPoint(x: 27.41, y: 13.54))
        bezier3Path.addLine(to: CGPoint(x: 25.58, y: 13.47))
        bezier3Path.addCurve(to: CGPoint(x: 25.6, y: 12), controlPoint1: CGPoint(x: 25.59, y: 12.99), controlPoint2: CGPoint(x: 25.56, y: 12.46))
        bezier3Path.addCurve(to: CGPoint(x: 27.25, y: 12.03), controlPoint1: CGPoint(x: 26.15, y: 12.02), controlPoint2: CGPoint(x: 26.7, y: 11.97))
        bezier3Path.addCurve(to: CGPoint(x: 27.73, y: 12.57), controlPoint1: CGPoint(x: 27.48, y: 12.09), controlPoint2: CGPoint(x: 27.68, y: 12.3))
        bezier3Path.close()
        bezier3Path.move(to: CGPoint(x: 31.03, y: 4.96))
        bezier3Path.addCurve(to: CGPoint(x: 31.04, y: 7.97), controlPoint1: CGPoint(x: 31.06, y: 5.94), controlPoint2: CGPoint(x: 31.04, y: 6.97))
        bezier3Path.addCurve(to: CGPoint(x: 31.04, y: 20.16), controlPoint1: CGPoint(x: 31.04, y: 12.03), controlPoint2: CGPoint(x: 31.05, y: 16.1))
        bezier3Path.addCurve(to: CGPoint(x: 28.39, y: 23.04), controlPoint1: CGPoint(x: 31.02, y: 21.69), controlPoint2: CGPoint(x: 29.78, y: 23.01))
        bezier3Path.addCurve(to: CGPoint(x: 24.23, y: 23.04), controlPoint1: CGPoint(x: 27.01, y: 23.05), controlPoint2: CGPoint(x: 25.62, y: 23.04))
        bezier3Path.addLine(to: CGPoint(x: 24.23, y: 16.9))
        bezier3Path.addCurve(to: CGPoint(x: 28.77, y: 16.89), controlPoint1: CGPoint(x: 25.74, y: 16.89), controlPoint2: CGPoint(x: 27.26, y: 16.92))
        bezier3Path.addCurve(to: CGPoint(x: 30.27, y: 15.49), controlPoint1: CGPoint(x: 29.47, y: 16.84), controlPoint2: CGPoint(x: 30.24, y: 16.33))
        bezier3Path.addCurve(to: CGPoint(x: 28.93, y: 13.97), controlPoint1: CGPoint(x: 30.35, y: 14.64), controlPoint2: CGPoint(x: 29.62, y: 14.06))
        bezier3Path.addCurve(to: CGPoint(x: 28.93, y: 13.85), controlPoint1: CGPoint(x: 28.66, y: 13.96), controlPoint2: CGPoint(x: 28.67, y: 13.88))
        bezier3Path.addCurve(to: CGPoint(x: 29.91, y: 12.2), controlPoint1: CGPoint(x: 29.59, y: 13.69), controlPoint2: CGPoint(x: 30.11, y: 12.94))
        bezier3Path.addCurve(to: CGPoint(x: 28.29, y: 11.11), controlPoint1: CGPoint(x: 29.75, y: 11.41), controlPoint2: CGPoint(x: 28.95, y: 11.1))
        bezier3Path.addCurve(to: CGPoint(x: 24.23, y: 11.1), controlPoint1: CGPoint(x: 26.94, y: 11.1), controlPoint2: CGPoint(x: 25.58, y: 11.1))
        bezier3Path.addCurve(to: CGPoint(x: 24.25, y: 7.66), controlPoint1: CGPoint(x: 24.24, y: 9.95), controlPoint2: CGPoint(x: 24.21, y: 8.81))
        bezier3Path.addCurve(to: CGPoint(x: 26.99, y: 4.96), controlPoint1: CGPoint(x: 24.35, y: 6.16), controlPoint2: CGPoint(x: 25.62, y: 4.93))
        bezier3Path.addLine(to: CGPoint(x: 31.03, y: 4.96))
        bezier3Path.addLine(to: CGPoint(x: 31.03, y: 4.96))
        bezier3Path.close()
        context.saveGState()
        bezier3Path.addClip()
        context.drawLinearGradient(c,
            start: CGPoint(x: 24.21, y: 14.03),
            end: CGPoint(x: 31.02, y: 14.03),
            options: [.drawsBeforeStartLocation, .drawsAfterEndLocation])
        context.restoreGState()


        //// Bezier 4 Drawing
        let bezier4Path = UIBezierPath()
        bezier4Path.move(to: CGPoint(x: 8.96, y: 7.81))
        bezier4Path.addCurve(to: CGPoint(x: 11.62, y: 4.96), controlPoint1: CGPoint(x: 9, y: 6.29), controlPoint2: CGPoint(x: 10.24, y: 4.98))
        bezier4Path.addCurve(to: CGPoint(x: 15.77, y: 4.96), controlPoint1: CGPoint(x: 13, y: 4.95), controlPoint2: CGPoint(x: 14.38, y: 4.96))
        bezier4Path.addCurve(to: CGPoint(x: 15.76, y: 20.22), controlPoint1: CGPoint(x: 15.76, y: 10.05), controlPoint2: CGPoint(x: 15.77, y: 15.14))
        bezier4Path.addCurve(to: CGPoint(x: 13.11, y: 23.04), controlPoint1: CGPoint(x: 15.71, y: 21.73), controlPoint2: CGPoint(x: 14.48, y: 23.02))
        bezier4Path.addCurve(to: CGPoint(x: 8.96, y: 23.04), controlPoint1: CGPoint(x: 11.73, y: 23.05), controlPoint2: CGPoint(x: 10.34, y: 23.04))
        bezier4Path.addLine(to: CGPoint(x: 8.96, y: 16.69))
        bezier4Path.addCurve(to: CGPoint(x: 13.08, y: 16.96), controlPoint1: CGPoint(x: 10.3, y: 17.04), controlPoint2: CGPoint(x: 11.71, y: 17.19))
        bezier4Path.addCurve(to: CGPoint(x: 15.08, y: 15.44), controlPoint1: CGPoint(x: 13.9, y: 16.81), controlPoint2: CGPoint(x: 14.8, y: 16.37))
        bezier4Path.addCurve(to: CGPoint(x: 15.2, y: 13), controlPoint1: CGPoint(x: 15.28, y: 14.65), controlPoint2: CGPoint(x: 15.17, y: 13.81))
        bezier4Path.addLine(to: CGPoint(x: 15.2, y: 11.1))
        bezier4Path.addLine(to: CGPoint(x: 12.82, y: 11.1))
        bezier4Path.addCurve(to: CGPoint(x: 12.81, y: 14.86), controlPoint1: CGPoint(x: 12.81, y: 12.35), controlPoint2: CGPoint(x: 12.85, y: 13.61))
        bezier4Path.addCurve(to: CGPoint(x: 11.38, y: 16.09), controlPoint1: CGPoint(x: 12.74, y: 15.63), controlPoint2: CGPoint(x: 12.05, y: 16.12))
        bezier4Path.addCurve(to: CGPoint(x: 8.93, y: 15.44), controlPoint1: CGPoint(x: 10.56, y: 16.1), controlPoint2: CGPoint(x: 8.93, y: 15.44))
        bezier4Path.addCurve(to: CGPoint(x: 8.96, y: 7.81), controlPoint1: CGPoint(x: 8.92, y: 13.09), controlPoint2: CGPoint(x: 8.95, y: 10.15))
        bezier4Path.addLine(to: CGPoint(x: 8.96, y: 7.81))
        bezier4Path.close()
        context.saveGState()
        bezier4Path.addClip()
        context.drawLinearGradient(b,
            start: CGPoint(x: 8.97, y: 14.03),
            end: CGPoint(x: 15.78, y: 14.03),
            options: [.drawsBeforeStartLocation, .drawsAfterEndLocation])
        context.restoreGState()


        //// Bezier 5 Drawing
        let bezier5Path = UIBezierPath()
        bezier5Path.move(to: CGPoint(x: 16.65, y: 11.87))
        bezier5Path.addCurve(to: CGPoint(x: 16.6, y: 11.21), controlPoint1: CGPoint(x: 16.53, y: 11.89), controlPoint2: CGPoint(x: 16.63, y: 11.4))
        bezier5Path.addCurve(to: CGPoint(x: 16.61, y: 7.66), controlPoint1: CGPoint(x: 16.6, y: 10.03), controlPoint2: CGPoint(x: 16.58, y: 8.84))
        bezier5Path.addCurve(to: CGPoint(x: 19.37, y: 4.96), controlPoint1: CGPoint(x: 16.72, y: 6.16), controlPoint2: CGPoint(x: 17.99, y: 4.92))
        bezier5Path.addLine(to: CGPoint(x: 23.4, y: 4.96))
        bezier5Path.addCurve(to: CGPoint(x: 23.4, y: 20.22), controlPoint1: CGPoint(x: 23.4, y: 10.05), controlPoint2: CGPoint(x: 23.41, y: 15.14))
        bezier5Path.addCurve(to: CGPoint(x: 20.75, y: 23.04), controlPoint1: CGPoint(x: 23.35, y: 21.73), controlPoint2: CGPoint(x: 22.12, y: 23.02))
        bezier5Path.addCurve(to: CGPoint(x: 16.6, y: 23.04), controlPoint1: CGPoint(x: 19.36, y: 23.05), controlPoint2: CGPoint(x: 17.98, y: 23.04))
        bezier5Path.addLine(to: CGPoint(x: 16.6, y: 16.08))
        bezier5Path.addCurve(to: CGPoint(x: 20, y: 17.07), controlPoint1: CGPoint(x: 17.54, y: 16.93), controlPoint2: CGPoint(x: 18.83, y: 17.06))
        bezier5Path.addCurve(to: CGPoint(x: 22.64, y: 16.69), controlPoint1: CGPoint(x: 20.89, y: 17.06), controlPoint2: CGPoint(x: 21.78, y: 16.92))
        bezier5Path.addLine(to: CGPoint(x: 22.64, y: 15.42))
        bezier5Path.addCurve(to: CGPoint(x: 19.45, y: 15.98), controlPoint1: CGPoint(x: 21.67, y: 15.95), controlPoint2: CGPoint(x: 20.52, y: 16.28))
        bezier5Path.addCurve(to: CGPoint(x: 18.16, y: 14.13), controlPoint1: CGPoint(x: 18.69, y: 15.77), controlPoint2: CGPoint(x: 18.15, y: 14.98))
        bezier5Path.addCurve(to: CGPoint(x: 19.34, y: 12.06), controlPoint1: CGPoint(x: 18.07, y: 13.25), controlPoint2: CGPoint(x: 18.55, y: 12.32))
        bezier5Path.addCurve(to: CGPoint(x: 22.32, y: 12.42), controlPoint1: CGPoint(x: 20.32, y: 11.72), controlPoint2: CGPoint(x: 21.4, y: 11.98))
        bezier5Path.addCurve(to: CGPoint(x: 22.64, y: 12.31), controlPoint1: CGPoint(x: 22.52, y: 12.53), controlPoint2: CGPoint(x: 22.72, y: 12.67))
        bezier5Path.addLine(to: CGPoint(x: 22.64, y: 11.31))
        bezier5Path.addCurve(to: CGPoint(x: 17.9, y: 11.2), controlPoint1: CGPoint(x: 21.09, y: 10.91), controlPoint2: CGPoint(x: 19.45, y: 10.76))
        bezier5Path.addCurve(to: CGPoint(x: 16.65, y: 11.87), controlPoint1: CGPoint(x: 17.45, y: 11.33), controlPoint2: CGPoint(x: 17.02, y: 11.54))
        bezier5Path.addLine(to: CGPoint(x: 16.65, y: 11.87))
        bezier5Path.close()
        context.saveGState()
        bezier5Path.addClip()
        context.drawLinearGradient(a,
            start: CGPoint(x: 16.6, y: 14.23),
            end: CGPoint(x: 23.41, y: 14.23),
            options: [.drawsBeforeStartLocation, .drawsAfterEndLocation])
        context.restoreGState()
        
        context.restoreGState()

    }

    @objc dynamic public class func drawVisa(frame targetFrame: CGRect = CGRect(x: 0, y: 0, width: 40, height: 28), resizing: ResizingBehavior = .aspectFit) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()!
        
        //// Resize to Target Frame
        context.saveGState()
        let resizedFrame: CGRect = resizing.apply(rect: CGRect(x: 0, y: 0, width: 40, height: 28), target: targetFrame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy(x: resizedFrame.width / 40, y: resizedFrame.height / 28)


        //// Color Declarations
        let fillColor2 = UIColor(red: 1.000, green: 1.000, blue: 1.000, alpha: 1.000)
        let fillColor15 = UIColor(red: 0.055, green: 0.271, blue: 0.584, alpha: 1.000)
        let fillColor16 = UIColor(red: 0.949, green: 0.682, blue: 0.078, alpha: 1.000)

        //// Group
        //// Bezier Drawing
        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: 2.05, y: 0))
        bezierPath.addLine(to: CGPoint(x: 37.95, y: 0))
        bezierPath.addCurve(to: CGPoint(x: 40, y: 2.24), controlPoint1: CGPoint(x: 39.08, y: 0), controlPoint2: CGPoint(x: 40, y: 1))
        bezierPath.addLine(to: CGPoint(x: 40, y: 25.76))
        bezierPath.addCurve(to: CGPoint(x: 37.95, y: 28), controlPoint1: CGPoint(x: 40, y: 27), controlPoint2: CGPoint(x: 39.08, y: 28))
        bezierPath.addLine(to: CGPoint(x: 2.05, y: 28))
        bezierPath.addCurve(to: CGPoint(x: 0, y: 25.76), controlPoint1: CGPoint(x: 0.92, y: 28), controlPoint2: CGPoint(x: 0, y: 27))
        bezierPath.addLine(to: CGPoint(x: 0, y: 2.24))
        bezierPath.addCurve(to: CGPoint(x: 2.05, y: 0), controlPoint1: CGPoint(x: 0, y: 1), controlPoint2: CGPoint(x: 0.92, y: 0))
        bezierPath.close()
        fillColor15.setFill()
        bezierPath.fill()


        //// Bezier 2 Drawing
        let bezier2Path = UIBezierPath()
        bezier2Path.move(to: CGPoint(x: 15.04, y: 19.53))
        bezier2Path.addLine(to: CGPoint(x: 16.75, y: 8.57))
        bezier2Path.addLine(to: CGPoint(x: 19.48, y: 8.57))
        bezier2Path.addLine(to: CGPoint(x: 17.77, y: 19.53))
        bezier2Path.addLine(to: CGPoint(x: 15.04, y: 19.53))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 27.66, y: 8.8))
        bezier2Path.addCurve(to: CGPoint(x: 25.2, y: 8.34), controlPoint1: CGPoint(x: 27.11, y: 8.58), controlPoint2: CGPoint(x: 26.27, y: 8.34))
        bezier2Path.addCurve(to: CGPoint(x: 20.58, y: 11.96), controlPoint1: CGPoint(x: 22.5, y: 8.34), controlPoint2: CGPoint(x: 20.6, y: 9.83))
        bezier2Path.addCurve(to: CGPoint(x: 22.98, y: 14.94), controlPoint1: CGPoint(x: 20.56, y: 13.54), controlPoint2: CGPoint(x: 21.94, y: 14.41))
        bezier2Path.addCurve(to: CGPoint(x: 24.4, y: 16.3), controlPoint1: CGPoint(x: 24.04, y: 15.48), controlPoint2: CGPoint(x: 24.4, y: 15.82))
        bezier2Path.addCurve(to: CGPoint(x: 22.76, y: 17.37), controlPoint1: CGPoint(x: 24.39, y: 17.03), controlPoint2: CGPoint(x: 23.55, y: 17.37))
        bezier2Path.addCurve(to: CGPoint(x: 20.18, y: 16.79), controlPoint1: CGPoint(x: 21.66, y: 17.37), controlPoint2: CGPoint(x: 21.08, y: 17.2))
        bezier2Path.addLine(to: CGPoint(x: 19.83, y: 16.62))
        bezier2Path.addLine(to: CGPoint(x: 19.45, y: 19.07))
        bezier2Path.addCurve(to: CGPoint(x: 22.49, y: 19.66), controlPoint1: CGPoint(x: 20.09, y: 19.38), controlPoint2: CGPoint(x: 21.27, y: 19.64))
        bezier2Path.addCurve(to: CGPoint(x: 27.26, y: 15.91), controlPoint1: CGPoint(x: 25.37, y: 19.66), controlPoint2: CGPoint(x: 27.24, y: 18.19))
        bezier2Path.addCurve(to: CGPoint(x: 24.96, y: 12.93), controlPoint1: CGPoint(x: 27.27, y: 14.67), controlPoint2: CGPoint(x: 26.54, y: 13.72))
        bezier2Path.addCurve(to: CGPoint(x: 23.43, y: 11.58), controlPoint1: CGPoint(x: 24.01, y: 12.43), controlPoint2: CGPoint(x: 23.42, y: 12.09))
        bezier2Path.addCurve(to: CGPoint(x: 24.99, y: 10.63), controlPoint1: CGPoint(x: 23.43, y: 11.12), controlPoint2: CGPoint(x: 23.92, y: 10.63))
        bezier2Path.addCurve(to: CGPoint(x: 27.04, y: 11.05), controlPoint1: CGPoint(x: 25.89, y: 10.62), controlPoint2: CGPoint(x: 26.54, y: 10.83))
        bezier2Path.addLine(to: CGPoint(x: 27.29, y: 11.18))
        bezier2Path.addLine(to: CGPoint(x: 27.66, y: 8.8))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 34.7, y: 8.57))
        bezier2Path.addLine(to: CGPoint(x: 32.58, y: 8.57))
        bezier2Path.addCurve(to: CGPoint(x: 31.15, y: 9.48), controlPoint1: CGPoint(x: 31.93, y: 8.57), controlPoint2: CGPoint(x: 31.44, y: 8.76))
        bezier2Path.addLine(to: CGPoint(x: 27.09, y: 19.52))
        bezier2Path.addLine(to: CGPoint(x: 29.96, y: 19.52))
        bezier2Path.addCurve(to: CGPoint(x: 30.54, y: 17.87), controlPoint1: CGPoint(x: 29.96, y: 19.52), controlPoint2: CGPoint(x: 30.43, y: 18.17))
        bezier2Path.addCurve(to: CGPoint(x: 34.04, y: 17.88), controlPoint1: CGPoint(x: 30.85, y: 17.87), controlPoint2: CGPoint(x: 33.64, y: 17.88))
        bezier2Path.addCurve(to: CGPoint(x: 34.37, y: 19.52), controlPoint1: CGPoint(x: 34.12, y: 18.26), controlPoint2: CGPoint(x: 34.37, y: 19.52))
        bezier2Path.addLine(to: CGPoint(x: 36.91, y: 19.52))
        bezier2Path.addLine(to: CGPoint(x: 34.7, y: 8.57))
        bezier2Path.addLine(to: CGPoint(x: 34.7, y: 8.57))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 31.34, y: 15.65))
        bezier2Path.addCurve(to: CGPoint(x: 32.43, y: 12.58), controlPoint1: CGPoint(x: 31.57, y: 15.01), controlPoint2: CGPoint(x: 32.43, y: 12.58))
        bezier2Path.addCurve(to: CGPoint(x: 32.8, y: 11.53), controlPoint1: CGPoint(x: 32.42, y: 12.61), controlPoint2: CGPoint(x: 32.66, y: 11.95))
        bezier2Path.addLine(to: CGPoint(x: 32.98, y: 12.48))
        bezier2Path.addCurve(to: CGPoint(x: 33.62, y: 15.65), controlPoint1: CGPoint(x: 32.98, y: 12.48), controlPoint2: CGPoint(x: 33.51, y: 15.1))
        bezier2Path.addLine(to: CGPoint(x: 31.34, y: 15.65))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 12.71, y: 8.57))
        bezier2Path.addLine(to: CGPoint(x: 10.03, y: 16.04))
        bezier2Path.addLine(to: CGPoint(x: 9.75, y: 14.52))
        bezier2Path.addCurve(to: CGPoint(x: 5.96, y: 9.92), controlPoint1: CGPoint(x: 9.25, y: 12.77), controlPoint2: CGPoint(x: 7.7, y: 10.87))
        bezier2Path.addLine(to: CGPoint(x: 8.41, y: 19.51))
        bezier2Path.addLine(to: CGPoint(x: 11.3, y: 19.51))
        bezier2Path.addLine(to: CGPoint(x: 15.61, y: 8.57))
        bezier2Path.addLine(to: CGPoint(x: 12.71, y: 8.57))
        fillColor2.setFill()
        bezier2Path.fill()


        //// Bezier 3 Drawing
        let bezier3Path = UIBezierPath()
        bezier3Path.move(to: CGPoint(x: 7.53, y: 8.57))
        bezier3Path.addLine(to: CGPoint(x: 3.12, y: 8.57))
        bezier3Path.addLine(to: CGPoint(x: 3.09, y: 8.79))
        bezier3Path.addCurve(to: CGPoint(x: 9.73, y: 14.53), controlPoint1: CGPoint(x: 6.52, y: 9.7), controlPoint2: CGPoint(x: 8.79, y: 11.89))
        bezier3Path.addLine(to: CGPoint(x: 8.77, y: 9.49))
        bezier3Path.addCurve(to: CGPoint(x: 7.53, y: 8.57), controlPoint1: CGPoint(x: 8.61, y: 8.8), controlPoint2: CGPoint(x: 8.13, y: 8.59))
        fillColor16.setFill()
        bezier3Path.fill()
        
        context.restoreGState()

    }

    @objc dynamic public class func drawMaestro(frame targetFrame: CGRect = CGRect(x: 0, y: 0, width: 40, height: 28), resizing: ResizingBehavior = .aspectFit) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()!
        
        //// Resize to Target Frame
        context.saveGState()
        let resizedFrame: CGRect = resizing.apply(rect: CGRect(x: 0, y: 0, width: 40, height: 28), target: targetFrame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy(x: resizedFrame.width / 40, y: resizedFrame.height / 28)


        //// Color Declarations
        let fillColor2 = UIColor(red: 1.000, green: 1.000, blue: 1.000, alpha: 1.000)
        let fillColor10 = UIColor(red: 0.000, green: 0.000, blue: 0.000, alpha: 1.000)
        let fillColor17 = UIColor(red: 0.463, green: 0.451, blue: 0.753, alpha: 1.000)
        let fillColor18 = UIColor(red: 0.922, green: 0.000, blue: 0.106, alpha: 1.000)
        let fillColor19 = UIColor(red: 0.000, green: 0.631, blue: 0.875, alpha: 1.000)

        //// maestro 2
        //// Rectangle-1 Drawing
        let rectangle1Path = UIBezierPath(roundedRect: CGRect(x: 0, y: 0, width: 40, height: 28), cornerRadius: 8)
        fillColor10.setFill()
        rectangle1Path.fill()


        //// Group 4
        //// Shape Drawing
        let shapePath = UIBezierPath()
        shapePath.move(to: CGPoint(x: 14.66, y: 24.78))
        shapePath.addLine(to: CGPoint(x: 14.66, y: 23.36))
        shapePath.addCurve(to: CGPoint(x: 13.84, y: 22.47), controlPoint1: CGPoint(x: 14.66, y: 22.83), controlPoint2: CGPoint(x: 14.35, y: 22.47))
        shapePath.addCurve(to: CGPoint(x: 13.1, y: 22.87), controlPoint1: CGPoint(x: 13.58, y: 22.46), controlPoint2: CGPoint(x: 13.3, y: 22.55))
        shapePath.addCurve(to: CGPoint(x: 12.41, y: 22.47), controlPoint1: CGPoint(x: 12.96, y: 22.62), controlPoint2: CGPoint(x: 12.73, y: 22.47))
        shapePath.addCurve(to: CGPoint(x: 11.8, y: 22.8), controlPoint1: CGPoint(x: 12.17, y: 22.45), controlPoint2: CGPoint(x: 11.93, y: 22.58))
        shapePath.addLine(to: CGPoint(x: 11.8, y: 22.52))
        shapePath.addLine(to: CGPoint(x: 11.34, y: 22.52))
        shapePath.addLine(to: CGPoint(x: 11.34, y: 24.78))
        shapePath.addLine(to: CGPoint(x: 11.8, y: 24.78))
        shapePath.addLine(to: CGPoint(x: 11.8, y: 23.53))
        shapePath.addCurve(to: CGPoint(x: 12.32, y: 22.93), controlPoint1: CGPoint(x: 11.8, y: 23.13), controlPoint2: CGPoint(x: 12, y: 22.93))
        shapePath.addCurve(to: CGPoint(x: 12.77, y: 23.52), controlPoint1: CGPoint(x: 12.62, y: 22.93), controlPoint2: CGPoint(x: 12.77, y: 23.14))
        shapePath.addLine(to: CGPoint(x: 12.77, y: 24.77))
        shapePath.addLine(to: CGPoint(x: 13.23, y: 24.77))
        shapePath.addLine(to: CGPoint(x: 13.23, y: 23.53))
        shapePath.addCurve(to: CGPoint(x: 13.74, y: 22.93), controlPoint1: CGPoint(x: 13.23, y: 23.13), controlPoint2: CGPoint(x: 13.44, y: 22.93))
        shapePath.addCurve(to: CGPoint(x: 14.2, y: 23.52), controlPoint1: CGPoint(x: 14.06, y: 22.93), controlPoint2: CGPoint(x: 14.2, y: 23.14))
        shapePath.addLine(to: CGPoint(x: 14.2, y: 24.77))
        shapePath.addLine(to: CGPoint(x: 14.66, y: 24.78))
        shapePath.close()
        shapePath.move(to: CGPoint(x: 17.23, y: 23.65))
        shapePath.addLine(to: CGPoint(x: 17.23, y: 22.52))
        shapePath.addLine(to: CGPoint(x: 16.78, y: 22.52))
        shapePath.addLine(to: CGPoint(x: 16.78, y: 22.79))
        shapePath.addCurve(to: CGPoint(x: 16.11, y: 22.46), controlPoint1: CGPoint(x: 16.63, y: 22.59), controlPoint2: CGPoint(x: 16.41, y: 22.46))
        shapePath.addCurve(to: CGPoint(x: 15.07, y: 23.65), controlPoint1: CGPoint(x: 15.53, y: 22.46), controlPoint2: CGPoint(x: 15.07, y: 22.96))
        shapePath.addCurve(to: CGPoint(x: 16.11, y: 24.83), controlPoint1: CGPoint(x: 15.07, y: 24.34), controlPoint2: CGPoint(x: 15.53, y: 24.83))
        shapePath.addCurve(to: CGPoint(x: 16.78, y: 24.5), controlPoint1: CGPoint(x: 16.41, y: 24.83), controlPoint2: CGPoint(x: 16.63, y: 24.7))
        shapePath.addLine(to: CGPoint(x: 16.78, y: 24.77))
        shapePath.addLine(to: CGPoint(x: 17.23, y: 24.77))
        shapePath.addLine(to: CGPoint(x: 17.23, y: 23.65))
        shapePath.close()
        shapePath.move(to: CGPoint(x: 15.54, y: 23.65))
        shapePath.addCurve(to: CGPoint(x: 16.17, y: 22.93), controlPoint1: CGPoint(x: 15.54, y: 23.25), controlPoint2: CGPoint(x: 15.78, y: 22.93))
        shapePath.addCurve(to: CGPoint(x: 16.8, y: 23.65), controlPoint1: CGPoint(x: 16.55, y: 22.93), controlPoint2: CGPoint(x: 16.8, y: 23.24))
        shapePath.addCurve(to: CGPoint(x: 16.17, y: 24.37), controlPoint1: CGPoint(x: 16.8, y: 24.06), controlPoint2: CGPoint(x: 16.55, y: 24.37))
        shapePath.addCurve(to: CGPoint(x: 15.54, y: 23.65), controlPoint1: CGPoint(x: 15.78, y: 24.37), controlPoint2: CGPoint(x: 15.54, y: 24.04))
        shapePath.addLine(to: CGPoint(x: 15.54, y: 23.65))
        shapePath.close()
        shapePath.move(to: CGPoint(x: 26.99, y: 22.46))
        shapePath.addCurve(to: CGPoint(x: 27.44, y: 22.55), controlPoint1: CGPoint(x: 27.14, y: 22.46), controlPoint2: CGPoint(x: 27.29, y: 22.49))
        shapePath.addCurve(to: CGPoint(x: 27.79, y: 22.8), controlPoint1: CGPoint(x: 27.57, y: 22.61), controlPoint2: CGPoint(x: 27.69, y: 22.69))
        shapePath.addCurve(to: CGPoint(x: 28.03, y: 23.18), controlPoint1: CGPoint(x: 27.89, y: 22.91), controlPoint2: CGPoint(x: 27.97, y: 23.04))
        shapePath.addCurve(to: CGPoint(x: 28.03, y: 24.12), controlPoint1: CGPoint(x: 28.14, y: 23.48), controlPoint2: CGPoint(x: 28.14, y: 23.82))
        shapePath.addCurve(to: CGPoint(x: 27.79, y: 24.5), controlPoint1: CGPoint(x: 27.97, y: 24.26), controlPoint2: CGPoint(x: 27.89, y: 24.39))
        shapePath.addCurve(to: CGPoint(x: 27.44, y: 24.75), controlPoint1: CGPoint(x: 27.69, y: 24.6), controlPoint2: CGPoint(x: 27.57, y: 24.69))
        shapePath.addCurve(to: CGPoint(x: 26.53, y: 24.75), controlPoint1: CGPoint(x: 27.15, y: 24.87), controlPoint2: CGPoint(x: 26.82, y: 24.87))
        shapePath.addCurve(to: CGPoint(x: 26.18, y: 24.5), controlPoint1: CGPoint(x: 26.4, y: 24.69), controlPoint2: CGPoint(x: 26.28, y: 24.6))
        shapePath.addCurve(to: CGPoint(x: 25.94, y: 24.12), controlPoint1: CGPoint(x: 26.08, y: 24.39), controlPoint2: CGPoint(x: 26, y: 24.26))
        shapePath.addCurve(to: CGPoint(x: 25.94, y: 23.18), controlPoint1: CGPoint(x: 25.83, y: 23.82), controlPoint2: CGPoint(x: 25.83, y: 23.48))
        shapePath.addCurve(to: CGPoint(x: 26.18, y: 22.8), controlPoint1: CGPoint(x: 26, y: 23.04), controlPoint2: CGPoint(x: 26.08, y: 22.91))
        shapePath.addCurve(to: CGPoint(x: 26.53, y: 22.55), controlPoint1: CGPoint(x: 26.28, y: 22.69), controlPoint2: CGPoint(x: 26.4, y: 22.61))
        shapePath.addCurve(to: CGPoint(x: 26.99, y: 22.46), controlPoint1: CGPoint(x: 26.68, y: 22.49), controlPoint2: CGPoint(x: 26.83, y: 22.46))
        shapePath.close()
        shapePath.move(to: CGPoint(x: 26.99, y: 22.93))
        shapePath.addCurve(to: CGPoint(x: 26.73, y: 22.98), controlPoint1: CGPoint(x: 26.9, y: 22.92), controlPoint2: CGPoint(x: 26.81, y: 22.94))
        shapePath.addCurve(to: CGPoint(x: 26.52, y: 23.13), controlPoint1: CGPoint(x: 26.65, y: 23.01), controlPoint2: CGPoint(x: 26.58, y: 23.06))
        shapePath.addCurve(to: CGPoint(x: 26.38, y: 23.36), controlPoint1: CGPoint(x: 26.46, y: 23.19), controlPoint2: CGPoint(x: 26.41, y: 23.27))
        shapePath.addCurve(to: CGPoint(x: 26.38, y: 23.94), controlPoint1: CGPoint(x: 26.31, y: 23.54), controlPoint2: CGPoint(x: 26.31, y: 23.75))
        shapePath.addCurve(to: CGPoint(x: 26.52, y: 24.17), controlPoint1: CGPoint(x: 26.41, y: 24.03), controlPoint2: CGPoint(x: 26.46, y: 24.1))
        shapePath.addCurve(to: CGPoint(x: 26.73, y: 24.32), controlPoint1: CGPoint(x: 26.58, y: 24.23), controlPoint2: CGPoint(x: 26.65, y: 24.28))
        shapePath.addCurve(to: CGPoint(x: 27.25, y: 24.32), controlPoint1: CGPoint(x: 26.89, y: 24.39), controlPoint2: CGPoint(x: 27.08, y: 24.39))
        shapePath.addCurve(to: CGPoint(x: 27.45, y: 24.17), controlPoint1: CGPoint(x: 27.32, y: 24.28), controlPoint2: CGPoint(x: 27.4, y: 24.23))
        shapePath.addCurve(to: CGPoint(x: 27.59, y: 23.94), controlPoint1: CGPoint(x: 27.51, y: 24.1), controlPoint2: CGPoint(x: 27.56, y: 24.03))
        shapePath.addCurve(to: CGPoint(x: 27.59, y: 23.36), controlPoint1: CGPoint(x: 27.66, y: 23.75), controlPoint2: CGPoint(x: 27.66, y: 23.54))
        shapePath.addCurve(to: CGPoint(x: 27.45, y: 23.13), controlPoint1: CGPoint(x: 27.56, y: 23.27), controlPoint2: CGPoint(x: 27.51, y: 23.19))
        shapePath.addCurve(to: CGPoint(x: 27.25, y: 22.98), controlPoint1: CGPoint(x: 27.4, y: 23.06), controlPoint2: CGPoint(x: 27.32, y: 23.01))
        shapePath.addCurve(to: CGPoint(x: 26.99, y: 22.93), controlPoint1: CGPoint(x: 27.16, y: 22.94), controlPoint2: CGPoint(x: 27.07, y: 22.92))
        shapePath.addLine(to: CGPoint(x: 26.99, y: 22.93))
        shapePath.close()
        shapePath.move(to: CGPoint(x: 19.71, y: 23.65))
        shapePath.addCurve(to: CGPoint(x: 18.72, y: 22.46), controlPoint1: CGPoint(x: 19.71, y: 22.95), controlPoint2: CGPoint(x: 19.3, y: 22.46))
        shapePath.addCurve(to: CGPoint(x: 17.67, y: 23.65), controlPoint1: CGPoint(x: 18.1, y: 22.46), controlPoint2: CGPoint(x: 17.67, y: 22.95))
        shapePath.addCurve(to: CGPoint(x: 18.75, y: 24.83), controlPoint1: CGPoint(x: 17.67, y: 24.37), controlPoint2: CGPoint(x: 18.12, y: 24.83))
        shapePath.addCurve(to: CGPoint(x: 19.61, y: 24.52), controlPoint1: CGPoint(x: 19.07, y: 24.83), controlPoint2: CGPoint(x: 19.35, y: 24.75))
        shapePath.addLine(to: CGPoint(x: 19.38, y: 24.15))
        shapePath.addCurve(to: CGPoint(x: 18.77, y: 24.39), controlPoint1: CGPoint(x: 19.21, y: 24.3), controlPoint2: CGPoint(x: 19, y: 24.39))
        shapePath.addCurve(to: CGPoint(x: 18.15, y: 23.84), controlPoint1: CGPoint(x: 18.48, y: 24.39), controlPoint2: CGPoint(x: 18.21, y: 24.24))
        shapePath.addLine(to: CGPoint(x: 19.7, y: 23.84))
        shapePath.addCurve(to: CGPoint(x: 19.71, y: 23.65), controlPoint1: CGPoint(x: 19.71, y: 23.78), controlPoint2: CGPoint(x: 19.71, y: 23.71))
        shapePath.close()
        shapePath.move(to: CGPoint(x: 18.15, y: 23.45))
        shapePath.addCurve(to: CGPoint(x: 18.71, y: 22.9), controlPoint1: CGPoint(x: 18.2, y: 23.12), controlPoint2: CGPoint(x: 18.38, y: 22.9))
        shapePath.addCurve(to: CGPoint(x: 19.24, y: 23.45), controlPoint1: CGPoint(x: 19, y: 22.9), controlPoint2: CGPoint(x: 19.19, y: 23.1))
        shapePath.addLine(to: CGPoint(x: 18.15, y: 23.45))
        shapePath.close()
        shapePath.move(to: CGPoint(x: 21.63, y: 23.1))
        shapePath.addCurve(to: CGPoint(x: 20.98, y: 22.9), controlPoint1: CGPoint(x: 21.43, y: 22.97), controlPoint2: CGPoint(x: 21.21, y: 22.91))
        shapePath.addCurve(to: CGPoint(x: 20.58, y: 23.17), controlPoint1: CGPoint(x: 20.73, y: 22.9), controlPoint2: CGPoint(x: 20.58, y: 23))
        shapePath.addCurve(to: CGPoint(x: 20.93, y: 23.39), controlPoint1: CGPoint(x: 20.58, y: 23.32), controlPoint2: CGPoint(x: 20.74, y: 23.36))
        shapePath.addLine(to: CGPoint(x: 21.15, y: 23.42))
        shapePath.addCurve(to: CGPoint(x: 21.88, y: 24.1), controlPoint1: CGPoint(x: 21.6, y: 23.49), controlPoint2: CGPoint(x: 21.88, y: 23.7))
        shapePath.addCurve(to: CGPoint(x: 20.93, y: 24.83), controlPoint1: CGPoint(x: 21.88, y: 24.53), controlPoint2: CGPoint(x: 21.53, y: 24.83))
        shapePath.addCurve(to: CGPoint(x: 20.02, y: 24.54), controlPoint1: CGPoint(x: 20.59, y: 24.83), controlPoint2: CGPoint(x: 20.27, y: 24.74))
        shapePath.addLine(to: CGPoint(x: 20.23, y: 24.16))
        shapePath.addCurve(to: CGPoint(x: 20.93, y: 24.39), controlPoint1: CGPoint(x: 20.44, y: 24.32), controlPoint2: CGPoint(x: 20.68, y: 24.4))
        shapePath.addCurve(to: CGPoint(x: 21.41, y: 24.12), controlPoint1: CGPoint(x: 21.24, y: 24.39), controlPoint2: CGPoint(x: 21.41, y: 24.29))
        shapePath.addCurve(to: CGPoint(x: 21.04, y: 23.88), controlPoint1: CGPoint(x: 21.41, y: 23.99), controlPoint2: CGPoint(x: 21.29, y: 23.92))
        shapePath.addLine(to: CGPoint(x: 20.83, y: 23.85))
        shapePath.addCurve(to: CGPoint(x: 20.1, y: 23.19), controlPoint1: CGPoint(x: 20.36, y: 23.78), controlPoint2: CGPoint(x: 20.1, y: 23.55))
        shapePath.addCurve(to: CGPoint(x: 20.97, y: 22.46), controlPoint1: CGPoint(x: 20.1, y: 22.74), controlPoint2: CGPoint(x: 20.44, y: 22.46))
        shapePath.addCurve(to: CGPoint(x: 21.83, y: 22.7), controlPoint1: CGPoint(x: 21.31, y: 22.46), controlPoint2: CGPoint(x: 21.61, y: 22.54))
        shapePath.addLine(to: CGPoint(x: 21.63, y: 23.1))
        shapePath.close()
        shapePath.move(to: CGPoint(x: 23.82, y: 22.97))
        shapePath.addLine(to: CGPoint(x: 23.08, y: 22.97))
        shapePath.addLine(to: CGPoint(x: 23.08, y: 23.99))
        shapePath.addCurve(to: CGPoint(x: 23.38, y: 24.37), controlPoint1: CGPoint(x: 23.08, y: 24.22), controlPoint2: CGPoint(x: 23.15, y: 24.37))
        shapePath.addCurve(to: CGPoint(x: 23.78, y: 24.24), controlPoint1: CGPoint(x: 23.52, y: 24.36), controlPoint2: CGPoint(x: 23.66, y: 24.32))
        shapePath.addLine(to: CGPoint(x: 23.91, y: 24.66))
        shapePath.addCurve(to: CGPoint(x: 23.34, y: 24.83), controlPoint1: CGPoint(x: 23.74, y: 24.77), controlPoint2: CGPoint(x: 23.55, y: 24.84))
        shapePath.addCurve(to: CGPoint(x: 22.62, y: 24), controlPoint1: CGPoint(x: 22.8, y: 24.83), controlPoint2: CGPoint(x: 22.62, y: 24.52))
        shapePath.addLine(to: CGPoint(x: 22.62, y: 22.97))
        shapePath.addLine(to: CGPoint(x: 22.19, y: 22.97))
        shapePath.addLine(to: CGPoint(x: 22.19, y: 22.52))
        shapePath.addLine(to: CGPoint(x: 22.62, y: 22.52))
        shapePath.addLine(to: CGPoint(x: 22.62, y: 21.84))
        shapePath.addLine(to: CGPoint(x: 23.08, y: 21.84))
        shapePath.addLine(to: CGPoint(x: 23.08, y: 22.52))
        shapePath.addLine(to: CGPoint(x: 23.82, y: 22.52))
        shapePath.addLine(to: CGPoint(x: 23.82, y: 22.97))
        shapePath.close()
        shapePath.move(to: CGPoint(x: 25.4, y: 22.47))
        shapePath.addCurve(to: CGPoint(x: 25.72, y: 22.53), controlPoint1: CGPoint(x: 25.51, y: 22.47), controlPoint2: CGPoint(x: 25.62, y: 22.49))
        shapePath.addLine(to: CGPoint(x: 25.58, y: 22.99))
        shapePath.addCurve(to: CGPoint(x: 25.3, y: 22.93), controlPoint1: CGPoint(x: 25.49, y: 22.95), controlPoint2: CGPoint(x: 25.4, y: 22.93))
        shapePath.addCurve(to: CGPoint(x: 24.85, y: 23.51), controlPoint1: CGPoint(x: 25, y: 22.93), controlPoint2: CGPoint(x: 24.85, y: 23.14))
        shapePath.addLine(to: CGPoint(x: 24.85, y: 24.78))
        shapePath.addLine(to: CGPoint(x: 24.4, y: 24.78))
        shapePath.addLine(to: CGPoint(x: 24.4, y: 22.52))
        shapePath.addLine(to: CGPoint(x: 24.85, y: 22.52))
        shapePath.addLine(to: CGPoint(x: 24.85, y: 22.79))
        shapePath.addCurve(to: CGPoint(x: 25.4, y: 22.46), controlPoint1: CGPoint(x: 24.96, y: 22.58), controlPoint2: CGPoint(x: 25.17, y: 22.46))
        shapePath.addLine(to: CGPoint(x: 25.4, y: 22.47))
        shapePath.close()
        fillColor2.setFill()
        shapePath.fill()


        //// _Group_
        //// Rectangle-path Drawing
        let rectanglepathPath = UIBezierPath(rect: CGRect(x: 15.95, y: 5.39, width: 7.5, height: 13.51))
        fillColor17.setFill()
        rectanglepathPath.fill()


        //// _Path_ Drawing
        let _Path_Path = UIBezierPath()
        _Path_Path.move(to: CGPoint(x: 16.7, y: 12.14))
        _Path_Path.addCurve(to: CGPoint(x: 19.72, y: 5.34), controlPoint1: CGPoint(x: 16.7, y: 9.49), controlPoint2: CGPoint(x: 17.81, y: 6.98))
        _Path_Path.addCurve(to: CGPoint(x: 9.03, y: 6.27), controlPoint1: CGPoint(x: 16.48, y: 2.56), controlPoint2: CGPoint(x: 11.83, y: 2.96))
        _Path_Path.addCurve(to: CGPoint(x: 9.03, y: 18), controlPoint1: CGPoint(x: 6.24, y: 9.58), controlPoint2: CGPoint(x: 6.24, y: 14.69))
        _Path_Path.addCurve(to: CGPoint(x: 19.72, y: 18.94), controlPoint1: CGPoint(x: 11.83, y: 21.32), controlPoint2: CGPoint(x: 16.48, y: 21.72))
        _Path_Path.addCurve(to: CGPoint(x: 16.7, y: 12.14), controlPoint1: CGPoint(x: 17.81, y: 17.3), controlPoint2: CGPoint(x: 16.7, y: 14.79))
        _Path_Path.close()
        fillColor18.setFill()
        _Path_Path.fill()


        //// Shape 2 Drawing
        let shape2Path = UIBezierPath()
        shape2Path.move(to: CGPoint(x: 32.5, y: 12.14))
        shape2Path.addCurve(to: CGPoint(x: 28.05, y: 19.91), controlPoint1: CGPoint(x: 32.5, y: 15.45), controlPoint2: CGPoint(x: 30.77, y: 18.47))
        shape2Path.addCurve(to: CGPoint(x: 19.72, y: 18.94), controlPoint1: CGPoint(x: 25.33, y: 21.36), controlPoint2: CGPoint(x: 22.1, y: 20.98))
        shape2Path.addCurve(to: CGPoint(x: 22.74, y: 12.14), controlPoint1: CGPoint(x: 21.62, y: 17.3), controlPoint2: CGPoint(x: 22.74, y: 14.79))
        shape2Path.addCurve(to: CGPoint(x: 19.72, y: 5.34), controlPoint1: CGPoint(x: 22.74, y: 9.49), controlPoint2: CGPoint(x: 21.62, y: 6.98))
        shape2Path.addCurve(to: CGPoint(x: 28.05, y: 4.36), controlPoint1: CGPoint(x: 22.1, y: 3.3), controlPoint2: CGPoint(x: 25.33, y: 2.92))
        shape2Path.addCurve(to: CGPoint(x: 32.5, y: 12.14), controlPoint1: CGPoint(x: 30.77, y: 5.81), controlPoint2: CGPoint(x: 32.5, y: 8.83))
        shape2Path.close()
        fillColor19.setFill()
        shape2Path.fill()
        
        context.restoreGState()

    }

    @objc dynamic public class func drawMastercard(frame targetFrame: CGRect = CGRect(x: 0, y: 0, width: 40, height: 28), resizing: ResizingBehavior = .aspectFit) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()!
        
        //// Resize to Target Frame
        context.saveGState()
        let resizedFrame: CGRect = resizing.apply(rect: CGRect(x: 0, y: 0, width: 40, height: 28), target: targetFrame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy(x: resizedFrame.width / 40, y: resizedFrame.height / 28)


        //// Color Declarations
        let fillColor2 = UIColor(red: 1.000, green: 1.000, blue: 1.000, alpha: 1.000)
        let fillColor10 = UIColor(red: 0.000, green: 0.000, blue: 0.000, alpha: 1.000)
        let fillColor18 = UIColor(red: 0.922, green: 0.000, blue: 0.106, alpha: 1.000)
        let fillColor20 = UIColor(red: 1.000, green: 0.373, blue: 0.000, alpha: 1.000)
        let fillColor21 = UIColor(red: 0.969, green: 0.620, blue: 0.106, alpha: 1.000)

        //// Page-1
        //// mastercard 2
        //// Rectangle-1 Drawing
        let rectangle1Path = UIBezierPath(roundedRect: CGRect(x: 0, y: 0, width: 40, height: 28), cornerRadius: 8)
        fillColor10.setFill()
        rectangle1Path.fill()


        //// Group 4
        //// Shape Drawing
        let shapePath = UIBezierPath()
        shapePath.move(to: CGPoint(x: 12.2, y: 24.48))
        shapePath.addLine(to: CGPoint(x: 12.2, y: 23.08))
        shapePath.addCurve(to: CGPoint(x: 11.39, y: 22.2), controlPoint1: CGPoint(x: 12.2, y: 22.55), controlPoint2: CGPoint(x: 11.89, y: 22.2))
        shapePath.addCurve(to: CGPoint(x: 10.64, y: 22.59), controlPoint1: CGPoint(x: 11.12, y: 22.2), controlPoint2: CGPoint(x: 10.83, y: 22.29))
        shapePath.addCurve(to: CGPoint(x: 9.93, y: 22.2), controlPoint1: CGPoint(x: 10.48, y: 22.34), controlPoint2: CGPoint(x: 10.26, y: 22.2))
        shapePath.addCurve(to: CGPoint(x: 9.29, y: 22.53), controlPoint1: CGPoint(x: 9.68, y: 22.19), controlPoint2: CGPoint(x: 9.44, y: 22.31))
        shapePath.addLine(to: CGPoint(x: 9.29, y: 22.24))
        shapePath.addLine(to: CGPoint(x: 8.87, y: 22.24))
        shapePath.addLine(to: CGPoint(x: 8.87, y: 24.48))
        shapePath.addLine(to: CGPoint(x: 9.29, y: 24.48))
        shapePath.addLine(to: CGPoint(x: 9.29, y: 23.2))
        shapePath.addCurve(to: CGPoint(x: 9.82, y: 22.62), controlPoint1: CGPoint(x: 9.29, y: 22.81), controlPoint2: CGPoint(x: 9.51, y: 22.62))
        shapePath.addCurve(to: CGPoint(x: 10.31, y: 23.2), controlPoint1: CGPoint(x: 10.13, y: 22.62), controlPoint2: CGPoint(x: 10.31, y: 22.83))
        shapePath.addLine(to: CGPoint(x: 10.31, y: 24.48))
        shapePath.addLine(to: CGPoint(x: 10.72, y: 24.48))
        shapePath.addLine(to: CGPoint(x: 10.72, y: 23.2))
        shapePath.addCurve(to: CGPoint(x: 11.25, y: 22.62), controlPoint1: CGPoint(x: 10.72, y: 22.81), controlPoint2: CGPoint(x: 10.95, y: 22.62))
        shapePath.addCurve(to: CGPoint(x: 11.74, y: 23.2), controlPoint1: CGPoint(x: 11.56, y: 22.62), controlPoint2: CGPoint(x: 11.74, y: 22.83))
        shapePath.addLine(to: CGPoint(x: 11.74, y: 24.48))
        shapePath.addLine(to: CGPoint(x: 12.2, y: 24.48))
        shapePath.close()
        shapePath.move(to: CGPoint(x: 19.09, y: 22.27))
        shapePath.addLine(to: CGPoint(x: 18.32, y: 22.27))
        shapePath.addLine(to: CGPoint(x: 18.32, y: 21.59))
        shapePath.addLine(to: CGPoint(x: 17.9, y: 21.59))
        shapePath.addLine(to: CGPoint(x: 17.9, y: 22.27))
        shapePath.addLine(to: CGPoint(x: 17.46, y: 22.27))
        shapePath.addLine(to: CGPoint(x: 17.46, y: 22.66))
        shapePath.addLine(to: CGPoint(x: 17.9, y: 22.66))
        shapePath.addLine(to: CGPoint(x: 17.9, y: 23.71))
        shapePath.addCurve(to: CGPoint(x: 18.6, y: 24.53), controlPoint1: CGPoint(x: 17.9, y: 24.23), controlPoint2: CGPoint(x: 18.07, y: 24.53))
        shapePath.addCurve(to: CGPoint(x: 19.18, y: 24.37), controlPoint1: CGPoint(x: 18.8, y: 24.52), controlPoint2: CGPoint(x: 19, y: 24.47))
        shapePath.addLine(to: CGPoint(x: 19.04, y: 23.97))
        shapePath.addCurve(to: CGPoint(x: 18.65, y: 24.09), controlPoint1: CGPoint(x: 18.93, y: 24.05), controlPoint2: CGPoint(x: 18.79, y: 24.09))
        shapePath.addCurve(to: CGPoint(x: 18.32, y: 23.72), controlPoint1: CGPoint(x: 18.43, y: 24.09), controlPoint2: CGPoint(x: 18.32, y: 23.95))
        shapePath.addLine(to: CGPoint(x: 18.32, y: 22.64))
        shapePath.addLine(to: CGPoint(x: 19.09, y: 22.64))
        shapePath.addLine(to: CGPoint(x: 19.09, y: 22.27))
        shapePath.addLine(to: CGPoint(x: 19.09, y: 22.27))
        shapePath.close()
        shapePath.move(to: CGPoint(x: 23.02, y: 22.2))
        shapePath.addCurve(to: CGPoint(x: 22.44, y: 22.53), controlPoint1: CGPoint(x: 22.79, y: 22.19), controlPoint2: CGPoint(x: 22.57, y: 22.32))
        shapePath.addLine(to: CGPoint(x: 22.44, y: 22.24))
        shapePath.addLine(to: CGPoint(x: 22.02, y: 22.24))
        shapePath.addLine(to: CGPoint(x: 22.02, y: 24.48))
        shapePath.addLine(to: CGPoint(x: 22.44, y: 24.48))
        shapePath.addLine(to: CGPoint(x: 22.44, y: 23.22))
        shapePath.addCurve(to: CGPoint(x: 22.91, y: 22.62), controlPoint1: CGPoint(x: 22.44, y: 22.85), controlPoint2: CGPoint(x: 22.62, y: 22.62))
        shapePath.addCurve(to: CGPoint(x: 23.19, y: 22.67), controlPoint1: CGPoint(x: 23, y: 22.62), controlPoint2: CGPoint(x: 23.1, y: 22.64))
        shapePath.addLine(to: CGPoint(x: 23.33, y: 22.25))
        shapePath.addCurve(to: CGPoint(x: 23.02, y: 22.2), controlPoint1: CGPoint(x: 23.23, y: 22.22), controlPoint2: CGPoint(x: 23.12, y: 22.2))
        shapePath.close()
        shapePath.move(to: CGPoint(x: 17.08, y: 22.43))
        shapePath.addCurve(to: CGPoint(x: 16.22, y: 22.2), controlPoint1: CGPoint(x: 16.86, y: 22.27), controlPoint2: CGPoint(x: 16.55, y: 22.2))
        shapePath.addCurve(to: CGPoint(x: 15.36, y: 22.9), controlPoint1: CGPoint(x: 15.69, y: 22.2), controlPoint2: CGPoint(x: 15.36, y: 22.46))
        shapePath.addCurve(to: CGPoint(x: 16.07, y: 23.55), controlPoint1: CGPoint(x: 15.36, y: 23.27), controlPoint2: CGPoint(x: 15.6, y: 23.48))
        shapePath.addLine(to: CGPoint(x: 16.29, y: 23.57))
        shapePath.addCurve(to: CGPoint(x: 16.68, y: 23.83), controlPoint1: CGPoint(x: 16.53, y: 23.62), controlPoint2: CGPoint(x: 16.68, y: 23.71))
        shapePath.addCurve(to: CGPoint(x: 16.18, y: 24.11), controlPoint1: CGPoint(x: 16.68, y: 23.99), controlPoint2: CGPoint(x: 16.51, y: 24.11))
        shapePath.addCurve(to: CGPoint(x: 15.47, y: 23.88), controlPoint1: CGPoint(x: 15.92, y: 24.12), controlPoint2: CGPoint(x: 15.67, y: 24.03))
        shapePath.addLine(to: CGPoint(x: 15.25, y: 24.23))
        shapePath.addCurve(to: CGPoint(x: 16.15, y: 24.51), controlPoint1: CGPoint(x: 15.56, y: 24.46), controlPoint2: CGPoint(x: 15.93, y: 24.51))
        shapePath.addCurve(to: CGPoint(x: 17.1, y: 23.79), controlPoint1: CGPoint(x: 16.77, y: 24.51), controlPoint2: CGPoint(x: 17.1, y: 24.21))
        shapePath.addCurve(to: CGPoint(x: 16.38, y: 23.13), controlPoint1: CGPoint(x: 17.1, y: 23.39), controlPoint2: CGPoint(x: 16.84, y: 23.2))
        shapePath.addLine(to: CGPoint(x: 16.15, y: 23.11))
        shapePath.addCurve(to: CGPoint(x: 15.78, y: 22.88), controlPoint1: CGPoint(x: 15.96, y: 23.09), controlPoint2: CGPoint(x: 15.78, y: 23.02))
        shapePath.addCurve(to: CGPoint(x: 16.2, y: 22.6), controlPoint1: CGPoint(x: 15.78, y: 22.72), controlPoint2: CGPoint(x: 15.96, y: 22.6))
        shapePath.addCurve(to: CGPoint(x: 16.86, y: 22.78), controlPoint1: CGPoint(x: 16.47, y: 22.6), controlPoint2: CGPoint(x: 16.73, y: 22.71))
        shapePath.addLine(to: CGPoint(x: 17.08, y: 22.43))
        shapePath.close()
        shapePath.move(to: CGPoint(x: 23.48, y: 23.36))
        shapePath.addCurve(to: CGPoint(x: 24.59, y: 24.53), controlPoint1: CGPoint(x: 23.48, y: 24.04), controlPoint2: CGPoint(x: 23.9, y: 24.53))
        shapePath.addCurve(to: CGPoint(x: 25.34, y: 24.27), controlPoint1: CGPoint(x: 24.89, y: 24.53), controlPoint2: CGPoint(x: 25.11, y: 24.46))
        shapePath.addLine(to: CGPoint(x: 25.11, y: 23.92))
        shapePath.addCurve(to: CGPoint(x: 24.56, y: 24.13), controlPoint1: CGPoint(x: 24.96, y: 24.06), controlPoint2: CGPoint(x: 24.76, y: 24.13))
        shapePath.addCurve(to: CGPoint(x: 23.9, y: 23.39), controlPoint1: CGPoint(x: 24.19, y: 24.13), controlPoint2: CGPoint(x: 23.9, y: 23.83))
        shapePath.addCurve(to: CGPoint(x: 24.56, y: 22.64), controlPoint1: CGPoint(x: 23.9, y: 22.94), controlPoint2: CGPoint(x: 24.19, y: 22.64))
        shapePath.addCurve(to: CGPoint(x: 25.11, y: 22.85), controlPoint1: CGPoint(x: 24.76, y: 22.65), controlPoint2: CGPoint(x: 24.96, y: 22.72))
        shapePath.addLine(to: CGPoint(x: 25.34, y: 22.51))
        shapePath.addCurve(to: CGPoint(x: 24.59, y: 22.25), controlPoint1: CGPoint(x: 25.11, y: 22.32), controlPoint2: CGPoint(x: 24.89, y: 22.25))
        shapePath.addCurve(to: CGPoint(x: 23.48, y: 23.37), controlPoint1: CGPoint(x: 23.92, y: 22.2), controlPoint2: CGPoint(x: 23.48, y: 22.69))
        shapePath.addLine(to: CGPoint(x: 23.48, y: 23.36))
        shapePath.close()
        shapePath.move(to: CGPoint(x: 20.52, y: 22.2))
        shapePath.addCurve(to: CGPoint(x: 19.49, y: 23.36), controlPoint1: CGPoint(x: 19.91, y: 22.2), controlPoint2: CGPoint(x: 19.49, y: 22.66))
        shapePath.addCurve(to: CGPoint(x: 20.57, y: 24.53), controlPoint1: CGPoint(x: 19.49, y: 24.06), controlPoint2: CGPoint(x: 19.93, y: 24.53))
        shapePath.addCurve(to: CGPoint(x: 21.43, y: 24.23), controlPoint1: CGPoint(x: 20.88, y: 24.54), controlPoint2: CGPoint(x: 21.18, y: 24.43))
        shapePath.addLine(to: CGPoint(x: 21.21, y: 23.9))
        shapePath.addCurve(to: CGPoint(x: 20.59, y: 24.13), controlPoint1: CGPoint(x: 21.03, y: 24.04), controlPoint2: CGPoint(x: 20.81, y: 24.13))
        shapePath.addCurve(to: CGPoint(x: 19.95, y: 23.55), controlPoint1: CGPoint(x: 20.3, y: 24.13), controlPoint2: CGPoint(x: 19.99, y: 23.95))
        shapePath.addLine(to: CGPoint(x: 21.52, y: 23.55))
        shapePath.addLine(to: CGPoint(x: 21.52, y: 23.36))
        shapePath.addCurve(to: CGPoint(x: 20.52, y: 22.2), controlPoint1: CGPoint(x: 21.52, y: 22.67), controlPoint2: CGPoint(x: 21.12, y: 22.2))
        shapePath.addLine(to: CGPoint(x: 20.52, y: 22.2))
        shapePath.close()
        shapePath.move(to: CGPoint(x: 20.5, y: 22.62))
        shapePath.addCurve(to: CGPoint(x: 21.05, y: 23.18), controlPoint1: CGPoint(x: 20.81, y: 22.62), controlPoint2: CGPoint(x: 21.03, y: 22.83))
        shapePath.addLine(to: CGPoint(x: 19.91, y: 23.18))
        shapePath.addCurve(to: CGPoint(x: 20.5, y: 22.62), controlPoint1: CGPoint(x: 19.97, y: 22.85), controlPoint2: CGPoint(x: 20.17, y: 22.62))
        shapePath.close()
        shapePath.move(to: CGPoint(x: 14.79, y: 23.36))
        shapePath.addLine(to: CGPoint(x: 14.79, y: 22.25))
        shapePath.addLine(to: CGPoint(x: 14.37, y: 22.25))
        shapePath.addLine(to: CGPoint(x: 14.37, y: 22.53))
        shapePath.addCurve(to: CGPoint(x: 13.68, y: 22.2), controlPoint1: CGPoint(x: 14.21, y: 22.32), controlPoint2: CGPoint(x: 13.99, y: 22.2))
        shapePath.addCurve(to: CGPoint(x: 12.64, y: 23.37), controlPoint1: CGPoint(x: 13.09, y: 22.2), controlPoint2: CGPoint(x: 12.64, y: 22.69))
        shapePath.addCurve(to: CGPoint(x: 13.68, y: 24.53), controlPoint1: CGPoint(x: 12.64, y: 24.04), controlPoint2: CGPoint(x: 13.09, y: 24.53))
        shapePath.addCurve(to: CGPoint(x: 14.37, y: 24.2), controlPoint1: CGPoint(x: 13.99, y: 24.53), controlPoint2: CGPoint(x: 14.21, y: 24.41))
        shapePath.addLine(to: CGPoint(x: 14.37, y: 24.49))
        shapePath.addLine(to: CGPoint(x: 14.79, y: 24.49))
        shapePath.addLine(to: CGPoint(x: 14.79, y: 23.36))
        shapePath.close()
        shapePath.move(to: CGPoint(x: 13.09, y: 23.36))
        shapePath.addCurve(to: CGPoint(x: 13.75, y: 22.62), controlPoint1: CGPoint(x: 13.09, y: 22.94), controlPoint2: CGPoint(x: 13.33, y: 22.62))
        shapePath.addCurve(to: CGPoint(x: 14.39, y: 23.36), controlPoint1: CGPoint(x: 14.15, y: 22.62), controlPoint2: CGPoint(x: 14.39, y: 22.94))
        shapePath.addCurve(to: CGPoint(x: 13.75, y: 24.11), controlPoint1: CGPoint(x: 14.39, y: 23.81), controlPoint2: CGPoint(x: 14.12, y: 24.11))
        shapePath.addCurve(to: CGPoint(x: 13.09, y: 23.36), controlPoint1: CGPoint(x: 13.33, y: 24.13), controlPoint2: CGPoint(x: 13.09, y: 23.78))
        shapePath.close()
        shapePath.move(to: CGPoint(x: 29.4, y: 22.2))
        shapePath.addCurve(to: CGPoint(x: 28.82, y: 22.53), controlPoint1: CGPoint(x: 29.17, y: 22.19), controlPoint2: CGPoint(x: 28.95, y: 22.32))
        shapePath.addLine(to: CGPoint(x: 28.82, y: 22.24))
        shapePath.addLine(to: CGPoint(x: 28.4, y: 22.24))
        shapePath.addLine(to: CGPoint(x: 28.4, y: 24.48))
        shapePath.addLine(to: CGPoint(x: 28.82, y: 24.48))
        shapePath.addLine(to: CGPoint(x: 28.82, y: 23.22))
        shapePath.addCurve(to: CGPoint(x: 29.29, y: 22.62), controlPoint1: CGPoint(x: 28.82, y: 22.85), controlPoint2: CGPoint(x: 29, y: 22.62))
        shapePath.addCurve(to: CGPoint(x: 29.57, y: 22.67), controlPoint1: CGPoint(x: 29.38, y: 22.62), controlPoint2: CGPoint(x: 29.48, y: 22.64))
        shapePath.addLine(to: CGPoint(x: 29.71, y: 22.25))
        shapePath.addCurve(to: CGPoint(x: 29.4, y: 22.2), controlPoint1: CGPoint(x: 29.6, y: 22.22), controlPoint2: CGPoint(x: 29.5, y: 22.2))
        shapePath.addLine(to: CGPoint(x: 29.4, y: 22.2))
        shapePath.close()
        shapePath.move(to: CGPoint(x: 27.76, y: 23.36))
        shapePath.addLine(to: CGPoint(x: 27.76, y: 22.25))
        shapePath.addLine(to: CGPoint(x: 27.34, y: 22.25))
        shapePath.addLine(to: CGPoint(x: 27.34, y: 22.53))
        shapePath.addCurve(to: CGPoint(x: 26.66, y: 22.2), controlPoint1: CGPoint(x: 27.19, y: 22.32), controlPoint2: CGPoint(x: 26.97, y: 22.2))
        shapePath.addCurve(to: CGPoint(x: 25.62, y: 23.37), controlPoint1: CGPoint(x: 26.06, y: 22.2), controlPoint2: CGPoint(x: 25.62, y: 22.69))
        shapePath.addCurve(to: CGPoint(x: 26.66, y: 24.53), controlPoint1: CGPoint(x: 25.62, y: 24.04), controlPoint2: CGPoint(x: 26.06, y: 24.53))
        shapePath.addCurve(to: CGPoint(x: 27.34, y: 24.2), controlPoint1: CGPoint(x: 26.97, y: 24.53), controlPoint2: CGPoint(x: 27.19, y: 24.41))
        shapePath.addLine(to: CGPoint(x: 27.34, y: 24.49))
        shapePath.addLine(to: CGPoint(x: 27.76, y: 24.49))
        shapePath.addLine(to: CGPoint(x: 27.76, y: 23.36))
        shapePath.close()
        shapePath.move(to: CGPoint(x: 26.06, y: 23.36))
        shapePath.addCurve(to: CGPoint(x: 26.73, y: 22.62), controlPoint1: CGPoint(x: 26.06, y: 22.94), controlPoint2: CGPoint(x: 26.31, y: 22.62))
        shapePath.addCurve(to: CGPoint(x: 27.37, y: 23.36), controlPoint1: CGPoint(x: 27.12, y: 22.62), controlPoint2: CGPoint(x: 27.37, y: 22.94))
        shapePath.addCurve(to: CGPoint(x: 26.73, y: 24.11), controlPoint1: CGPoint(x: 27.37, y: 23.81), controlPoint2: CGPoint(x: 27.1, y: 24.11))
        shapePath.addCurve(to: CGPoint(x: 26.06, y: 23.36), controlPoint1: CGPoint(x: 26.31, y: 24.13), controlPoint2: CGPoint(x: 26.06, y: 23.78))
        shapePath.close()
        shapePath.move(to: CGPoint(x: 32.02, y: 23.36))
        shapePath.addLine(to: CGPoint(x: 32.02, y: 21.36))
        shapePath.addLine(to: CGPoint(x: 31.6, y: 21.36))
        shapePath.addLine(to: CGPoint(x: 31.6, y: 22.53))
        shapePath.addCurve(to: CGPoint(x: 30.92, y: 22.2), controlPoint1: CGPoint(x: 31.45, y: 22.32), controlPoint2: CGPoint(x: 31.23, y: 22.2))
        shapePath.addCurve(to: CGPoint(x: 29.88, y: 23.36), controlPoint1: CGPoint(x: 30.32, y: 22.2), controlPoint2: CGPoint(x: 29.88, y: 22.69))
        shapePath.addCurve(to: CGPoint(x: 30.92, y: 24.53), controlPoint1: CGPoint(x: 29.88, y: 24.04), controlPoint2: CGPoint(x: 30.32, y: 24.53))
        shapePath.addCurve(to: CGPoint(x: 31.6, y: 24.2), controlPoint1: CGPoint(x: 31.23, y: 24.53), controlPoint2: CGPoint(x: 31.45, y: 24.41))
        shapePath.addLine(to: CGPoint(x: 31.6, y: 24.48))
        shapePath.addLine(to: CGPoint(x: 32.02, y: 24.48))
        shapePath.addLine(to: CGPoint(x: 32.02, y: 23.36))
        shapePath.close()
        shapePath.move(to: CGPoint(x: 30.32, y: 23.36))
        shapePath.addCurve(to: CGPoint(x: 30.99, y: 22.62), controlPoint1: CGPoint(x: 30.32, y: 22.94), controlPoint2: CGPoint(x: 30.57, y: 22.62))
        shapePath.addCurve(to: CGPoint(x: 31.63, y: 23.36), controlPoint1: CGPoint(x: 31.38, y: 22.62), controlPoint2: CGPoint(x: 31.63, y: 22.94))
        shapePath.addCurve(to: CGPoint(x: 30.99, y: 24.11), controlPoint1: CGPoint(x: 31.63, y: 23.81), controlPoint2: CGPoint(x: 31.36, y: 24.11))
        shapePath.addCurve(to: CGPoint(x: 30.32, y: 23.36), controlPoint1: CGPoint(x: 30.57, y: 24.13), controlPoint2: CGPoint(x: 30.32, y: 23.78))
        shapePath.addLine(to: CGPoint(x: 30.32, y: 23.36))
        shapePath.close()
        fillColor2.setFill()
        shapePath.fill()


        //// Group 5
        //// Rectangle-path Drawing
        let rectanglepathPath = UIBezierPath(rect: CGRect(x: 16.55, y: 5.39, width: 7.72, height: 13.42))
        fillColor20.setFill()
        rectanglepathPath.fill()


        //// Shape 2 Drawing
        let shape2Path = UIBezierPath()
        shape2Path.move(to: CGPoint(x: 17.37, y: 12.1))
        shape2Path.addCurve(to: CGPoint(x: 20.39, y: 5.34), controlPoint1: CGPoint(x: 17.37, y: 9.46), controlPoint2: CGPoint(x: 18.48, y: 6.97))
        shape2Path.addCurve(to: CGPoint(x: 9.64, y: 6.26), controlPoint1: CGPoint(x: 17.13, y: 2.56), controlPoint2: CGPoint(x: 12.45, y: 2.97))
        shape2Path.addCurve(to: CGPoint(x: 9.64, y: 17.94), controlPoint1: CGPoint(x: 6.83, y: 9.56), controlPoint2: CGPoint(x: 6.83, y: 14.64))
        shape2Path.addCurve(to: CGPoint(x: 20.39, y: 18.86), controlPoint1: CGPoint(x: 12.45, y: 21.23), controlPoint2: CGPoint(x: 17.13, y: 21.64))
        shape2Path.addCurve(to: CGPoint(x: 17.37, y: 12.1), controlPoint1: CGPoint(x: 18.48, y: 17.23), controlPoint2: CGPoint(x: 17.37, y: 14.74))
        shape2Path.close()
        fillColor18.setFill()
        shape2Path.fill()


        //// Shape 3 Drawing
        let shape3Path = UIBezierPath()
        shape3Path.move(to: CGPoint(x: 33.26, y: 12.1))
        shape3Path.addCurve(to: CGPoint(x: 28.79, y: 19.83), controlPoint1: CGPoint(x: 33.26, y: 15.39), controlPoint2: CGPoint(x: 31.53, y: 18.39))
        shape3Path.addCurve(to: CGPoint(x: 20.42, y: 18.86), controlPoint1: CGPoint(x: 26.06, y: 21.27), controlPoint2: CGPoint(x: 22.81, y: 20.9))
        shape3Path.addCurve(to: CGPoint(x: 23.44, y: 12.1), controlPoint1: CGPoint(x: 22.33, y: 17.23), controlPoint2: CGPoint(x: 23.44, y: 14.74))
        shape3Path.addCurve(to: CGPoint(x: 20.42, y: 5.34), controlPoint1: CGPoint(x: 23.44, y: 9.46), controlPoint2: CGPoint(x: 22.33, y: 6.97))
        shape3Path.addCurve(to: CGPoint(x: 28.79, y: 4.37), controlPoint1: CGPoint(x: 22.81, y: 3.3), controlPoint2: CGPoint(x: 26.06, y: 2.93))
        shape3Path.addCurve(to: CGPoint(x: 33.26, y: 12.1), controlPoint1: CGPoint(x: 31.53, y: 5.81), controlPoint2: CGPoint(x: 33.26, y: 8.81))
        shape3Path.close()
        fillColor21.setFill()
        shape3Path.fill()
        
        context.restoreGState()

    }

    //// Generated Images

    @objc dynamic public class var imageOfAmex: UIImage {
        if Cache.imageOfAmex != nil {
            return Cache.imageOfAmex!
        }

        UIGraphicsBeginImageContextWithOptions(CGSize(width: 40, height: 28), false, 0)
            CreditCardIcons.drawAmex()

        Cache.imageOfAmex = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()

        return Cache.imageOfAmex!
    }

    @objc dynamic public class var imageOfDiners: UIImage {
        if Cache.imageOfDiners != nil {
            return Cache.imageOfDiners!
        }

        UIGraphicsBeginImageContextWithOptions(CGSize(width: 40, height: 28), false, 0)
            CreditCardIcons.drawDiners()

        Cache.imageOfDiners = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()

        return Cache.imageOfDiners!
    }

    @objc dynamic public class var imageOfDiscover: UIImage {
        if Cache.imageOfDiscover != nil {
            return Cache.imageOfDiscover!
        }

        UIGraphicsBeginImageContextWithOptions(CGSize(width: 40, height: 28), false, 0)
            CreditCardIcons.drawDiscover()

        Cache.imageOfDiscover = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()

        return Cache.imageOfDiscover!
    }

    @objc dynamic public class var imageOfUnknown: UIImage {
        if Cache.imageOfUnknown != nil {
            return Cache.imageOfUnknown!
        }

        UIGraphicsBeginImageContextWithOptions(CGSize(width: 40, height: 28), false, 0)
            CreditCardIcons.drawUnknown()

        Cache.imageOfUnknown = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()

        return Cache.imageOfUnknown!
    }

    @objc dynamic public class var imageOfJcb: UIImage {
        if Cache.imageOfJcb != nil {
            return Cache.imageOfJcb!
        }

        UIGraphicsBeginImageContextWithOptions(CGSize(width: 40, height: 28), false, 0)
            CreditCardIcons.drawJcb()

        Cache.imageOfJcb = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()

        return Cache.imageOfJcb!
    }

    @objc dynamic public class var imageOfVisa: UIImage {
        if Cache.imageOfVisa != nil {
            return Cache.imageOfVisa!
        }

        UIGraphicsBeginImageContextWithOptions(CGSize(width: 40, height: 28), false, 0)
            CreditCardIcons.drawVisa()

        Cache.imageOfVisa = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()

        return Cache.imageOfVisa!
    }

    @objc dynamic public class var imageOfMaestro: UIImage {
        if Cache.imageOfMaestro != nil {
            return Cache.imageOfMaestro!
        }

        UIGraphicsBeginImageContextWithOptions(CGSize(width: 40, height: 28), false, 0)
            CreditCardIcons.drawMaestro()

        Cache.imageOfMaestro = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()

        return Cache.imageOfMaestro!
    }

    @objc dynamic public class var imageOfMastercard: UIImage {
        if Cache.imageOfMastercard != nil {
            return Cache.imageOfMastercard!
        }

        UIGraphicsBeginImageContextWithOptions(CGSize(width: 40, height: 28), false, 0)
            CreditCardIcons.drawMastercard()

        Cache.imageOfMastercard = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()

        return Cache.imageOfMastercard!
    }

    //// Customization Infrastructure

    @objc @IBOutlet dynamic var amexTargets: [AnyObject]! {
        get { return Cache.amexTargets }
        set {
            Cache.amexTargets = newValue
            for target: AnyObject in newValue {
                let _ = target.perform(NSSelectorFromString("setImage:"), with: CreditCardIcons.imageOfAmex)
            }
        }
    }

    @objc @IBOutlet dynamic var dinersTargets: [AnyObject]! {
        get { return Cache.dinersTargets }
        set {
            Cache.dinersTargets = newValue
            for target: AnyObject in newValue {
                let _ = target.perform(NSSelectorFromString("setImage:"), with: CreditCardIcons.imageOfDiners)
            }
        }
    }

    @objc @IBOutlet dynamic var discoverTargets: [AnyObject]! {
        get { return Cache.discoverTargets }
        set {
            Cache.discoverTargets = newValue
            for target: AnyObject in newValue {
                let _ = target.perform(NSSelectorFromString("setImage:"), with: CreditCardIcons.imageOfDiscover)
            }
        }
    }

    @objc @IBOutlet dynamic var unknownTargets: [AnyObject]! {
        get { return Cache.unknownTargets }
        set {
            Cache.unknownTargets = newValue
            for target: AnyObject in newValue {
                let _ = target.perform(NSSelectorFromString("setImage:"), with: CreditCardIcons.imageOfUnknown)
            }
        }
    }

    @objc @IBOutlet dynamic var jcbTargets: [AnyObject]! {
        get { return Cache.jcbTargets }
        set {
            Cache.jcbTargets = newValue
            for target: AnyObject in newValue {
                let _ = target.perform(NSSelectorFromString("setImage:"), with: CreditCardIcons.imageOfJcb)
            }
        }
    }

    @objc @IBOutlet dynamic var visaTargets: [AnyObject]! {
        get { return Cache.visaTargets }
        set {
            Cache.visaTargets = newValue
            for target: AnyObject in newValue {
                let _ = target.perform(NSSelectorFromString("setImage:"), with: CreditCardIcons.imageOfVisa)
            }
        }
    }

    @objc @IBOutlet dynamic var maestroTargets: [AnyObject]! {
        get { return Cache.maestroTargets }
        set {
            Cache.maestroTargets = newValue
            for target: AnyObject in newValue {
                let _ = target.perform(NSSelectorFromString("setImage:"), with: CreditCardIcons.imageOfMaestro)
            }
        }
    }

    @objc @IBOutlet dynamic var mastercardTargets: [AnyObject]! {
        get { return Cache.mastercardTargets }
        set {
            Cache.mastercardTargets = newValue
            for target: AnyObject in newValue {
                let _ = target.perform(NSSelectorFromString("setImage:"), with: CreditCardIcons.imageOfMastercard)
            }
        }
    }




    @objc(CreditCardIconsResizingBehavior)
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
