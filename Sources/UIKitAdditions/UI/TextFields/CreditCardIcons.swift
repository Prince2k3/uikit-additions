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

    @objc dynamic public class func drawAmex(frame targetFrame: CGRect = CGRect(x: 0, y: 0, width: 96, height: 68), resizing: ResizingBehavior = .aspectFit) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()!
        
        //// Resize to Target Frame
        context.saveGState()
        let resizedFrame: CGRect = resizing.apply(rect: CGRect(x: 0, y: 0, width: 96, height: 68), target: targetFrame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy(x: resizedFrame.width / 96, y: resizedFrame.height / 68)


        //// Color Declarations
        let fillColor = UIColor(red: 0.145, green: 0.341, blue: 0.839, alpha: 1.000)
        let fillColor2 = UIColor(red: 1.000, green: 1.000, blue: 1.000, alpha: 1.000)

        //// Group
        //// Bezier Drawing
        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: 4.92, y: 0))
        bezierPath.addLine(to: CGPoint(x: 91.08, y: 0))
        bezierPath.addCurve(to: CGPoint(x: 96, y: 5.44), controlPoint1: CGPoint(x: 93.8, y: 0), controlPoint2: CGPoint(x: 96, y: 2.44))
        bezierPath.addLine(to: CGPoint(x: 96, y: 62.56))
        bezierPath.addCurve(to: CGPoint(x: 91.08, y: 68), controlPoint1: CGPoint(x: 96, y: 65.56), controlPoint2: CGPoint(x: 93.8, y: 68))
        bezierPath.addLine(to: CGPoint(x: 4.92, y: 68))
        bezierPath.addCurve(to: CGPoint(x: 0, y: 62.56), controlPoint1: CGPoint(x: 2.2, y: 68), controlPoint2: CGPoint(x: 0, y: 65.56))
        bezierPath.addLine(to: CGPoint(x: 0, y: 5.44))
        bezierPath.addCurve(to: CGPoint(x: 4.92, y: 0), controlPoint1: CGPoint(x: 0, y: 2.44), controlPoint2: CGPoint(x: 2.2, y: 0))
        bezierPath.close()
        fillColor.setFill()
        bezierPath.fill()


        //// Bezier 2 Drawing
        let bezier2Path = UIBezierPath()
        bezier2Path.move(to: CGPoint(x: 0.03, y: 32.05))
        bezier2Path.addLine(to: CGPoint(x: 4.64, y: 32.05))
        bezier2Path.addLine(to: CGPoint(x: 5.68, y: 29.4))
        bezier2Path.addLine(to: CGPoint(x: 8, y: 29.4))
        bezier2Path.addLine(to: CGPoint(x: 9.04, y: 32.05))
        bezier2Path.addLine(to: CGPoint(x: 18.11, y: 32.05))
        bezier2Path.addLine(to: CGPoint(x: 18.11, y: 30.03))
        bezier2Path.addLine(to: CGPoint(x: 18.92, y: 32.06))
        bezier2Path.addLine(to: CGPoint(x: 23.62, y: 32.06))
        bezier2Path.addLine(to: CGPoint(x: 24.43, y: 30))
        bezier2Path.addLine(to: CGPoint(x: 24.43, y: 32.05))
        bezier2Path.addLine(to: CGPoint(x: 46.97, y: 32.05))
        bezier2Path.addLine(to: CGPoint(x: 46.96, y: 27.7))
        bezier2Path.addLine(to: CGPoint(x: 47.39, y: 27.7))
        bezier2Path.addCurve(to: CGPoint(x: 47.79, y: 28.27), controlPoint1: CGPoint(x: 47.7, y: 27.71), controlPoint2: CGPoint(x: 47.79, y: 27.74))
        bezier2Path.addLine(to: CGPoint(x: 47.79, y: 32.05))
        bezier2Path.addLine(to: CGPoint(x: 59.44, y: 32.05))
        bezier2Path.addLine(to: CGPoint(x: 59.44, y: 31.04))
        bezier2Path.addCurve(to: CGPoint(x: 63.77, y: 32.05), controlPoint1: CGPoint(x: 60.38, y: 31.57), controlPoint2: CGPoint(x: 61.84, y: 32.05))
        bezier2Path.addLine(to: CGPoint(x: 68.67, y: 32.05))
        bezier2Path.addLine(to: CGPoint(x: 69.72, y: 29.4))
        bezier2Path.addLine(to: CGPoint(x: 72.04, y: 29.4))
        bezier2Path.addLine(to: CGPoint(x: 73.07, y: 32.05))
        bezier2Path.addLine(to: CGPoint(x: 82.52, y: 32.05))
        bezier2Path.addLine(to: CGPoint(x: 82.52, y: 29.53))
        bezier2Path.addLine(to: CGPoint(x: 83.95, y: 32.05))
        bezier2Path.addLine(to: CGPoint(x: 91.52, y: 32.05))
        bezier2Path.addLine(to: CGPoint(x: 91.52, y: 15.39))
        bezier2Path.addLine(to: CGPoint(x: 84.03, y: 15.39))
        bezier2Path.addLine(to: CGPoint(x: 84.03, y: 17.36))
        bezier2Path.addLine(to: CGPoint(x: 82.98, y: 15.39))
        bezier2Path.addLine(to: CGPoint(x: 75.29, y: 15.39))
        bezier2Path.addLine(to: CGPoint(x: 75.29, y: 17.36))
        bezier2Path.addLine(to: CGPoint(x: 74.33, y: 15.39))
        bezier2Path.addLine(to: CGPoint(x: 63.94, y: 15.39))
        bezier2Path.addCurve(to: CGPoint(x: 59.44, y: 16.37), controlPoint1: CGPoint(x: 62.2, y: 15.39), controlPoint2: CGPoint(x: 60.67, y: 15.65))
        bezier2Path.addLine(to: CGPoint(x: 59.44, y: 15.39))
        bezier2Path.addLine(to: CGPoint(x: 52.27, y: 15.39))
        bezier2Path.addLine(to: CGPoint(x: 52.27, y: 16.37))
        bezier2Path.addCurve(to: CGPoint(x: 49.23, y: 15.39), controlPoint1: CGPoint(x: 51.49, y: 15.63), controlPoint2: CGPoint(x: 50.42, y: 15.39))
        bezier2Path.addLine(to: CGPoint(x: 23.04, y: 15.39))
        bezier2Path.addLine(to: CGPoint(x: 21.29, y: 19.7))
        bezier2Path.addLine(to: CGPoint(x: 19.48, y: 15.39))
        bezier2Path.addLine(to: CGPoint(x: 11.24, y: 15.39))
        bezier2Path.addLine(to: CGPoint(x: 11.24, y: 17.36))
        bezier2Path.addLine(to: CGPoint(x: 10.33, y: 15.39))
        bezier2Path.addLine(to: CGPoint(x: 3.3, y: 15.39))
        bezier2Path.addLine(to: CGPoint(x: 0.03, y: 23.31))
        bezier2Path.addLine(to: CGPoint(x: 0.03, y: 32.05))
        bezier2Path.addLine(to: CGPoint(x: 0.03, y: 32.05))
        bezier2Path.addLine(to: CGPoint(x: 0.03, y: 32.05))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 29.12, y: 29.65))
        bezier2Path.addLine(to: CGPoint(x: 26.35, y: 29.65))
        bezier2Path.addLine(to: CGPoint(x: 26.34, y: 20.29))
        bezier2Path.addLine(to: CGPoint(x: 22.43, y: 29.65))
        bezier2Path.addLine(to: CGPoint(x: 20.07, y: 29.65))
        bezier2Path.addLine(to: CGPoint(x: 16.14, y: 20.29))
        bezier2Path.addLine(to: CGPoint(x: 16.14, y: 29.65))
        bezier2Path.addLine(to: CGPoint(x: 10.66, y: 29.65))
        bezier2Path.addLine(to: CGPoint(x: 9.62, y: 26.99))
        bezier2Path.addLine(to: CGPoint(x: 4.01, y: 26.99))
        bezier2Path.addLine(to: CGPoint(x: 2.96, y: 29.65))
        bezier2Path.addLine(to: CGPoint(x: 0.03, y: 29.65))
        bezier2Path.addLine(to: CGPoint(x: 4.86, y: 17.7))
        bezier2Path.addLine(to: CGPoint(x: 8.87, y: 17.7))
        bezier2Path.addLine(to: CGPoint(x: 13.45, y: 29.02))
        bezier2Path.addLine(to: CGPoint(x: 13.45, y: 17.7))
        bezier2Path.addLine(to: CGPoint(x: 17.86, y: 17.7))
        bezier2Path.addLine(to: CGPoint(x: 21.39, y: 25.81))
        bezier2Path.addLine(to: CGPoint(x: 24.63, y: 17.7))
        bezier2Path.addLine(to: CGPoint(x: 29.12, y: 17.7))
        bezier2Path.addLine(to: CGPoint(x: 29.12, y: 29.65))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 8.7, y: 24.51))
        bezier2Path.addLine(to: CGPoint(x: 6.85, y: 19.74))
        bezier2Path.addLine(to: CGPoint(x: 5.02, y: 24.51))
        bezier2Path.addLine(to: CGPoint(x: 8.7, y: 24.51))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 40.12, y: 29.65))
        bezier2Path.addLine(to: CGPoint(x: 31.11, y: 29.65))
        bezier2Path.addLine(to: CGPoint(x: 31.11, y: 17.7))
        bezier2Path.addLine(to: CGPoint(x: 40.12, y: 17.7))
        bezier2Path.addLine(to: CGPoint(x: 40.12, y: 20.19))
        bezier2Path.addLine(to: CGPoint(x: 33.81, y: 20.19))
        bezier2Path.addLine(to: CGPoint(x: 33.81, y: 22.35))
        bezier2Path.addLine(to: CGPoint(x: 39.97, y: 22.35))
        bezier2Path.addLine(to: CGPoint(x: 39.97, y: 24.79))
        bezier2Path.addLine(to: CGPoint(x: 33.81, y: 24.79))
        bezier2Path.addLine(to: CGPoint(x: 33.81, y: 27.18))
        bezier2Path.addLine(to: CGPoint(x: 40.12, y: 27.18))
        bezier2Path.addLine(to: CGPoint(x: 40.12, y: 29.65))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 52.82, y: 20.92))
        bezier2Path.addCurve(to: CGPoint(x: 50.92, y: 24.11), controlPoint1: CGPoint(x: 52.82, y: 22.83), controlPoint2: CGPoint(x: 51.62, y: 23.81))
        bezier2Path.addCurve(to: CGPoint(x: 52.25, y: 25.11), controlPoint1: CGPoint(x: 51.51, y: 24.34), controlPoint2: CGPoint(x: 52.01, y: 24.76))
        bezier2Path.addCurve(to: CGPoint(x: 52.7, y: 27.3), controlPoint1: CGPoint(x: 52.63, y: 25.71), controlPoint2: CGPoint(x: 52.7, y: 26.24))
        bezier2Path.addLine(to: CGPoint(x: 52.7, y: 29.65))
        bezier2Path.addLine(to: CGPoint(x: 49.98, y: 29.65))
        bezier2Path.addLine(to: CGPoint(x: 49.97, y: 28.14))
        bezier2Path.addCurve(to: CGPoint(x: 49.54, y: 25.82), controlPoint1: CGPoint(x: 49.97, y: 27.43), controlPoint2: CGPoint(x: 50.03, y: 26.39))
        bezier2Path.addCurve(to: CGPoint(x: 47.58, y: 25.31), controlPoint1: CGPoint(x: 49.15, y: 25.4), controlPoint2: CGPoint(x: 48.55, y: 25.31))
        bezier2Path.addLine(to: CGPoint(x: 44.68, y: 25.31))
        bezier2Path.addLine(to: CGPoint(x: 44.68, y: 29.65))
        bezier2Path.addLine(to: CGPoint(x: 41.98, y: 29.65))
        bezier2Path.addLine(to: CGPoint(x: 41.98, y: 17.7))
        bezier2Path.addLine(to: CGPoint(x: 48.19, y: 17.7))
        bezier2Path.addCurve(to: CGPoint(x: 51.45, y: 18.28), controlPoint1: CGPoint(x: 49.57, y: 17.7), controlPoint2: CGPoint(x: 50.58, y: 17.74))
        bezier2Path.addCurve(to: CGPoint(x: 52.82, y: 20.92), controlPoint1: CGPoint(x: 52.31, y: 18.81), controlPoint2: CGPoint(x: 52.82, y: 19.59))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 49.41, y: 22.7))
        bezier2Path.addCurve(to: CGPoint(x: 48.08, y: 22.94), controlPoint1: CGPoint(x: 49.04, y: 22.93), controlPoint2: CGPoint(x: 48.6, y: 22.94))
        bezier2Path.addLine(to: CGPoint(x: 44.8, y: 22.94))
        bezier2Path.addLine(to: CGPoint(x: 44.8, y: 20.29))
        bezier2Path.addLine(to: CGPoint(x: 48.12, y: 20.29))
        bezier2Path.addCurve(to: CGPoint(x: 49.4, y: 20.5), controlPoint1: CGPoint(x: 48.59, y: 20.29), controlPoint2: CGPoint(x: 49.08, y: 20.31))
        bezier2Path.addCurve(to: CGPoint(x: 49.97, y: 21.56), controlPoint1: CGPoint(x: 49.75, y: 20.68), controlPoint2: CGPoint(x: 49.97, y: 21.05))
        bezier2Path.addCurve(to: CGPoint(x: 49.41, y: 22.7), controlPoint1: CGPoint(x: 49.97, y: 22.08), controlPoint2: CGPoint(x: 49.76, y: 22.5))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 57.14, y: 29.65))
        bezier2Path.addLine(to: CGPoint(x: 54.39, y: 29.65))
        bezier2Path.addLine(to: CGPoint(x: 54.39, y: 17.7))
        bezier2Path.addLine(to: CGPoint(x: 57.14, y: 17.7))
        bezier2Path.addLine(to: CGPoint(x: 57.14, y: 29.65))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 89.09, y: 29.65))
        bezier2Path.addLine(to: CGPoint(x: 85.27, y: 29.65))
        bezier2Path.addLine(to: CGPoint(x: 80.16, y: 20.68))
        bezier2Path.addLine(to: CGPoint(x: 80.16, y: 29.65))
        bezier2Path.addLine(to: CGPoint(x: 74.66, y: 29.65))
        bezier2Path.addLine(to: CGPoint(x: 73.61, y: 26.99))
        bezier2Path.addLine(to: CGPoint(x: 68.01, y: 26.99))
        bezier2Path.addLine(to: CGPoint(x: 66.99, y: 29.65))
        bezier2Path.addLine(to: CGPoint(x: 63.84, y: 29.65))
        bezier2Path.addCurve(to: CGPoint(x: 59.93, y: 28.33), controlPoint1: CGPoint(x: 62.53, y: 29.65), controlPoint2: CGPoint(x: 60.87, y: 29.34))
        bezier2Path.addCurve(to: CGPoint(x: 58.49, y: 23.77), controlPoint1: CGPoint(x: 58.98, y: 27.31), controlPoint2: CGPoint(x: 58.49, y: 25.94))
        bezier2Path.addCurve(to: CGPoint(x: 59.94, y: 19.1), controlPoint1: CGPoint(x: 58.49, y: 22), controlPoint2: CGPoint(x: 58.78, y: 20.38))
        bezier2Path.addCurve(to: CGPoint(x: 64.04, y: 17.7), controlPoint1: CGPoint(x: 60.81, y: 18.14), controlPoint2: CGPoint(x: 62.18, y: 17.7))
        bezier2Path.addLine(to: CGPoint(x: 66.65, y: 17.7))
        bezier2Path.addLine(to: CGPoint(x: 66.65, y: 20.26))
        bezier2Path.addLine(to: CGPoint(x: 64.09, y: 20.26))
        bezier2Path.addCurve(to: CGPoint(x: 62.01, y: 20.97), controlPoint1: CGPoint(x: 63.11, y: 20.26), controlPoint2: CGPoint(x: 62.55, y: 20.42))
        bezier2Path.addCurve(to: CGPoint(x: 61.24, y: 23.68), controlPoint1: CGPoint(x: 61.55, y: 21.47), controlPoint2: CGPoint(x: 61.24, y: 22.43))
        bezier2Path.addCurve(to: CGPoint(x: 61.98, y: 26.48), controlPoint1: CGPoint(x: 61.24, y: 24.96), controlPoint2: CGPoint(x: 61.48, y: 25.88))
        bezier2Path.addCurve(to: CGPoint(x: 63.86, y: 27.1), controlPoint1: CGPoint(x: 62.4, y: 26.96), controlPoint2: CGPoint(x: 63.15, y: 27.1))
        bezier2Path.addLine(to: CGPoint(x: 65.07, y: 27.1))
        bezier2Path.addLine(to: CGPoint(x: 68.87, y: 17.71))
        bezier2Path.addLine(to: CGPoint(x: 72.91, y: 17.71))
        bezier2Path.addLine(to: CGPoint(x: 77.48, y: 29))
        bezier2Path.addLine(to: CGPoint(x: 77.48, y: 17.71))
        bezier2Path.addLine(to: CGPoint(x: 81.59, y: 17.71))
        bezier2Path.addLine(to: CGPoint(x: 86.33, y: 26.02))
        bezier2Path.addLine(to: CGPoint(x: 86.33, y: 17.71))
        bezier2Path.addLine(to: CGPoint(x: 89.09, y: 17.71))
        bezier2Path.addLine(to: CGPoint(x: 89.09, y: 29.65))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 72.7, y: 24.51))
        bezier2Path.addLine(to: CGPoint(x: 70.83, y: 19.74))
        bezier2Path.addLine(to: CGPoint(x: 68.97, y: 24.51))
        bezier2Path.addLine(to: CGPoint(x: 72.7, y: 24.51))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 95.96, y: 48.73))
        bezier2Path.addCurve(to: CGPoint(x: 92.3, y: 50.25), controlPoint1: CGPoint(x: 95.31, y: 49.74), controlPoint2: CGPoint(x: 94.03, y: 50.25))
        bezier2Path.addLine(to: CGPoint(x: 87.09, y: 50.25))
        bezier2Path.addLine(to: CGPoint(x: 87.09, y: 47.69))
        bezier2Path.addLine(to: CGPoint(x: 92.28, y: 47.69))
        bezier2Path.addCurve(to: CGPoint(x: 93.37, y: 47.4), controlPoint1: CGPoint(x: 92.8, y: 47.69), controlPoint2: CGPoint(x: 93.16, y: 47.62))
        bezier2Path.addCurve(to: CGPoint(x: 93.69, y: 46.62), controlPoint1: CGPoint(x: 93.58, y: 47.2), controlPoint2: CGPoint(x: 93.69, y: 46.91))
        bezier2Path.addCurve(to: CGPoint(x: 93.36, y: 45.83), controlPoint1: CGPoint(x: 93.69, y: 46.27), controlPoint2: CGPoint(x: 93.56, y: 45.99))
        bezier2Path.addCurve(to: CGPoint(x: 92.41, y: 45.56), controlPoint1: CGPoint(x: 93.17, y: 45.64), controlPoint2: CGPoint(x: 92.88, y: 45.56))
        bezier2Path.addCurve(to: CGPoint(x: 86.72, y: 41.86), controlPoint1: CGPoint(x: 89.88, y: 45.47), controlPoint2: CGPoint(x: 86.72, y: 45.64))
        bezier2Path.addCurve(to: CGPoint(x: 90.59, y: 38.31), controlPoint1: CGPoint(x: 86.72, y: 40.13), controlPoint2: CGPoint(x: 87.76, y: 38.31))
        bezier2Path.addLine(to: CGPoint(x: 95.96, y: 38.31))
        bezier2Path.addLine(to: CGPoint(x: 95.96, y: 35.93))
        bezier2Path.addLine(to: CGPoint(x: 90.97, y: 35.93))
        bezier2Path.addCurve(to: CGPoint(x: 87.6, y: 36.9), controlPoint1: CGPoint(x: 89.46, y: 35.93), controlPoint2: CGPoint(x: 88.37, y: 36.31))
        bezier2Path.addLine(to: CGPoint(x: 87.6, y: 35.93))
        bezier2Path.addLine(to: CGPoint(x: 80.21, y: 35.93))
        bezier2Path.addCurve(to: CGPoint(x: 76.99, y: 36.9), controlPoint1: CGPoint(x: 79.03, y: 35.93), controlPoint2: CGPoint(x: 77.65, y: 36.24))
        bezier2Path.addLine(to: CGPoint(x: 76.99, y: 35.93))
        bezier2Path.addLine(to: CGPoint(x: 63.81, y: 35.93))
        bezier2Path.addLine(to: CGPoint(x: 63.81, y: 36.9))
        bezier2Path.addCurve(to: CGPoint(x: 60.17, y: 35.93), controlPoint1: CGPoint(x: 62.76, y: 36.1), controlPoint2: CGPoint(x: 60.99, y: 35.93))
        bezier2Path.addLine(to: CGPoint(x: 51.47, y: 35.93))
        bezier2Path.addLine(to: CGPoint(x: 51.47, y: 36.9))
        bezier2Path.addCurve(to: CGPoint(x: 47.67, y: 35.93), controlPoint1: CGPoint(x: 50.64, y: 36.05), controlPoint2: CGPoint(x: 48.8, y: 35.93))
        bezier2Path.addLine(to: CGPoint(x: 37.94, y: 35.93))
        bezier2Path.addLine(to: CGPoint(x: 35.71, y: 38.48))
        bezier2Path.addLine(to: CGPoint(x: 33.63, y: 35.93))
        bezier2Path.addLine(to: CGPoint(x: 19.09, y: 35.93))
        bezier2Path.addLine(to: CGPoint(x: 19.09, y: 52.6))
        bezier2Path.addLine(to: CGPoint(x: 33.35, y: 52.6))
        bezier2Path.addLine(to: CGPoint(x: 35.65, y: 50.01))
        bezier2Path.addLine(to: CGPoint(x: 37.81, y: 52.6))
        bezier2Path.addLine(to: CGPoint(x: 46.6, y: 52.61))
        bezier2Path.addLine(to: CGPoint(x: 46.6, y: 48.69))
        bezier2Path.addLine(to: CGPoint(x: 47.47, y: 48.69))
        bezier2Path.addCurve(to: CGPoint(x: 51.22, y: 48.1), controlPoint1: CGPoint(x: 48.63, y: 48.71), controlPoint2: CGPoint(x: 50.01, y: 48.66))
        bezier2Path.addLine(to: CGPoint(x: 51.22, y: 52.6))
        bezier2Path.addLine(to: CGPoint(x: 58.48, y: 52.6))
        bezier2Path.addLine(to: CGPoint(x: 58.48, y: 48.25))
        bezier2Path.addLine(to: CGPoint(x: 58.83, y: 48.25))
        bezier2Path.addCurve(to: CGPoint(x: 59.32, y: 48.75), controlPoint1: CGPoint(x: 59.27, y: 48.25), controlPoint2: CGPoint(x: 59.32, y: 48.27))
        bezier2Path.addLine(to: CGPoint(x: 59.32, y: 52.6))
        bezier2Path.addLine(to: CGPoint(x: 81.35, y: 52.6))
        bezier2Path.addCurve(to: CGPoint(x: 85.02, y: 51.53), controlPoint1: CGPoint(x: 82.75, y: 52.6), controlPoint2: CGPoint(x: 84.21, y: 52.22))
        bezier2Path.addLine(to: CGPoint(x: 85.02, y: 52.6))
        bezier2Path.addLine(to: CGPoint(x: 92.01, y: 52.6))
        bezier2Path.addCurve(to: CGPoint(x: 95.96, y: 51.83), controlPoint1: CGPoint(x: 93.46, y: 52.6), controlPoint2: CGPoint(x: 94.88, y: 52.38))
        bezier2Path.addLine(to: CGPoint(x: 95.96, y: 48.73))
        bezier2Path.addLine(to: CGPoint(x: 95.96, y: 48.73))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 52.28, y: 42.31))
        bezier2Path.addCurve(to: CGPoint(x: 47.58, y: 46.32), controlPoint1: CGPoint(x: 52.28, y: 45.63), controlPoint2: CGPoint(x: 49.94, y: 46.32))
        bezier2Path.addLine(to: CGPoint(x: 44.22, y: 46.32))
        bezier2Path.addLine(to: CGPoint(x: 44.22, y: 50.33))
        bezier2Path.addLine(to: CGPoint(x: 38.97, y: 50.33))
        bezier2Path.addLine(to: CGPoint(x: 35.65, y: 46.37))
        bezier2Path.addLine(to: CGPoint(x: 32.2, y: 50.33))
        bezier2Path.addLine(to: CGPoint(x: 21.52, y: 50.33))
        bezier2Path.addLine(to: CGPoint(x: 21.52, y: 38.38))
        bezier2Path.addLine(to: CGPoint(x: 32.37, y: 38.38))
        bezier2Path.addLine(to: CGPoint(x: 35.68, y: 42.29))
        bezier2Path.addLine(to: CGPoint(x: 39.11, y: 38.38))
        bezier2Path.addLine(to: CGPoint(x: 47.73, y: 38.38))
        bezier2Path.addCurve(to: CGPoint(x: 52.28, y: 42.31), controlPoint1: CGPoint(x: 49.87, y: 38.38), controlPoint2: CGPoint(x: 52.28, y: 39))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 30.84, y: 47.81))
        bezier2Path.addLine(to: CGPoint(x: 24.2, y: 47.81))
        bezier2Path.addLine(to: CGPoint(x: 24.2, y: 45.43))
        bezier2Path.addLine(to: CGPoint(x: 30.13, y: 45.43))
        bezier2Path.addLine(to: CGPoint(x: 30.13, y: 43))
        bezier2Path.addLine(to: CGPoint(x: 24.2, y: 43))
        bezier2Path.addLine(to: CGPoint(x: 24.2, y: 40.82))
        bezier2Path.addLine(to: CGPoint(x: 30.97, y: 40.82))
        bezier2Path.addLine(to: CGPoint(x: 33.92, y: 44.31))
        bezier2Path.addLine(to: CGPoint(x: 30.84, y: 47.81))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 41.52, y: 49.18))
        bezier2Path.addLine(to: CGPoint(x: 37.38, y: 44.31))
        bezier2Path.addLine(to: CGPoint(x: 41.52, y: 39.6))
        bezier2Path.addLine(to: CGPoint(x: 41.52, y: 49.18))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 47.64, y: 43.87))
        bezier2Path.addLine(to: CGPoint(x: 44.16, y: 43.87))
        bezier2Path.addLine(to: CGPoint(x: 44.16, y: 40.82))
        bezier2Path.addLine(to: CGPoint(x: 47.67, y: 40.82))
        bezier2Path.addCurve(to: CGPoint(x: 49.32, y: 42.29), controlPoint1: CGPoint(x: 48.65, y: 40.82), controlPoint2: CGPoint(x: 49.32, y: 41.24))
        bezier2Path.addCurve(to: CGPoint(x: 47.64, y: 43.87), controlPoint1: CGPoint(x: 49.32, y: 43.32), controlPoint2: CGPoint(x: 48.68, y: 43.87))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 65.9, y: 38.38))
        bezier2Path.addLine(to: CGPoint(x: 74.9, y: 38.38))
        bezier2Path.addLine(to: CGPoint(x: 74.9, y: 40.85))
        bezier2Path.addLine(to: CGPoint(x: 68.59, y: 40.85))
        bezier2Path.addLine(to: CGPoint(x: 68.59, y: 43.02))
        bezier2Path.addLine(to: CGPoint(x: 74.75, y: 43.02))
        bezier2Path.addLine(to: CGPoint(x: 74.75, y: 45.46))
        bezier2Path.addLine(to: CGPoint(x: 68.59, y: 45.46))
        bezier2Path.addLine(to: CGPoint(x: 68.59, y: 47.83))
        bezier2Path.addLine(to: CGPoint(x: 74.9, y: 47.85))
        bezier2Path.addLine(to: CGPoint(x: 74.9, y: 50.33))
        bezier2Path.addLine(to: CGPoint(x: 65.9, y: 50.33))
        bezier2Path.addLine(to: CGPoint(x: 65.9, y: 38.38))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 62.44, y: 44.77))
        bezier2Path.addCurve(to: CGPoint(x: 63.76, y: 45.78), controlPoint1: CGPoint(x: 63.04, y: 45.01), controlPoint2: CGPoint(x: 63.53, y: 45.43))
        bezier2Path.addCurve(to: CGPoint(x: 64.21, y: 47.96), controlPoint1: CGPoint(x: 64.14, y: 46.36), controlPoint2: CGPoint(x: 64.2, y: 46.9))
        bezier2Path.addLine(to: CGPoint(x: 64.21, y: 50.33))
        bezier2Path.addLine(to: CGPoint(x: 61.5, y: 50.33))
        bezier2Path.addLine(to: CGPoint(x: 61.5, y: 48.83))
        bezier2Path.addCurve(to: CGPoint(x: 61.07, y: 46.49), controlPoint1: CGPoint(x: 61.5, y: 48.11), controlPoint2: CGPoint(x: 61.57, y: 47.05))
        bezier2Path.addCurve(to: CGPoint(x: 59.09, y: 45.96), controlPoint1: CGPoint(x: 60.67, y: 46.06), controlPoint2: CGPoint(x: 60.07, y: 45.96))
        bezier2Path.addLine(to: CGPoint(x: 56.21, y: 45.96))
        bezier2Path.addLine(to: CGPoint(x: 56.21, y: 50.33))
        bezier2Path.addLine(to: CGPoint(x: 53.5, y: 50.33))
        bezier2Path.addLine(to: CGPoint(x: 53.5, y: 38.38))
        bezier2Path.addLine(to: CGPoint(x: 59.72, y: 38.38))
        bezier2Path.addCurve(to: CGPoint(x: 62.97, y: 38.94), controlPoint1: CGPoint(x: 61.09, y: 38.38), controlPoint2: CGPoint(x: 62.08, y: 38.44))
        bezier2Path.addCurve(to: CGPoint(x: 64.35, y: 41.59), controlPoint1: CGPoint(x: 63.82, y: 39.48), controlPoint2: CGPoint(x: 64.35, y: 40.23))
        bezier2Path.addCurve(to: CGPoint(x: 62.44, y: 44.77), controlPoint1: CGPoint(x: 64.35, y: 43.5), controlPoint2: CGPoint(x: 63.15, y: 44.47))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 60.92, y: 43.26))
        bezier2Path.addCurve(to: CGPoint(x: 59.59, y: 43.51), controlPoint1: CGPoint(x: 60.56, y: 43.49), controlPoint2: CGPoint(x: 60.11, y: 43.51))
        bezier2Path.addLine(to: CGPoint(x: 56.31, y: 43.51))
        bezier2Path.addLine(to: CGPoint(x: 56.31, y: 40.82))
        bezier2Path.addLine(to: CGPoint(x: 59.63, y: 40.82))
        bezier2Path.addCurve(to: CGPoint(x: 60.92, y: 41.04), controlPoint1: CGPoint(x: 60.11, y: 40.82), controlPoint2: CGPoint(x: 60.59, y: 40.84))
        bezier2Path.addCurve(to: CGPoint(x: 61.48, y: 42.11), controlPoint1: CGPoint(x: 61.27, y: 41.23), controlPoint2: CGPoint(x: 61.48, y: 41.6))
        bezier2Path.addCurve(to: CGPoint(x: 60.92, y: 43.26), controlPoint1: CGPoint(x: 61.48, y: 42.63), controlPoint2: CGPoint(x: 61.27, y: 43.04))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 85.27, y: 44.02))
        bezier2Path.addCurve(to: CGPoint(x: 86.07, y: 46.55), controlPoint1: CGPoint(x: 85.79, y: 44.6), controlPoint2: CGPoint(x: 86.07, y: 45.32))
        bezier2Path.addCurve(to: CGPoint(x: 81.84, y: 50.32), controlPoint1: CGPoint(x: 86.07, y: 49.12), controlPoint2: CGPoint(x: 84.56, y: 50.32))
        bezier2Path.addLine(to: CGPoint(x: 76.58, y: 50.32))
        bezier2Path.addLine(to: CGPoint(x: 76.58, y: 47.76))
        bezier2Path.addLine(to: CGPoint(x: 81.81, y: 47.76))
        bezier2Path.addCurve(to: CGPoint(x: 82.92, y: 47.47), controlPoint1: CGPoint(x: 82.33, y: 47.76), controlPoint2: CGPoint(x: 82.69, y: 47.69))
        bezier2Path.addCurve(to: CGPoint(x: 83.23, y: 46.69), controlPoint1: CGPoint(x: 83.1, y: 47.28), controlPoint2: CGPoint(x: 83.23, y: 47.01))
        bezier2Path.addCurve(to: CGPoint(x: 82.91, y: 45.9), controlPoint1: CGPoint(x: 83.23, y: 46.34), controlPoint2: CGPoint(x: 83.09, y: 46.06))
        bezier2Path.addCurve(to: CGPoint(x: 81.94, y: 45.63), controlPoint1: CGPoint(x: 82.7, y: 45.71), controlPoint2: CGPoint(x: 82.41, y: 45.63))
        bezier2Path.addCurve(to: CGPoint(x: 76.26, y: 41.93), controlPoint1: CGPoint(x: 79.42, y: 45.54), controlPoint2: CGPoint(x: 76.26, y: 45.71))
        bezier2Path.addCurve(to: CGPoint(x: 80.12, y: 38.38), controlPoint1: CGPoint(x: 76.26, y: 40.2), controlPoint2: CGPoint(x: 77.29, y: 38.38))
        bezier2Path.addLine(to: CGPoint(x: 85.53, y: 38.38))
        bezier2Path.addLine(to: CGPoint(x: 85.53, y: 40.92))
        bezier2Path.addLine(to: CGPoint(x: 80.58, y: 40.92))
        bezier2Path.addCurve(to: CGPoint(x: 79.5, y: 41.14), controlPoint1: CGPoint(x: 80.09, y: 40.92), controlPoint2: CGPoint(x: 79.77, y: 40.94))
        bezier2Path.addCurve(to: CGPoint(x: 79.09, y: 41.99), controlPoint1: CGPoint(x: 79.2, y: 41.33), controlPoint2: CGPoint(x: 79.09, y: 41.62))
        bezier2Path.addCurve(to: CGPoint(x: 79.68, y: 42.89), controlPoint1: CGPoint(x: 79.09, y: 42.45), controlPoint2: CGPoint(x: 79.34, y: 42.75))
        bezier2Path.addCurve(to: CGPoint(x: 80.73, y: 43.02), controlPoint1: CGPoint(x: 79.97, y: 42.99), controlPoint2: CGPoint(x: 80.27, y: 43.02))
        bezier2Path.addLine(to: CGPoint(x: 82.19, y: 43.06))
        bezier2Path.addCurve(to: CGPoint(x: 85.27, y: 44.02), controlPoint1: CGPoint(x: 83.65, y: 43.1), controlPoint2: CGPoint(x: 84.65, y: 43.37))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 95.97, y: 40.82))
        bezier2Path.addLine(to: CGPoint(x: 91.05, y: 40.82))
        bezier2Path.addCurve(to: CGPoint(x: 89.96, y: 41.04), controlPoint1: CGPoint(x: 90.56, y: 40.82), controlPoint2: CGPoint(x: 90.24, y: 40.84))
        bezier2Path.addCurve(to: CGPoint(x: 89.57, y: 41.9), controlPoint1: CGPoint(x: 89.68, y: 41.23), controlPoint2: CGPoint(x: 89.57, y: 41.52))
        bezier2Path.addCurve(to: CGPoint(x: 90.16, y: 42.79), controlPoint1: CGPoint(x: 89.57, y: 42.35), controlPoint2: CGPoint(x: 89.81, y: 42.66))
        bezier2Path.addCurve(to: CGPoint(x: 91.2, y: 42.93), controlPoint1: CGPoint(x: 90.44, y: 42.89), controlPoint2: CGPoint(x: 90.75, y: 42.93))
        bezier2Path.addLine(to: CGPoint(x: 92.66, y: 42.97))
        bezier2Path.addCurve(to: CGPoint(x: 95.72, y: 43.93), controlPoint1: CGPoint(x: 94.13, y: 43.01), controlPoint2: CGPoint(x: 95.12, y: 43.27))
        bezier2Path.addCurve(to: CGPoint(x: 95.97, y: 44.22), controlPoint1: CGPoint(x: 95.83, y: 44.02), controlPoint2: CGPoint(x: 95.89, y: 44.12))
        bezier2Path.addLine(to: CGPoint(x: 95.97, y: 40.82))
        bezier2Path.addLine(to: CGPoint(x: 95.97, y: 40.82))
        bezier2Path.close()
        fillColor2.setFill()
        bezier2Path.fill()
        
        context.restoreGState()

    }

    @objc dynamic public class func drawDiners(frame targetFrame: CGRect = CGRect(x: 0, y: 0, width: 96, height: 68), resizing: ResizingBehavior = .aspectFit) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()!
        
        //// Resize to Target Frame
        context.saveGState()
        let resizedFrame: CGRect = resizing.apply(rect: CGRect(x: 0, y: 0, width: 96, height: 68), target: targetFrame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy(x: resizedFrame.width / 96, y: resizedFrame.height / 68)


        //// Color Declarations
        let fillColor2 = UIColor(red: 1.000, green: 1.000, blue: 1.000, alpha: 1.000)
        let fillColor3 = UIColor(red: 0.000, green: 0.475, blue: 0.745, alpha: 1.000)

        //// Group
        //// Bezier Drawing
        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: 4.92, y: 0))
        bezierPath.addLine(to: CGPoint(x: 91.08, y: 0))
        bezierPath.addCurve(to: CGPoint(x: 96, y: 5.44), controlPoint1: CGPoint(x: 93.8, y: 0), controlPoint2: CGPoint(x: 96, y: 2.44))
        bezierPath.addLine(to: CGPoint(x: 96, y: 62.56))
        bezierPath.addCurve(to: CGPoint(x: 91.08, y: 68), controlPoint1: CGPoint(x: 96, y: 65.56), controlPoint2: CGPoint(x: 93.8, y: 68))
        bezierPath.addLine(to: CGPoint(x: 4.92, y: 68))
        bezierPath.addCurve(to: CGPoint(x: 0, y: 62.56), controlPoint1: CGPoint(x: 2.2, y: 68), controlPoint2: CGPoint(x: 0, y: 65.56))
        bezierPath.addLine(to: CGPoint(x: 0, y: 5.44))
        bezierPath.addCurve(to: CGPoint(x: 4.92, y: 0), controlPoint1: CGPoint(x: 0, y: 2.44), controlPoint2: CGPoint(x: 2.2, y: 0))
        bezierPath.close()
        fillColor3.setFill()
        bezierPath.fill()


        //// Bezier 2 Drawing
        let bezier2Path = UIBezierPath()
        bezier2Path.move(to: CGPoint(x: 73.84, y: 34.2))
        bezier2Path.addCurve(to: CGPoint(x: 52.43, y: 11.34), controlPoint1: CGPoint(x: 73.84, y: 20.68), controlPoint2: CGPoint(x: 63.62, y: 11.33))
        bezier2Path.addLine(to: CGPoint(x: 42.8, y: 11.34))
        bezier2Path.addCurve(to: CGPoint(x: 22.16, y: 34.2), controlPoint1: CGPoint(x: 31.48, y: 11.33), controlPoint2: CGPoint(x: 22.16, y: 20.68))
        bezier2Path.addCurve(to: CGPoint(x: 42.8, y: 56.66), controlPoint1: CGPoint(x: 22.16, y: 46.56), controlPoint2: CGPoint(x: 31.48, y: 56.72))
        bezier2Path.addLine(to: CGPoint(x: 52.43, y: 56.66))
        bezier2Path.addCurve(to: CGPoint(x: 73.84, y: 34.2), controlPoint1: CGPoint(x: 63.62, y: 56.72), controlPoint2: CGPoint(x: 73.84, y: 46.56))
        bezier2Path.close()
        fillColor2.setFill()
        bezier2Path.fill()


        //// Oval Drawing
        let ovalPath = UIBezierPath(ovalIn: CGRect(x: 23.75, y: 13.11, width: 38.1, height: 41.5))
        fillColor3.setFill()
        ovalPath.fill()


        //// Bezier 3 Drawing
        let bezier3Path = UIBezierPath()
        bezier3Path.move(to: CGPoint(x: 31.02, y: 33.95))
        bezier3Path.addCurve(to: CGPoint(x: 38.65, y: 21.67), controlPoint1: CGPoint(x: 31.03, y: 28.34), controlPoint2: CGPoint(x: 34.19, y: 23.57))
        bezier3Path.addLine(to: CGPoint(x: 38.65, y: 46.22))
        bezier3Path.addCurve(to: CGPoint(x: 31.02, y: 33.95), controlPoint1: CGPoint(x: 34.19, y: 44.32), controlPoint2: CGPoint(x: 31.03, y: 39.55))
        bezier3Path.close()
        bezier3Path.move(to: CGPoint(x: 47.15, y: 46.22))
        bezier3Path.addLine(to: CGPoint(x: 47.15, y: 21.67))
        bezier3Path.addCurve(to: CGPoint(x: 54.78, y: 33.95), controlPoint1: CGPoint(x: 51.6, y: 23.56), controlPoint2: CGPoint(x: 54.77, y: 28.34))
        bezier3Path.addCurve(to: CGPoint(x: 47.15, y: 46.22), controlPoint1: CGPoint(x: 54.77, y: 39.55), controlPoint2: CGPoint(x: 51.6, y: 44.33))
        bezier3Path.addLine(to: CGPoint(x: 47.15, y: 46.22))
        bezier3Path.close()
        fillColor2.setFill()
        bezier3Path.fill()
        
        context.restoreGState()

    }

    @objc dynamic public class func drawDiscover(frame targetFrame: CGRect = CGRect(x: 0, y: 0, width: 96, height: 68), resizing: ResizingBehavior = .aspectFit) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()!
        
        //// Resize to Target Frame
        context.saveGState()
        let resizedFrame: CGRect = resizing.apply(rect: CGRect(x: 0, y: 0, width: 96, height: 68), target: targetFrame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy(x: resizedFrame.width / 96, y: resizedFrame.height / 68)


        //// Color Declarations
        let fillColor2 = UIColor(red: 1.000, green: 1.000, blue: 1.000, alpha: 1.000)
        let fillColor4 = UIColor(red: 0.302, green: 0.302, blue: 0.302, alpha: 1.000)
        let fillColor5 = UIColor(red: 0.957, green: 0.447, blue: 0.086, alpha: 1.000)

        //// Group
        //// Bezier Drawing
        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: 6.77, y: 0))
        bezierPath.addCurve(to: CGPoint(x: 0, y: 7.47), controlPoint1: CGPoint(x: 3.03, y: 0), controlPoint2: CGPoint(x: 0, y: 3.34))
        bezierPath.addLine(to: CGPoint(x: 0, y: 60.53))
        bezierPath.addCurve(to: CGPoint(x: 6.77, y: 68), controlPoint1: CGPoint(x: 0, y: 64.66), controlPoint2: CGPoint(x: 3.03, y: 68))
        bezierPath.addLine(to: CGPoint(x: 89.23, y: 68))
        bezierPath.addCurve(to: CGPoint(x: 96, y: 60.53), controlPoint1: CGPoint(x: 92.97, y: 68), controlPoint2: CGPoint(x: 96, y: 64.66))
        bezierPath.addLine(to: CGPoint(x: 96, y: 7.47))
        bezierPath.addCurve(to: CGPoint(x: 89.23, y: 0), controlPoint1: CGPoint(x: 96, y: 3.34), controlPoint2: CGPoint(x: 92.97, y: 0))
        bezierPath.addLine(to: CGPoint(x: 6.77, y: 0))
        bezierPath.close()
        bezierPath.usesEvenOddFillRule = true
        fillColor4.setFill()
        bezierPath.fill()


        //// Bezier 2 Drawing
        let bezier2Path = UIBezierPath()
        bezier2Path.move(to: CGPoint(x: 40.26, y: 21.97))
        bezier2Path.addCurve(to: CGPoint(x: 43.37, y: 22.8), controlPoint1: CGPoint(x: 41.35, y: 21.97), controlPoint2: CGPoint(x: 42.26, y: 22.22))
        bezier2Path.addLine(to: CGPoint(x: 43.37, y: 25.89))
        bezier2Path.addCurve(to: CGPoint(x: 40.2, y: 24.37), controlPoint1: CGPoint(x: 42.32, y: 24.82), controlPoint2: CGPoint(x: 41.41, y: 24.37))
        bezier2Path.addCurve(to: CGPoint(x: 35.97, y: 29), controlPoint1: CGPoint(x: 37.83, y: 24.37), controlPoint2: CGPoint(x: 35.97, y: 26.41))
        bezier2Path.addCurve(to: CGPoint(x: 40.32, y: 33.64), controlPoint1: CGPoint(x: 35.97, y: 31.72), controlPoint2: CGPoint(x: 37.78, y: 33.64))
        bezier2Path.addCurve(to: CGPoint(x: 43.37, y: 32.16), controlPoint1: CGPoint(x: 41.47, y: 33.64), controlPoint2: CGPoint(x: 42.36, y: 33.21))
        bezier2Path.addLine(to: CGPoint(x: 43.37, y: 35.25))
        bezier2Path.addCurve(to: CGPoint(x: 40.2, y: 36.04), controlPoint1: CGPoint(x: 42.23, y: 35.81), controlPoint2: CGPoint(x: 41.29, y: 36.04))
        bezier2Path.addCurve(to: CGPoint(x: 33.36, y: 29.01), controlPoint1: CGPoint(x: 36.36, y: 36.04), controlPoint2: CGPoint(x: 33.36, y: 32.97))
        bezier2Path.addCurve(to: CGPoint(x: 40.26, y: 21.97), controlPoint1: CGPoint(x: 33.36, y: 25.1), controlPoint2: CGPoint(x: 36.43, y: 21.97))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 28.31, y: 22.06))
        bezier2Path.addCurve(to: CGPoint(x: 32.12, y: 23.55), controlPoint1: CGPoint(x: 29.73, y: 22.06), controlPoint2: CGPoint(x: 31.03, y: 22.56))
        bezier2Path.addLine(to: CGPoint(x: 30.8, y: 25.35))
        bezier2Path.addCurve(to: CGPoint(x: 28.76, y: 24.26), controlPoint1: CGPoint(x: 30.14, y: 24.58), controlPoint2: CGPoint(x: 29.52, y: 24.26))
        bezier2Path.addCurve(to: CGPoint(x: 26.88, y: 25.75), controlPoint1: CGPoint(x: 27.67, y: 24.26), controlPoint2: CGPoint(x: 26.88, y: 24.9))
        bezier2Path.addCurve(to: CGPoint(x: 28.84, y: 27.44), controlPoint1: CGPoint(x: 26.88, y: 26.48), controlPoint2: CGPoint(x: 27.32, y: 26.86))
        bezier2Path.addCurve(to: CGPoint(x: 32.57, y: 31.64), controlPoint1: CGPoint(x: 31.71, y: 28.54), controlPoint2: CGPoint(x: 32.57, y: 29.5))
        bezier2Path.addCurve(to: CGPoint(x: 28.1, y: 36.06), controlPoint1: CGPoint(x: 32.57, y: 34.25), controlPoint2: CGPoint(x: 30.72, y: 36.06))
        bezier2Path.addCurve(to: CGPoint(x: 23.61, y: 33.5), controlPoint1: CGPoint(x: 26.17, y: 36.06), controlPoint2: CGPoint(x: 24.77, y: 35.27))
        bezier2Path.addLine(to: CGPoint(x: 25.24, y: 31.87))
        bezier2Path.addCurve(to: CGPoint(x: 28, y: 33.66), controlPoint1: CGPoint(x: 25.82, y: 33.04), controlPoint2: CGPoint(x: 26.8, y: 33.66))
        bezier2Path.addCurve(to: CGPoint(x: 29.96, y: 31.76), controlPoint1: CGPoint(x: 29.13, y: 33.66), controlPoint2: CGPoint(x: 29.96, y: 32.85))
        bezier2Path.addCurve(to: CGPoint(x: 29.21, y: 30.37), controlPoint1: CGPoint(x: 29.96, y: 31.2), controlPoint2: CGPoint(x: 29.71, y: 30.71))
        bezier2Path.addCurve(to: CGPoint(x: 27.46, y: 29.6), controlPoint1: CGPoint(x: 28.95, y: 30.21), controlPoint2: CGPoint(x: 28.45, y: 29.97))
        bezier2Path.addCurve(to: CGPoint(x: 24.27, y: 25.91), controlPoint1: CGPoint(x: 25.08, y: 28.72), controlPoint2: CGPoint(x: 24.27, y: 27.77))
        bezier2Path.addCurve(to: CGPoint(x: 28.31, y: 22.06), controlPoint1: CGPoint(x: 24.27, y: 23.71), controlPoint2: CGPoint(x: 26.02, y: 22.06))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 57.2, y: 22.29))
        bezier2Path.addLine(to: CGPoint(x: 59.96, y: 22.29))
        bezier2Path.addLine(to: CGPoint(x: 63.42, y: 31.33))
        bezier2Path.addLine(to: CGPoint(x: 66.92, y: 22.29))
        bezier2Path.addLine(to: CGPoint(x: 69.66, y: 22.29))
        bezier2Path.addLine(to: CGPoint(x: 64.06, y: 36.09))
        bezier2Path.addLine(to: CGPoint(x: 62.7, y: 36.09))
        bezier2Path.addLine(to: CGPoint(x: 57.2, y: 22.29))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 8.3, y: 22.31))
        bezier2Path.addLine(to: CGPoint(x: 12.01, y: 22.31))
        bezier2Path.addCurve(to: CGPoint(x: 18.97, y: 29.05), controlPoint1: CGPoint(x: 16.11, y: 22.31), controlPoint2: CGPoint(x: 18.97, y: 25.08))
        bezier2Path.addCurve(to: CGPoint(x: 16.61, y: 34.22), controlPoint1: CGPoint(x: 18.97, y: 31.03), controlPoint2: CGPoint(x: 18.09, y: 32.95))
        bezier2Path.addCurve(to: CGPoint(x: 11.99, y: 35.77), controlPoint1: CGPoint(x: 15.37, y: 35.29), controlPoint2: CGPoint(x: 13.95, y: 35.77))
        bezier2Path.addLine(to: CGPoint(x: 8.3, y: 35.77))
        bezier2Path.addLine(to: CGPoint(x: 8.3, y: 22.31))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 20.13, y: 22.31))
        bezier2Path.addLine(to: CGPoint(x: 22.66, y: 22.31))
        bezier2Path.addLine(to: CGPoint(x: 22.66, y: 35.77))
        bezier2Path.addLine(to: CGPoint(x: 20.13, y: 35.77))
        bezier2Path.addLine(to: CGPoint(x: 20.13, y: 22.31))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 70.8, y: 22.31))
        bezier2Path.addLine(to: CGPoint(x: 77.97, y: 22.31))
        bezier2Path.addLine(to: CGPoint(x: 77.97, y: 24.59))
        bezier2Path.addLine(to: CGPoint(x: 73.33, y: 24.59))
        bezier2Path.addLine(to: CGPoint(x: 73.33, y: 27.58))
        bezier2Path.addLine(to: CGPoint(x: 77.8, y: 27.58))
        bezier2Path.addLine(to: CGPoint(x: 77.8, y: 29.86))
        bezier2Path.addLine(to: CGPoint(x: 73.33, y: 29.86))
        bezier2Path.addLine(to: CGPoint(x: 73.33, y: 33.49))
        bezier2Path.addLine(to: CGPoint(x: 77.97, y: 33.49))
        bezier2Path.addLine(to: CGPoint(x: 77.97, y: 35.77))
        bezier2Path.addLine(to: CGPoint(x: 70.8, y: 35.77))
        bezier2Path.addLine(to: CGPoint(x: 70.8, y: 22.31))
        bezier2Path.addLine(to: CGPoint(x: 70.8, y: 22.31))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 79.65, y: 22.31))
        bezier2Path.addLine(to: CGPoint(x: 83.4, y: 22.31))
        bezier2Path.addCurve(to: CGPoint(x: 87.98, y: 26.29), controlPoint1: CGPoint(x: 86.31, y: 22.31), controlPoint2: CGPoint(x: 87.98, y: 23.77))
        bezier2Path.addCurve(to: CGPoint(x: 85.03, y: 30.1), controlPoint1: CGPoint(x: 87.98, y: 28.35), controlPoint2: CGPoint(x: 86.94, y: 29.7))
        bezier2Path.addLine(to: CGPoint(x: 89.11, y: 35.77))
        bezier2Path.addLine(to: CGPoint(x: 86, y: 35.77))
        bezier2Path.addLine(to: CGPoint(x: 82.5, y: 30.36))
        bezier2Path.addLine(to: CGPoint(x: 82.17, y: 30.36))
        bezier2Path.addLine(to: CGPoint(x: 82.17, y: 35.77))
        bezier2Path.addLine(to: CGPoint(x: 79.65, y: 35.77))
        bezier2Path.addLine(to: CGPoint(x: 79.65, y: 22.31))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 82.17, y: 24.43))
        bezier2Path.addLine(to: CGPoint(x: 82.17, y: 28.51))
        bezier2Path.addLine(to: CGPoint(x: 82.91, y: 28.51))
        bezier2Path.addCurve(to: CGPoint(x: 85.38, y: 26.43), controlPoint1: CGPoint(x: 84.53, y: 28.51), controlPoint2: CGPoint(x: 85.38, y: 27.78))
        bezier2Path.addCurve(to: CGPoint(x: 82.95, y: 24.43), controlPoint1: CGPoint(x: 85.38, y: 25.12), controlPoint2: CGPoint(x: 84.53, y: 24.43))
        bezier2Path.addLine(to: CGPoint(x: 82.17, y: 24.43))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 10.82, y: 24.59))
        bezier2Path.addLine(to: CGPoint(x: 10.82, y: 33.49))
        bezier2Path.addLine(to: CGPoint(x: 11.5, y: 33.49))
        bezier2Path.addCurve(to: CGPoint(x: 14.96, y: 32.42), controlPoint1: CGPoint(x: 13.14, y: 33.49), controlPoint2: CGPoint(x: 14.17, y: 33.17))
        bezier2Path.addCurve(to: CGPoint(x: 16.36, y: 29.03), controlPoint1: CGPoint(x: 15.84, y: 31.61), controlPoint2: CGPoint(x: 16.36, y: 30.32))
        bezier2Path.addCurve(to: CGPoint(x: 14.96, y: 25.68), controlPoint1: CGPoint(x: 16.36, y: 27.74), controlPoint2: CGPoint(x: 15.84, y: 26.49))
        bezier2Path.addCurve(to: CGPoint(x: 11.5, y: 24.59), controlPoint1: CGPoint(x: 14.13, y: 24.9), controlPoint2: CGPoint(x: 13.14, y: 24.59))
        bezier2Path.addLine(to: CGPoint(x: 10.82, y: 24.59))
        bezier2Path.close()
        bezier2Path.usesEvenOddFillRule = true
        fillColor2.setFill()
        bezier2Path.fill()


        //// Bezier 3 Drawing
        let bezier3Path = UIBezierPath()
        bezier3Path.move(to: CGPoint(x: 51.09, y: 21.88))
        bezier3Path.addCurve(to: CGPoint(x: 57.99, y: 29.03), controlPoint1: CGPoint(x: 54.9, y: 21.88), controlPoint2: CGPoint(x: 57.99, y: 25.08))
        bezier3Path.addLine(to: CGPoint(x: 57.99, y: 29.04))
        bezier3Path.addCurve(to: CGPoint(x: 51.09, y: 36.2), controlPoint1: CGPoint(x: 57.99, y: 32.99), controlPoint2: CGPoint(x: 54.9, y: 36.2))
        bezier3Path.addCurve(to: CGPoint(x: 44.2, y: 29.04), controlPoint1: CGPoint(x: 47.29, y: 36.2), controlPoint2: CGPoint(x: 44.2, y: 32.99))
        bezier3Path.addLine(to: CGPoint(x: 44.2, y: 29.03))
        bezier3Path.addCurve(to: CGPoint(x: 51.09, y: 21.88), controlPoint1: CGPoint(x: 44.2, y: 25.08), controlPoint2: CGPoint(x: 47.28, y: 21.88))
        bezier3Path.close()
        bezier3Path.move(to: CGPoint(x: 96, y: 39.14))
        bezier3Path.addCurve(to: CGPoint(x: 27.23, y: 68), controlPoint1: CGPoint(x: 92.79, y: 41.63), controlPoint2: CGPoint(x: 68.79, y: 59.41))
        bezier3Path.addLine(to: CGPoint(x: 89.23, y: 68))
        bezier3Path.addCurve(to: CGPoint(x: 96, y: 60.53), controlPoint1: CGPoint(x: 92.97, y: 68), controlPoint2: CGPoint(x: 96, y: 64.65))
        bezier3Path.addLine(to: CGPoint(x: 96, y: 39.14))
        bezier3Path.addLine(to: CGPoint(x: 96, y: 39.14))
        bezier3Path.close()
        bezier3Path.usesEvenOddFillRule = true
        fillColor5.setFill()
        bezier3Path.fill()
        
        context.restoreGState()

    }

    @objc dynamic public class func drawUnknown(frame targetFrame: CGRect = CGRect(x: 0, y: 0, width: 96, height: 68), resizing: ResizingBehavior = .aspectFit) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()!
        
        //// Resize to Target Frame
        context.saveGState()
        let resizedFrame: CGRect = resizing.apply(rect: CGRect(x: 0, y: 0, width: 96, height: 68), target: targetFrame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy(x: resizedFrame.width / 96, y: resizedFrame.height / 68)


        //// Color Declarations
        let fillColor6 = UIColor(red: 0.717, green: 0.717, blue: 0.717, alpha: 1.000)
        let fillColor7 = UIColor(red: 0.000, green: 0.000, blue: 0.000, alpha: 1.000)
        let color = UIColor(red: 1.000, green: 1.000, blue: 1.000, alpha: 1.000)
        let color2 = UIColor(red: 0.823, green: 0.818, blue: 0.818, alpha: 1.000)

        //// Group
        //// box Drawing
        let boxPath = UIBezierPath()
        boxPath.move(to: CGPoint(x: 4.92, y: 0))
        boxPath.addLine(to: CGPoint(x: 91.08, y: 0))
        boxPath.addCurve(to: CGPoint(x: 96, y: 5.44), controlPoint1: CGPoint(x: 93.8, y: 0), controlPoint2: CGPoint(x: 96, y: 2.44))
        boxPath.addLine(to: CGPoint(x: 96, y: 62.56))
        boxPath.addCurve(to: CGPoint(x: 91.08, y: 68), controlPoint1: CGPoint(x: 96, y: 65.56), controlPoint2: CGPoint(x: 93.8, y: 68))
        boxPath.addLine(to: CGPoint(x: 4.92, y: 68))
        boxPath.addCurve(to: CGPoint(x: 0, y: 62.56), controlPoint1: CGPoint(x: 2.2, y: 68), controlPoint2: CGPoint(x: 0, y: 65.56))
        boxPath.addLine(to: CGPoint(x: 0, y: 5.44))
        boxPath.addCurve(to: CGPoint(x: 4.92, y: 0), controlPoint1: CGPoint(x: 0, y: 2.44), controlPoint2: CGPoint(x: 2.2, y: 0))
        boxPath.close()
        fillColor6.setFill()
        boxPath.fill()


        //// Rectangle 3 Drawing
        let rectangle3Path = UIBezierPath(rect: CGRect(x: 0, y: 10.91, width: 96, height: 13.68))
        fillColor7.setFill()
        rectangle3Path.fill()


        //// Rectangle Drawing
        let rectanglePath = UIBezierPath(rect: CGRect(x: 0, y: 30, width: 96, height: 12))
        color.setFill()
        rectanglePath.fill()


        //// Rectangle 2 Drawing
        let rectangle2Path = UIBezierPath(rect: CGRect(x: 0, y: 45, width: 96, height: 11))
        color2.setFill()
        rectangle2Path.fill()
        
        context.restoreGState()

    }

    @objc dynamic public class func drawJcb(frame targetFrame: CGRect = CGRect(x: 0, y: 0, width: 96, height: 68), resizing: ResizingBehavior = .aspectFit) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()!
        
        //// Resize to Target Frame
        context.saveGState()
        let resizedFrame: CGRect = resizing.apply(rect: CGRect(x: 0, y: 0, width: 96, height: 68), target: targetFrame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy(x: resizedFrame.width / 96, y: resizedFrame.height / 68)


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
        bezierPath.move(to: CGPoint(x: 4.92, y: 0))
        bezierPath.addLine(to: CGPoint(x: 91.08, y: 0))
        bezierPath.addCurve(to: CGPoint(x: 96, y: 5.44), controlPoint1: CGPoint(x: 93.8, y: 0), controlPoint2: CGPoint(x: 96, y: 2.44))
        bezierPath.addLine(to: CGPoint(x: 96, y: 62.56))
        bezierPath.addCurve(to: CGPoint(x: 91.08, y: 68), controlPoint1: CGPoint(x: 96, y: 65.56), controlPoint2: CGPoint(x: 93.8, y: 68))
        bezierPath.addLine(to: CGPoint(x: 4.92, y: 68))
        bezierPath.addCurve(to: CGPoint(x: 0, y: 62.56), controlPoint1: CGPoint(x: 2.2, y: 68), controlPoint2: CGPoint(x: 0, y: 65.56))
        bezierPath.addLine(to: CGPoint(x: 0, y: 5.44))
        bezierPath.addCurve(to: CGPoint(x: 4.92, y: 0), controlPoint1: CGPoint(x: 0, y: 2.44), controlPoint2: CGPoint(x: 2.2, y: 0))
        bezierPath.close()
        fillColor9.setFill()
        bezierPath.fill()


        //// Bezier 2 Drawing
        let bezier2Path = UIBezierPath()
        bezier2Path.move(to: CGPoint(x: 77.81, y: 49.13))
        bezier2Path.addCurve(to: CGPoint(x: 68.54, y: 59.38), controlPoint1: CGPoint(x: 77.81, y: 54.79), controlPoint2: CGPoint(x: 73.66, y: 59.38))
        bezier2Path.addLine(to: CGPoint(x: 18.18, y: 59.38))
        bezier2Path.addLine(to: CGPoint(x: 18.18, y: 18.87))
        bezier2Path.addCurve(to: CGPoint(x: 27.46, y: 8.62), controlPoint1: CGPoint(x: 18.18, y: 13.21), controlPoint2: CGPoint(x: 22.34, y: 8.62))
        bezier2Path.addLine(to: CGPoint(x: 77.81, y: 8.62))
        bezier2Path.addLine(to: CGPoint(x: 77.81, y: 49.13))
        bezier2Path.addLine(to: CGPoint(x: 77.81, y: 49.13))
        bezier2Path.close()
        fillColor2.setFill()
        bezier2Path.fill()


        //// Bezier 3 Drawing
        let bezier3Path = UIBezierPath()
        bezier3Path.move(to: CGPoint(x: 61.4, y: 34.89))
        bezier3Path.addCurve(to: CGPoint(x: 65.72, y: 34.94), controlPoint1: CGPoint(x: 62.84, y: 34.92), controlPoint2: CGPoint(x: 64.28, y: 34.82))
        bezier3Path.addCurve(to: CGPoint(x: 66.23, y: 38.46), controlPoint1: CGPoint(x: 67.17, y: 35.24), controlPoint2: CGPoint(x: 67.52, y: 37.67))
        bezier3Path.addCurve(to: CGPoint(x: 63.35, y: 38.75), controlPoint1: CGPoint(x: 65.35, y: 38.99), controlPoint2: CGPoint(x: 64.3, y: 38.66))
        bezier3Path.addLine(to: CGPoint(x: 61.4, y: 38.75))
        bezier3Path.addLine(to: CGPoint(x: 61.4, y: 34.89))
        bezier3Path.close()
        bezier3Path.move(to: CGPoint(x: 66.55, y: 30.52))
        bezier3Path.addCurve(to: CGPoint(x: 64.69, y: 32.71), controlPoint1: CGPoint(x: 66.87, y: 31.76), controlPoint2: CGPoint(x: 65.78, y: 32.88))
        bezier3Path.addLine(to: CGPoint(x: 61.4, y: 32.71))
        bezier3Path.addCurve(to: CGPoint(x: 61.43, y: 29.15), controlPoint1: CGPoint(x: 61.42, y: 31.54), controlPoint2: CGPoint(x: 61.35, y: 30.26))
        bezier3Path.addCurve(to: CGPoint(x: 65.4, y: 29.21), controlPoint1: CGPoint(x: 62.75, y: 29.19), controlPoint2: CGPoint(x: 64.08, y: 29.06))
        bezier3Path.addCurve(to: CGPoint(x: 66.55, y: 30.52), controlPoint1: CGPoint(x: 65.96, y: 29.37), controlPoint2: CGPoint(x: 66.43, y: 29.88))
        bezier3Path.close()
        bezier3Path.move(to: CGPoint(x: 74.48, y: 12.04))
        bezier3Path.addCurve(to: CGPoint(x: 74.5, y: 19.35), controlPoint1: CGPoint(x: 74.54, y: 14.42), controlPoint2: CGPoint(x: 74.49, y: 16.92))
        bezier3Path.addCurve(to: CGPoint(x: 74.5, y: 48.97), controlPoint1: CGPoint(x: 74.5, y: 29.22), controlPoint2: CGPoint(x: 74.51, y: 39.1))
        bezier3Path.addCurve(to: CGPoint(x: 68.15, y: 55.96), controlPoint1: CGPoint(x: 74.44, y: 52.67), controlPoint2: CGPoint(x: 71.47, y: 55.88))
        bezier3Path.addCurve(to: CGPoint(x: 58.16, y: 55.96), controlPoint1: CGPoint(x: 64.82, y: 55.97), controlPoint2: CGPoint(x: 61.49, y: 55.96))
        bezier3Path.addLine(to: CGPoint(x: 58.16, y: 41.04))
        bezier3Path.addCurve(to: CGPoint(x: 69.04, y: 41.01), controlPoint1: CGPoint(x: 61.79, y: 41.02), controlPoint2: CGPoint(x: 65.41, y: 41.08))
        bezier3Path.addCurve(to: CGPoint(x: 72.64, y: 37.62), controlPoint1: CGPoint(x: 70.72, y: 40.89), controlPoint2: CGPoint(x: 72.56, y: 39.66))
        bezier3Path.addCurve(to: CGPoint(x: 69.42, y: 33.92), controlPoint1: CGPoint(x: 72.84, y: 35.56), controlPoint2: CGPoint(x: 71.09, y: 34.14))
        bezier3Path.addCurve(to: CGPoint(x: 69.42, y: 33.63), controlPoint1: CGPoint(x: 68.78, y: 33.9), controlPoint2: CGPoint(x: 68.8, y: 33.71))
        bezier3Path.addCurve(to: CGPoint(x: 71.79, y: 29.62), controlPoint1: CGPoint(x: 71.01, y: 33.25), controlPoint2: CGPoint(x: 72.26, y: 31.44))
        bezier3Path.addCurve(to: CGPoint(x: 67.89, y: 26.97), controlPoint1: CGPoint(x: 71.39, y: 27.71), controlPoint2: CGPoint(x: 69.48, y: 26.97))
        bezier3Path.addCurve(to: CGPoint(x: 58.16, y: 26.96), controlPoint1: CGPoint(x: 64.65, y: 26.95), controlPoint2: CGPoint(x: 61.4, y: 26.97))
        bezier3Path.addCurve(to: CGPoint(x: 58.19, y: 18.6), controlPoint1: CGPoint(x: 58.18, y: 24.17), controlPoint2: CGPoint(x: 58.12, y: 21.38))
        bezier3Path.addCurve(to: CGPoint(x: 64.77, y: 12.04), controlPoint1: CGPoint(x: 58.45, y: 14.97), controlPoint2: CGPoint(x: 61.49, y: 11.97))
        bezier3Path.addLine(to: CGPoint(x: 74.48, y: 12.04))
        bezier3Path.addLine(to: CGPoint(x: 74.48, y: 12.04))
        bezier3Path.close()
        context.saveGState()
        bezier3Path.addClip()
        context.drawLinearGradient(c,
            start: CGPoint(x: 58.1, y: 34.08),
            end: CGPoint(x: 74.45, y: 34.08),
            options: [.drawsBeforeStartLocation, .drawsAfterEndLocation])
        context.restoreGState()


        //// Bezier 4 Drawing
        let bezier4Path = UIBezierPath()
        bezier4Path.move(to: CGPoint(x: 21.51, y: 18.98))
        bezier4Path.addCurve(to: CGPoint(x: 27.89, y: 12.04), controlPoint1: CGPoint(x: 21.59, y: 15.28), controlPoint2: CGPoint(x: 24.57, y: 12.09))
        bezier4Path.addCurve(to: CGPoint(x: 37.84, y: 12.04), controlPoint1: CGPoint(x: 31.21, y: 12.03), controlPoint2: CGPoint(x: 34.52, y: 12.04))
        bezier4Path.addCurve(to: CGPoint(x: 37.83, y: 49.12), controlPoint1: CGPoint(x: 37.83, y: 24.4), controlPoint2: CGPoint(x: 37.86, y: 36.76))
        bezier4Path.addCurve(to: CGPoint(x: 31.47, y: 55.96), controlPoint1: CGPoint(x: 37.7, y: 52.77), controlPoint2: CGPoint(x: 34.75, y: 55.89))
        bezier4Path.addCurve(to: CGPoint(x: 21.5, y: 55.96), controlPoint1: CGPoint(x: 28.14, y: 55.97), controlPoint2: CGPoint(x: 24.82, y: 55.96))
        bezier4Path.addLine(to: CGPoint(x: 21.5, y: 40.54))
        bezier4Path.addCurve(to: CGPoint(x: 31.4, y: 41.18), controlPoint1: CGPoint(x: 24.73, y: 41.38), controlPoint2: CGPoint(x: 28.11, y: 41.74))
        bezier4Path.addCurve(to: CGPoint(x: 36.19, y: 37.5), controlPoint1: CGPoint(x: 33.37, y: 40.83), controlPoint2: CGPoint(x: 35.52, y: 39.76))
        bezier4Path.addCurve(to: CGPoint(x: 36.48, y: 31.56), controlPoint1: CGPoint(x: 36.68, y: 35.57), controlPoint2: CGPoint(x: 36.4, y: 33.54))
        bezier4Path.addLine(to: CGPoint(x: 36.48, y: 26.96))
        bezier4Path.addLine(to: CGPoint(x: 30.78, y: 26.96))
        bezier4Path.addCurve(to: CGPoint(x: 30.74, y: 36.09), controlPoint1: CGPoint(x: 30.75, y: 30), controlPoint2: CGPoint(x: 30.83, y: 33.05))
        bezier4Path.addCurve(to: CGPoint(x: 27.32, y: 39.08), controlPoint1: CGPoint(x: 30.58, y: 37.96), controlPoint2: CGPoint(x: 28.91, y: 39.15))
        bezier4Path.addCurve(to: CGPoint(x: 21.42, y: 37.5), controlPoint1: CGPoint(x: 25.34, y: 39.11), controlPoint2: CGPoint(x: 21.42, y: 37.5))
        bezier4Path.addCurve(to: CGPoint(x: 21.51, y: 18.98), controlPoint1: CGPoint(x: 21.41, y: 31.8), controlPoint2: CGPoint(x: 21.48, y: 24.66))
        bezier4Path.addLine(to: CGPoint(x: 21.51, y: 18.98))
        bezier4Path.close()
        context.saveGState()
        bezier4Path.addClip()
        context.drawLinearGradient(b,
            start: CGPoint(x: 21.54, y: 34.08),
            end: CGPoint(x: 37.88, y: 34.08),
            options: [.drawsBeforeStartLocation, .drawsAfterEndLocation])
        context.restoreGState()


        //// Bezier 5 Drawing
        let bezier5Path = UIBezierPath()
        bezier5Path.move(to: CGPoint(x: 39.97, y: 28.82))
        bezier5Path.addCurve(to: CGPoint(x: 39.83, y: 27.23), controlPoint1: CGPoint(x: 39.67, y: 28.89), controlPoint2: CGPoint(x: 39.91, y: 27.69))
        bezier5Path.addCurve(to: CGPoint(x: 39.86, y: 18.6), controlPoint1: CGPoint(x: 39.85, y: 24.36), controlPoint2: CGPoint(x: 39.79, y: 21.48))
        bezier5Path.addCurve(to: CGPoint(x: 46.48, y: 12.04), controlPoint1: CGPoint(x: 40.12, y: 14.95), controlPoint2: CGPoint(x: 43.19, y: 11.95))
        bezier5Path.addLine(to: CGPoint(x: 56.17, y: 12.04))
        bezier5Path.addCurve(to: CGPoint(x: 56.16, y: 49.12), controlPoint1: CGPoint(x: 56.16, y: 24.4), controlPoint2: CGPoint(x: 56.19, y: 36.76))
        bezier5Path.addCurve(to: CGPoint(x: 49.8, y: 55.96), controlPoint1: CGPoint(x: 56.03, y: 52.77), controlPoint2: CGPoint(x: 53.08, y: 55.89))
        bezier5Path.addCurve(to: CGPoint(x: 39.83, y: 55.97), controlPoint1: CGPoint(x: 46.47, y: 55.97), controlPoint2: CGPoint(x: 43.15, y: 55.96))
        bezier5Path.addLine(to: CGPoint(x: 39.83, y: 39.06))
        bezier5Path.addCurve(to: CGPoint(x: 48.01, y: 41.44), controlPoint1: CGPoint(x: 42.1, y: 41.12), controlPoint2: CGPoint(x: 45.18, y: 41.44))
        bezier5Path.addCurve(to: CGPoint(x: 54.33, y: 40.54), controlPoint1: CGPoint(x: 50.14, y: 41.44), controlPoint2: CGPoint(x: 52.26, y: 41.08))
        bezier5Path.addLine(to: CGPoint(x: 54.33, y: 37.44))
        bezier5Path.addCurve(to: CGPoint(x: 46.67, y: 38.8), controlPoint1: CGPoint(x: 52, y: 38.72), controlPoint2: CGPoint(x: 49.26, y: 39.54))
        bezier5Path.addCurve(to: CGPoint(x: 43.59, y: 34.32), controlPoint1: CGPoint(x: 44.87, y: 38.31), controlPoint2: CGPoint(x: 43.56, y: 36.38))
        bezier5Path.addCurve(to: CGPoint(x: 46.41, y: 29.29), controlPoint1: CGPoint(x: 43.38, y: 32.18), controlPoint2: CGPoint(x: 44.51, y: 29.93))
        bezier5Path.addCurve(to: CGPoint(x: 53.56, y: 30.16), controlPoint1: CGPoint(x: 48.78, y: 28.47), controlPoint2: CGPoint(x: 51.35, y: 29.1))
        bezier5Path.addCurve(to: CGPoint(x: 54.33, y: 29.9), controlPoint1: CGPoint(x: 54.04, y: 30.43), controlPoint2: CGPoint(x: 54.52, y: 30.77))
        bezier5Path.addLine(to: CGPoint(x: 54.33, y: 27.46))
        bezier5Path.addCurve(to: CGPoint(x: 42.97, y: 27.19), controlPoint1: CGPoint(x: 50.63, y: 26.49), controlPoint2: CGPoint(x: 46.69, y: 26.13))
        bezier5Path.addCurve(to: CGPoint(x: 39.97, y: 28.82), controlPoint1: CGPoint(x: 41.89, y: 27.53), controlPoint2: CGPoint(x: 40.84, y: 28.04))
        bezier5Path.addLine(to: CGPoint(x: 39.97, y: 28.82))
        bezier5Path.close()
        context.saveGState()
        bezier5Path.addClip()
        context.drawLinearGradient(a,
            start: CGPoint(x: 39.84, y: 34.56),
            end: CGPoint(x: 56.19, y: 34.56),
            options: [.drawsBeforeStartLocation, .drawsAfterEndLocation])
        context.restoreGState()
        
        context.restoreGState()

    }

    @objc dynamic public class func drawVisa(frame targetFrame: CGRect = CGRect(x: 0, y: 0, width: 96, height: 68), resizing: ResizingBehavior = .aspectFit) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()!
        
        //// Resize to Target Frame
        context.saveGState()
        let resizedFrame: CGRect = resizing.apply(rect: CGRect(x: 0, y: 0, width: 96, height: 68), target: targetFrame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy(x: resizedFrame.width / 96, y: resizedFrame.height / 68)


        //// Color Declarations
        let fillColor2 = UIColor(red: 1.000, green: 1.000, blue: 1.000, alpha: 1.000)
        let fillColor15 = UIColor(red: 0.055, green: 0.271, blue: 0.584, alpha: 1.000)
        let fillColor16 = UIColor(red: 0.949, green: 0.682, blue: 0.078, alpha: 1.000)

        //// Group
        //// Bezier Drawing
        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: 4.92, y: 0))
        bezierPath.addLine(to: CGPoint(x: 91.08, y: 0))
        bezierPath.addCurve(to: CGPoint(x: 96, y: 5.44), controlPoint1: CGPoint(x: 93.8, y: 0), controlPoint2: CGPoint(x: 96, y: 2.44))
        bezierPath.addLine(to: CGPoint(x: 96, y: 62.56))
        bezierPath.addCurve(to: CGPoint(x: 91.08, y: 68), controlPoint1: CGPoint(x: 96, y: 65.56), controlPoint2: CGPoint(x: 93.8, y: 68))
        bezierPath.addLine(to: CGPoint(x: 4.92, y: 68))
        bezierPath.addCurve(to: CGPoint(x: 0, y: 62.56), controlPoint1: CGPoint(x: 2.2, y: 68), controlPoint2: CGPoint(x: 0, y: 65.56))
        bezierPath.addLine(to: CGPoint(x: 0, y: 5.44))
        bezierPath.addCurve(to: CGPoint(x: 4.92, y: 0), controlPoint1: CGPoint(x: 0, y: 2.44), controlPoint2: CGPoint(x: 2.2, y: 0))
        bezierPath.close()
        fillColor15.setFill()
        bezierPath.fill()


        //// Bezier 2 Drawing
        let bezier2Path = UIBezierPath()
        bezier2Path.move(to: CGPoint(x: 36.09, y: 47.43))
        bezier2Path.addLine(to: CGPoint(x: 40.19, y: 20.8))
        bezier2Path.addLine(to: CGPoint(x: 46.76, y: 20.8))
        bezier2Path.addLine(to: CGPoint(x: 42.65, y: 47.43))
        bezier2Path.addLine(to: CGPoint(x: 36.09, y: 47.43))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 66.38, y: 21.38))
        bezier2Path.addCurve(to: CGPoint(x: 60.49, y: 20.26), controlPoint1: CGPoint(x: 65.08, y: 20.84), controlPoint2: CGPoint(x: 63.04, y: 20.26))
        bezier2Path.addCurve(to: CGPoint(x: 49.39, y: 29.05), controlPoint1: CGPoint(x: 54, y: 20.26), controlPoint2: CGPoint(x: 49.43, y: 23.87))
        bezier2Path.addCurve(to: CGPoint(x: 55.15, y: 36.28), controlPoint1: CGPoint(x: 49.35, y: 32.87), controlPoint2: CGPoint(x: 52.66, y: 35.01))
        bezier2Path.addCurve(to: CGPoint(x: 58.55, y: 39.58), controlPoint1: CGPoint(x: 57.7, y: 37.58), controlPoint2: CGPoint(x: 58.56, y: 38.42))
        bezier2Path.addCurve(to: CGPoint(x: 54.62, y: 42.18), controlPoint1: CGPoint(x: 58.53, y: 41.37), controlPoint2: CGPoint(x: 56.51, y: 42.18))
        bezier2Path.addCurve(to: CGPoint(x: 48.44, y: 40.78), controlPoint1: CGPoint(x: 51.99, y: 42.18), controlPoint2: CGPoint(x: 50.6, y: 41.78))
        bezier2Path.addLine(to: CGPoint(x: 47.59, y: 40.36))
        bezier2Path.addLine(to: CGPoint(x: 46.67, y: 46.32))
        bezier2Path.addCurve(to: CGPoint(x: 53.99, y: 47.74), controlPoint1: CGPoint(x: 48.2, y: 47.06), controlPoint2: CGPoint(x: 51.04, y: 47.71))
        bezier2Path.addCurve(to: CGPoint(x: 65.42, y: 38.64), controlPoint1: CGPoint(x: 60.89, y: 47.74), controlPoint2: CGPoint(x: 65.37, y: 44.17))
        bezier2Path.addCurve(to: CGPoint(x: 59.91, y: 31.41), controlPoint1: CGPoint(x: 65.45, y: 35.62), controlPoint2: CGPoint(x: 63.7, y: 33.31))
        bezier2Path.addCurve(to: CGPoint(x: 56.22, y: 28.11), controlPoint1: CGPoint(x: 57.61, y: 30.18), controlPoint2: CGPoint(x: 56.21, y: 29.36))
        bezier2Path.addCurve(to: CGPoint(x: 59.98, y: 25.82), controlPoint1: CGPoint(x: 56.22, y: 27), controlPoint2: CGPoint(x: 57.41, y: 25.82))
        bezier2Path.addCurve(to: CGPoint(x: 64.9, y: 26.84), controlPoint1: CGPoint(x: 62.13, y: 25.78), controlPoint2: CGPoint(x: 63.69, y: 26.3))
        bezier2Path.addLine(to: CGPoint(x: 65.49, y: 27.15))
        bezier2Path.addLine(to: CGPoint(x: 66.38, y: 21.38))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 83.28, y: 20.8))
        bezier2Path.addLine(to: CGPoint(x: 78.2, y: 20.8))
        bezier2Path.addCurve(to: CGPoint(x: 74.76, y: 23.01), controlPoint1: CGPoint(x: 76.63, y: 20.8), controlPoint2: CGPoint(x: 75.45, y: 21.28))
        bezier2Path.addLine(to: CGPoint(x: 65.01, y: 47.41))
        bezier2Path.addLine(to: CGPoint(x: 71.91, y: 47.41))
        bezier2Path.addCurve(to: CGPoint(x: 73.29, y: 43.41), controlPoint1: CGPoint(x: 71.91, y: 47.41), controlPoint2: CGPoint(x: 73.03, y: 44.13))
        bezier2Path.addCurve(to: CGPoint(x: 81.7, y: 43.42), controlPoint1: CGPoint(x: 74.04, y: 43.41), controlPoint2: CGPoint(x: 80.74, y: 43.42))
        bezier2Path.addCurve(to: CGPoint(x: 82.5, y: 47.41), controlPoint1: CGPoint(x: 81.9, y: 44.35), controlPoint2: CGPoint(x: 82.5, y: 47.41))
        bezier2Path.addLine(to: CGPoint(x: 88.59, y: 47.41))
        bezier2Path.addLine(to: CGPoint(x: 83.28, y: 20.8))
        bezier2Path.addLine(to: CGPoint(x: 83.28, y: 20.8))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 75.22, y: 38))
        bezier2Path.addCurve(to: CGPoint(x: 77.84, y: 30.55), controlPoint1: CGPoint(x: 75.77, y: 36.46), controlPoint2: CGPoint(x: 77.84, y: 30.55))
        bezier2Path.addCurve(to: CGPoint(x: 78.71, y: 28.01), controlPoint1: CGPoint(x: 77.8, y: 30.62), controlPoint2: CGPoint(x: 78.38, y: 29.01))
        bezier2Path.addLine(to: CGPoint(x: 79.16, y: 30.31))
        bezier2Path.addCurve(to: CGPoint(x: 80.68, y: 38), controlPoint1: CGPoint(x: 79.16, y: 30.31), controlPoint2: CGPoint(x: 80.41, y: 36.66))
        bezier2Path.addLine(to: CGPoint(x: 75.22, y: 38))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 30.51, y: 20.8))
        bezier2Path.addLine(to: CGPoint(x: 24.08, y: 38.96))
        bezier2Path.addLine(to: CGPoint(x: 23.4, y: 35.27))
        bezier2Path.addCurve(to: CGPoint(x: 14.3, y: 24.1), controlPoint1: CGPoint(x: 22.2, y: 31.02), controlPoint2: CGPoint(x: 18.47, y: 26.41))
        bezier2Path.addLine(to: CGPoint(x: 20.18, y: 47.38))
        bezier2Path.addLine(to: CGPoint(x: 27.13, y: 47.38))
        bezier2Path.addLine(to: CGPoint(x: 37.47, y: 20.8))
        bezier2Path.addLine(to: CGPoint(x: 30.51, y: 20.8))
        fillColor2.setFill()
        bezier2Path.fill()


        //// Bezier 3 Drawing
        let bezier3Path = UIBezierPath()
        bezier3Path.move(to: CGPoint(x: 18.08, y: 20.8))
        bezier3Path.addLine(to: CGPoint(x: 7.49, y: 20.8))
        bezier3Path.addLine(to: CGPoint(x: 7.41, y: 21.36))
        bezier3Path.addCurve(to: CGPoint(x: 23.36, y: 35.28), controlPoint1: CGPoint(x: 15.65, y: 23.56), controlPoint2: CGPoint(x: 21.1, y: 28.89))
        bezier3Path.addLine(to: CGPoint(x: 21.06, y: 23.05))
        bezier3Path.addCurve(to: CGPoint(x: 18.08, y: 20.8), controlPoint1: CGPoint(x: 20.66, y: 21.36), controlPoint2: CGPoint(x: 19.51, y: 20.86))
        fillColor16.setFill()
        bezier3Path.fill()
        
        context.restoreGState()

    }

    @objc dynamic public class func drawMaestro(frame targetFrame: CGRect = CGRect(x: 0, y: 0, width: 96, height: 68), resizing: ResizingBehavior = .aspectFit) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()!
        
        //// Resize to Target Frame
        context.saveGState()
        let resizedFrame: CGRect = resizing.apply(rect: CGRect(x: 0, y: 0, width: 96, height: 68), target: targetFrame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy(x: resizedFrame.width / 96, y: resizedFrame.height / 68)


        //// Color Declarations
        let fillColor2 = UIColor(red: 1.000, green: 1.000, blue: 1.000, alpha: 1.000)
        let fillColor10 = UIColor(red: 0.000, green: 0.000, blue: 0.000, alpha: 1.000)
        let fillColor17 = UIColor(red: 0.463, green: 0.451, blue: 0.753, alpha: 1.000)
        let fillColor18 = UIColor(red: 0.922, green: 0.000, blue: 0.106, alpha: 1.000)
        let fillColor19 = UIColor(red: 0.000, green: 0.631, blue: 0.875, alpha: 1.000)

        //// maestro 2
        //// Rectangle-1 Drawing
        let rectangle1Path = UIBezierPath(roundedRect: CGRect(x: 0, y: 0, width: 96, height: 68), cornerRadius: 8)
        fillColor10.setFill()
        rectangle1Path.fill()


        //// Group 4
        //// Shape Drawing
        let shapePath = UIBezierPath()
        shapePath.move(to: CGPoint(x: 35.55, y: 60.68))
        shapePath.addLine(to: CGPoint(x: 35.55, y: 57.15))
        shapePath.addCurve(to: CGPoint(x: 33.56, y: 54.91), controlPoint1: CGPoint(x: 35.55, y: 55.82), controlPoint2: CGPoint(x: 34.78, y: 54.93))
        shapePath.addCurve(to: CGPoint(x: 31.79, y: 55.91), controlPoint1: CGPoint(x: 32.92, y: 54.9), controlPoint2: CGPoint(x: 32.25, y: 55.13))
        shapePath.addCurve(to: CGPoint(x: 30.12, y: 54.91), controlPoint1: CGPoint(x: 31.44, y: 55.29), controlPoint2: CGPoint(x: 30.9, y: 54.91))
        shapePath.addCurve(to: CGPoint(x: 28.64, y: 55.75), controlPoint1: CGPoint(x: 29.53, y: 54.88), controlPoint2: CGPoint(x: 28.97, y: 55.2))
        shapePath.addLine(to: CGPoint(x: 28.64, y: 55.06))
        shapePath.addLine(to: CGPoint(x: 27.55, y: 55.06))
        shapePath.addLine(to: CGPoint(x: 27.55, y: 60.69))
        shapePath.addLine(to: CGPoint(x: 28.65, y: 60.69))
        shapePath.addLine(to: CGPoint(x: 28.65, y: 57.56))
        shapePath.addCurve(to: CGPoint(x: 29.89, y: 56.06), controlPoint1: CGPoint(x: 28.65, y: 56.58), controlPoint2: CGPoint(x: 29.14, y: 56.06))
        shapePath.addCurve(to: CGPoint(x: 30.99, y: 57.55), controlPoint1: CGPoint(x: 30.62, y: 56.06), controlPoint2: CGPoint(x: 30.99, y: 56.59))
        shapePath.addLine(to: CGPoint(x: 30.99, y: 60.68))
        shapePath.addLine(to: CGPoint(x: 32.1, y: 60.68))
        shapePath.addLine(to: CGPoint(x: 32.1, y: 57.56))
        shapePath.addCurve(to: CGPoint(x: 33.33, y: 56.06), controlPoint1: CGPoint(x: 32.1, y: 56.58), controlPoint2: CGPoint(x: 32.61, y: 56.06))
        shapePath.addCurve(to: CGPoint(x: 34.44, y: 57.55), controlPoint1: CGPoint(x: 34.08, y: 56.06), controlPoint2: CGPoint(x: 34.44, y: 56.59))
        shapePath.addLine(to: CGPoint(x: 34.44, y: 60.68))
        shapePath.addLine(to: CGPoint(x: 35.55, y: 60.68))
        shapePath.close()
        shapePath.move(to: CGPoint(x: 41.73, y: 57.87))
        shapePath.addLine(to: CGPoint(x: 41.73, y: 55.05))
        shapePath.addLine(to: CGPoint(x: 40.63, y: 55.05))
        shapePath.addLine(to: CGPoint(x: 40.63, y: 55.73))
        shapePath.addCurve(to: CGPoint(x: 39.04, y: 54.9), controlPoint1: CGPoint(x: 40.28, y: 55.22), controlPoint2: CGPoint(x: 39.76, y: 54.9))
        shapePath.addCurve(to: CGPoint(x: 36.52, y: 57.86), controlPoint1: CGPoint(x: 37.62, y: 54.9), controlPoint2: CGPoint(x: 36.52, y: 56.14))
        shapePath.addCurve(to: CGPoint(x: 39.04, y: 60.82), controlPoint1: CGPoint(x: 36.52, y: 59.59), controlPoint2: CGPoint(x: 37.62, y: 60.82))
        shapePath.addCurve(to: CGPoint(x: 40.63, y: 60), controlPoint1: CGPoint(x: 39.76, y: 60.82), controlPoint2: CGPoint(x: 40.28, y: 60.51))
        shapePath.addLine(to: CGPoint(x: 40.63, y: 60.68))
        shapePath.addLine(to: CGPoint(x: 41.73, y: 60.68))
        shapePath.addLine(to: CGPoint(x: 41.73, y: 57.87))
        shapePath.close()
        shapePath.move(to: CGPoint(x: 37.65, y: 57.87))
        shapePath.addCurve(to: CGPoint(x: 39.18, y: 56.06), controlPoint1: CGPoint(x: 37.65, y: 56.88), controlPoint2: CGPoint(x: 38.23, y: 56.06))
        shapePath.addCurve(to: CGPoint(x: 40.7, y: 57.87), controlPoint1: CGPoint(x: 40.09, y: 56.06), controlPoint2: CGPoint(x: 40.7, y: 56.84))
        shapePath.addCurve(to: CGPoint(x: 39.18, y: 59.67), controlPoint1: CGPoint(x: 40.7, y: 58.89), controlPoint2: CGPoint(x: 40.09, y: 59.67))
        shapePath.addCurve(to: CGPoint(x: 37.65, y: 57.87), controlPoint1: CGPoint(x: 38.23, y: 59.67), controlPoint2: CGPoint(x: 37.65, y: 58.86))
        shapePath.addLine(to: CGPoint(x: 37.65, y: 57.87))
        shapePath.close()
        shapePath.move(to: CGPoint(x: 65.22, y: 54.9))
        shapePath.addCurve(to: CGPoint(x: 66.3, y: 55.13), controlPoint1: CGPoint(x: 65.59, y: 54.9), controlPoint2: CGPoint(x: 65.96, y: 54.97))
        shapePath.addCurve(to: CGPoint(x: 67.16, y: 55.75), controlPoint1: CGPoint(x: 66.62, y: 55.27), controlPoint2: CGPoint(x: 66.92, y: 55.48))
        shapePath.addCurve(to: CGPoint(x: 67.73, y: 56.69), controlPoint1: CGPoint(x: 67.41, y: 56.02), controlPoint2: CGPoint(x: 67.6, y: 56.34))
        shapePath.addCurve(to: CGPoint(x: 67.73, y: 59.05), controlPoint1: CGPoint(x: 68.01, y: 57.45), controlPoint2: CGPoint(x: 68.01, y: 58.29))
        shapePath.addCurve(to: CGPoint(x: 67.16, y: 59.98), controlPoint1: CGPoint(x: 67.6, y: 59.4), controlPoint2: CGPoint(x: 67.41, y: 59.72))
        shapePath.addCurve(to: CGPoint(x: 66.3, y: 60.61), controlPoint1: CGPoint(x: 66.92, y: 60.25), controlPoint2: CGPoint(x: 66.62, y: 60.47))
        shapePath.addCurve(to: CGPoint(x: 64.13, y: 60.61), controlPoint1: CGPoint(x: 65.61, y: 60.91), controlPoint2: CGPoint(x: 64.83, y: 60.91))
        shapePath.addCurve(to: CGPoint(x: 63.28, y: 59.98), controlPoint1: CGPoint(x: 63.81, y: 60.47), controlPoint2: CGPoint(x: 63.52, y: 60.25))
        shapePath.addCurve(to: CGPoint(x: 62.71, y: 59.05), controlPoint1: CGPoint(x: 63.03, y: 59.72), controlPoint2: CGPoint(x: 62.84, y: 59.4))
        shapePath.addCurve(to: CGPoint(x: 62.71, y: 56.69), controlPoint1: CGPoint(x: 62.44, y: 58.29), controlPoint2: CGPoint(x: 62.44, y: 57.45))
        shapePath.addCurve(to: CGPoint(x: 63.28, y: 55.75), controlPoint1: CGPoint(x: 62.84, y: 56.34), controlPoint2: CGPoint(x: 63.03, y: 56.02))
        shapePath.addCurve(to: CGPoint(x: 64.13, y: 55.13), controlPoint1: CGPoint(x: 63.52, y: 55.48), controlPoint2: CGPoint(x: 63.81, y: 55.27))
        shapePath.addCurve(to: CGPoint(x: 65.22, y: 54.9), controlPoint1: CGPoint(x: 64.48, y: 54.97), controlPoint2: CGPoint(x: 64.85, y: 54.9))
        shapePath.close()
        shapePath.move(to: CGPoint(x: 65.22, y: 56.06))
        shapePath.addCurve(to: CGPoint(x: 64.59, y: 56.19), controlPoint1: CGPoint(x: 65, y: 56.06), controlPoint2: CGPoint(x: 64.79, y: 56.1))
        shapePath.addCurve(to: CGPoint(x: 64.09, y: 56.56), controlPoint1: CGPoint(x: 64.41, y: 56.28), controlPoint2: CGPoint(x: 64.24, y: 56.4))
        shapePath.addCurve(to: CGPoint(x: 63.76, y: 57.13), controlPoint1: CGPoint(x: 63.95, y: 56.73), controlPoint2: CGPoint(x: 63.84, y: 56.92))
        shapePath.addCurve(to: CGPoint(x: 63.76, y: 58.6), controlPoint1: CGPoint(x: 63.6, y: 57.61), controlPoint2: CGPoint(x: 63.6, y: 58.13))
        shapePath.addCurve(to: CGPoint(x: 64.09, y: 59.17), controlPoint1: CGPoint(x: 63.84, y: 58.81), controlPoint2: CGPoint(x: 63.95, y: 59.01))
        shapePath.addCurve(to: CGPoint(x: 64.59, y: 59.54), controlPoint1: CGPoint(x: 64.24, y: 59.33), controlPoint2: CGPoint(x: 64.41, y: 59.46))
        shapePath.addCurve(to: CGPoint(x: 65.85, y: 59.54), controlPoint1: CGPoint(x: 65, y: 59.72), controlPoint2: CGPoint(x: 65.44, y: 59.72))
        shapePath.addCurve(to: CGPoint(x: 66.35, y: 59.17), controlPoint1: CGPoint(x: 66.04, y: 59.46), controlPoint2: CGPoint(x: 66.21, y: 59.33))
        shapePath.addCurve(to: CGPoint(x: 66.68, y: 58.6), controlPoint1: CGPoint(x: 66.49, y: 59.01), controlPoint2: CGPoint(x: 66.61, y: 58.81))
        shapePath.addCurve(to: CGPoint(x: 66.68, y: 57.13), controlPoint1: CGPoint(x: 66.85, y: 58.13), controlPoint2: CGPoint(x: 66.85, y: 57.61))
        shapePath.addCurve(to: CGPoint(x: 66.35, y: 56.56), controlPoint1: CGPoint(x: 66.61, y: 56.92), controlPoint2: CGPoint(x: 66.49, y: 56.73))
        shapePath.addCurve(to: CGPoint(x: 65.85, y: 56.19), controlPoint1: CGPoint(x: 66.21, y: 56.4), controlPoint2: CGPoint(x: 66.04, y: 56.28))
        shapePath.addCurve(to: CGPoint(x: 65.22, y: 56.06), controlPoint1: CGPoint(x: 65.65, y: 56.1), controlPoint2: CGPoint(x: 65.43, y: 56.06))
        shapePath.addLine(to: CGPoint(x: 65.22, y: 56.06))
        shapePath.close()
        shapePath.move(to: CGPoint(x: 47.7, y: 57.87))
        shapePath.addCurve(to: CGPoint(x: 45.31, y: 54.91), controlPoint1: CGPoint(x: 47.69, y: 56.11), controlPoint2: CGPoint(x: 46.72, y: 54.91))
        shapePath.addCurve(to: CGPoint(x: 42.8, y: 57.87), controlPoint1: CGPoint(x: 43.83, y: 54.91), controlPoint2: CGPoint(x: 42.8, y: 56.11))
        shapePath.addCurve(to: CGPoint(x: 45.38, y: 60.83), controlPoint1: CGPoint(x: 42.8, y: 59.66), controlPoint2: CGPoint(x: 43.87, y: 60.83))
        shapePath.addCurve(to: CGPoint(x: 47.45, y: 60.04), controlPoint1: CGPoint(x: 46.15, y: 60.83), controlPoint2: CGPoint(x: 46.84, y: 60.61))
        shapePath.addLine(to: CGPoint(x: 46.91, y: 59.13))
        shapePath.addCurve(to: CGPoint(x: 45.45, y: 59.72), controlPoint1: CGPoint(x: 46.5, y: 59.5), controlPoint2: CGPoint(x: 45.98, y: 59.71))
        shapePath.addCurve(to: CGPoint(x: 43.94, y: 58.34), controlPoint1: CGPoint(x: 44.74, y: 59.72), controlPoint2: CGPoint(x: 44.09, y: 59.35))
        shapePath.addLine(to: CGPoint(x: 47.68, y: 58.34))
        shapePath.addCurve(to: CGPoint(x: 47.7, y: 57.87), controlPoint1: CGPoint(x: 47.69, y: 58.18), controlPoint2: CGPoint(x: 47.7, y: 58.03))
        shapePath.close()
        shapePath.move(to: CGPoint(x: 43.95, y: 57.37))
        shapePath.addCurve(to: CGPoint(x: 45.29, y: 56), controlPoint1: CGPoint(x: 44.06, y: 56.56), controlPoint2: CGPoint(x: 44.51, y: 56))
        shapePath.addCurve(to: CGPoint(x: 46.56, y: 57.37), controlPoint1: CGPoint(x: 45.99, y: 56), controlPoint2: CGPoint(x: 46.45, y: 56.5))
        shapePath.addLine(to: CGPoint(x: 43.95, y: 57.37))
        shapePath.close()
        shapePath.move(to: CGPoint(x: 52.33, y: 56.49))
        shapePath.addCurve(to: CGPoint(x: 50.75, y: 56), controlPoint1: CGPoint(x: 51.85, y: 56.18), controlPoint2: CGPoint(x: 51.31, y: 56.01))
        shapePath.addCurve(to: CGPoint(x: 49.79, y: 56.66), controlPoint1: CGPoint(x: 50.15, y: 56), controlPoint2: CGPoint(x: 49.79, y: 56.25))
        shapePath.addCurve(to: CGPoint(x: 50.65, y: 57.22), controlPoint1: CGPoint(x: 49.79, y: 57.04), controlPoint2: CGPoint(x: 50.17, y: 57.15))
        shapePath.addLine(to: CGPoint(x: 51.16, y: 57.3))
        shapePath.addCurve(to: CGPoint(x: 52.93, y: 58.99), controlPoint1: CGPoint(x: 52.26, y: 57.48), controlPoint2: CGPoint(x: 52.93, y: 58))
        shapePath.addCurve(to: CGPoint(x: 50.63, y: 60.83), controlPoint1: CGPoint(x: 52.93, y: 60.06), controlPoint2: CGPoint(x: 52.08, y: 60.83))
        shapePath.addCurve(to: CGPoint(x: 48.44, y: 60.1), controlPoint1: CGPoint(x: 49.81, y: 60.83), controlPoint2: CGPoint(x: 49.05, y: 60.59))
        shapePath.addLine(to: CGPoint(x: 48.96, y: 59.14))
        shapePath.addCurve(to: CGPoint(x: 50.64, y: 59.73), controlPoint1: CGPoint(x: 49.45, y: 59.54), controlPoint2: CGPoint(x: 50.04, y: 59.75))
        shapePath.addCurve(to: CGPoint(x: 51.79, y: 59.05), controlPoint1: CGPoint(x: 51.39, y: 59.73), controlPoint2: CGPoint(x: 51.79, y: 59.48))
        shapePath.addCurve(to: CGPoint(x: 50.9, y: 58.46), controlPoint1: CGPoint(x: 51.79, y: 58.73), controlPoint2: CGPoint(x: 51.5, y: 58.55))
        shapePath.addLine(to: CGPoint(x: 50.39, y: 58.37))
        shapePath.addCurve(to: CGPoint(x: 48.64, y: 56.71), controlPoint1: CGPoint(x: 49.26, y: 58.2), controlPoint2: CGPoint(x: 48.64, y: 57.63))
        shapePath.addCurve(to: CGPoint(x: 50.74, y: 54.91), controlPoint1: CGPoint(x: 48.64, y: 55.59), controlPoint2: CGPoint(x: 49.47, y: 54.91))
        shapePath.addCurve(to: CGPoint(x: 52.8, y: 55.5), controlPoint1: CGPoint(x: 51.55, y: 54.91), controlPoint2: CGPoint(x: 52.27, y: 55.11))
        shapePath.addLine(to: CGPoint(x: 52.33, y: 56.49))
        shapePath.close()
        shapePath.move(to: CGPoint(x: 57.6, y: 56.17))
        shapePath.addLine(to: CGPoint(x: 55.81, y: 56.17))
        shapePath.addLine(to: CGPoint(x: 55.81, y: 58.72))
        shapePath.addCurve(to: CGPoint(x: 56.54, y: 59.67), controlPoint1: CGPoint(x: 55.81, y: 59.29), controlPoint2: CGPoint(x: 55.99, y: 59.67))
        shapePath.addCurve(to: CGPoint(x: 57.51, y: 59.35), controlPoint1: CGPoint(x: 56.88, y: 59.65), controlPoint2: CGPoint(x: 57.21, y: 59.54))
        shapePath.addLine(to: CGPoint(x: 57.82, y: 60.4))
        shapePath.addCurve(to: CGPoint(x: 56.45, y: 60.83), controlPoint1: CGPoint(x: 57.41, y: 60.68), controlPoint2: CGPoint(x: 56.94, y: 60.83))
        shapePath.addCurve(to: CGPoint(x: 54.7, y: 58.74), controlPoint1: CGPoint(x: 55.15, y: 60.83), controlPoint2: CGPoint(x: 54.7, y: 60.05))
        shapePath.addLine(to: CGPoint(x: 54.7, y: 56.18))
        shapePath.addLine(to: CGPoint(x: 53.68, y: 56.18))
        shapePath.addLine(to: CGPoint(x: 53.68, y: 55.06))
        shapePath.addLine(to: CGPoint(x: 54.7, y: 55.06))
        shapePath.addLine(to: CGPoint(x: 54.7, y: 53.35))
        shapePath.addLine(to: CGPoint(x: 55.81, y: 53.35))
        shapePath.addLine(to: CGPoint(x: 55.81, y: 55.06))
        shapePath.addLine(to: CGPoint(x: 57.6, y: 55.06))
        shapePath.addLine(to: CGPoint(x: 57.6, y: 56.17))
        shapePath.close()
        shapePath.move(to: CGPoint(x: 61.4, y: 54.91))
        shapePath.addCurve(to: CGPoint(x: 62.18, y: 55.06), controlPoint1: CGPoint(x: 61.67, y: 54.91), controlPoint2: CGPoint(x: 61.93, y: 54.96))
        shapePath.addLine(to: CGPoint(x: 61.84, y: 56.22))
        shapePath.addCurve(to: CGPoint(x: 61.16, y: 56.08), controlPoint1: CGPoint(x: 61.63, y: 56.12), controlPoint2: CGPoint(x: 61.39, y: 56.07))
        shapePath.addCurve(to: CGPoint(x: 60.08, y: 57.53), controlPoint1: CGPoint(x: 60.44, y: 56.08), controlPoint2: CGPoint(x: 60.08, y: 56.6))
        shapePath.addLine(to: CGPoint(x: 60.08, y: 60.69))
        shapePath.addLine(to: CGPoint(x: 58.98, y: 60.69))
        shapePath.addLine(to: CGPoint(x: 58.98, y: 55.05))
        shapePath.addLine(to: CGPoint(x: 60.07, y: 55.05))
        shapePath.addLine(to: CGPoint(x: 60.07, y: 55.73))
        shapePath.addCurve(to: CGPoint(x: 61.39, y: 54.9), controlPoint1: CGPoint(x: 60.34, y: 55.2), controlPoint2: CGPoint(x: 60.85, y: 54.89))
        shapePath.addLine(to: CGPoint(x: 61.4, y: 54.91))
        shapePath.close()
        fillColor2.setFill()
        shapePath.fill()


        //// _Group_
        //// Rectangle-path Drawing
        let rectanglepathPath = UIBezierPath(rect: CGRect(x: 38.95, y: 12.39, width: 17.5, height: 32.51))
        fillColor17.setFill()
        rectanglepathPath.fill()


        //// _Path_ Drawing
        let _Path_Path = UIBezierPath()
        _Path_Path.move(to: CGPoint(x: 40.45, y: 28.64))
        _Path_Path.addCurve(to: CGPoint(x: 47.72, y: 12.01), controlPoint1: CGPoint(x: 40.45, y: 22.15), controlPoint2: CGPoint(x: 43.13, y: 16.02))
        _Path_Path.addCurve(to: CGPoint(x: 21.99, y: 14.29), controlPoint1: CGPoint(x: 39.92, y: 5.2), controlPoint2: CGPoint(x: 28.72, y: 6.19))
        _Path_Path.addCurve(to: CGPoint(x: 21.99, y: 42.98), controlPoint1: CGPoint(x: 15.25, y: 22.39), controlPoint2: CGPoint(x: 15.25, y: 34.88))
        _Path_Path.addCurve(to: CGPoint(x: 47.72, y: 45.26), controlPoint1: CGPoint(x: 28.72, y: 51.08), controlPoint2: CGPoint(x: 39.92, y: 52.08))
        _Path_Path.addCurve(to: CGPoint(x: 40.45, y: 28.64), controlPoint1: CGPoint(x: 43.13, y: 41.26), controlPoint2: CGPoint(x: 40.45, y: 35.13))
        _Path_Path.close()
        fillColor18.setFill()
        _Path_Path.fill()


        //// Shape 2 Drawing
        let shape2Path = UIBezierPath()
        shape2Path.move(to: CGPoint(x: 78.5, y: 28.64))
        shape2Path.addCurve(to: CGPoint(x: 67.79, y: 47.66), controlPoint1: CGPoint(x: 78.5, y: 36.73), controlPoint2: CGPoint(x: 74.34, y: 44.12))
        shape2Path.addCurve(to: CGPoint(x: 47.72, y: 45.26), controlPoint1: CGPoint(x: 61.24, y: 51.2), controlPoint2: CGPoint(x: 53.44, y: 50.27))
        shape2Path.addCurve(to: CGPoint(x: 54.98, y: 28.64), controlPoint1: CGPoint(x: 52.3, y: 41.25), controlPoint2: CGPoint(x: 54.98, y: 35.13))
        shape2Path.addCurve(to: CGPoint(x: 47.72, y: 12.02), controlPoint1: CGPoint(x: 54.98, y: 22.15), controlPoint2: CGPoint(x: 52.3, y: 16.02))
        shape2Path.addCurve(to: CGPoint(x: 67.79, y: 9.62), controlPoint1: CGPoint(x: 53.44, y: 7.01), controlPoint2: CGPoint(x: 61.24, y: 6.08))
        shape2Path.addCurve(to: CGPoint(x: 78.5, y: 28.64), controlPoint1: CGPoint(x: 74.34, y: 13.16), controlPoint2: CGPoint(x: 78.5, y: 20.54))
        shape2Path.close()
        fillColor19.setFill()
        shape2Path.fill()
        
        context.restoreGState()

    }

    @objc dynamic public class func drawMastercard(frame targetFrame: CGRect = CGRect(x: 0, y: 0, width: 96, height: 68), resizing: ResizingBehavior = .aspectFit) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()!
        
        //// Resize to Target Frame
        context.saveGState()
        let resizedFrame: CGRect = resizing.apply(rect: CGRect(x: 0, y: 0, width: 96, height: 68), target: targetFrame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy(x: resizedFrame.width / 96, y: resizedFrame.height / 68)


        //// Color Declarations
        let fillColor2 = UIColor(red: 1.000, green: 1.000, blue: 1.000, alpha: 1.000)
        let fillColor10 = UIColor(red: 0.000, green: 0.000, blue: 0.000, alpha: 1.000)
        let fillColor18 = UIColor(red: 0.922, green: 0.000, blue: 0.106, alpha: 1.000)
        let fillColor20 = UIColor(red: 1.000, green: 0.373, blue: 0.000, alpha: 1.000)
        let fillColor21 = UIColor(red: 0.969, green: 0.620, blue: 0.106, alpha: 1.000)

        //// Page-1
        //// mastercard 2
        //// Rectangle-1 Drawing
        let rectangle1Path = UIBezierPath(roundedRect: CGRect(x: 0, y: 0, width: 96, height: 68), cornerRadius: 8)
        fillColor10.setFill()
        rectangle1Path.fill()


        //// Group 4
        //// Shape Drawing
        let shapePath = UIBezierPath()
        shapePath.move(to: CGPoint(x: 28.74, y: 60.41))
        shapePath.addLine(to: CGPoint(x: 28.74, y: 56.88))
        shapePath.addCurve(to: CGPoint(x: 26.78, y: 54.65), controlPoint1: CGPoint(x: 28.74, y: 55.53), controlPoint2: CGPoint(x: 27.99, y: 54.65))
        shapePath.addCurve(to: CGPoint(x: 24.98, y: 55.65), controlPoint1: CGPoint(x: 26.14, y: 54.65), controlPoint2: CGPoint(x: 25.45, y: 54.89))
        shapePath.addCurve(to: CGPoint(x: 23.28, y: 54.65), controlPoint1: CGPoint(x: 24.61, y: 55), controlPoint2: CGPoint(x: 24.08, y: 54.65))
        shapePath.addCurve(to: CGPoint(x: 21.75, y: 55.48), controlPoint1: CGPoint(x: 22.68, y: 54.62), controlPoint2: CGPoint(x: 22.1, y: 54.93))
        shapePath.addLine(to: CGPoint(x: 21.75, y: 54.77))
        shapePath.addLine(to: CGPoint(x: 20.74, y: 54.77))
        shapePath.addLine(to: CGPoint(x: 20.74, y: 60.4))
        shapePath.addLine(to: CGPoint(x: 21.75, y: 60.4))
        shapePath.addLine(to: CGPoint(x: 21.75, y: 57.18))
        shapePath.addCurve(to: CGPoint(x: 23.02, y: 55.71), controlPoint1: CGPoint(x: 21.75, y: 56.19), controlPoint2: CGPoint(x: 22.28, y: 55.71))
        shapePath.addCurve(to: CGPoint(x: 24.18, y: 57.18), controlPoint1: CGPoint(x: 23.76, y: 55.71), controlPoint2: CGPoint(x: 24.18, y: 56.24))
        shapePath.addLine(to: CGPoint(x: 24.18, y: 60.41))
        shapePath.addLine(to: CGPoint(x: 25.19, y: 60.41))
        shapePath.addLine(to: CGPoint(x: 25.19, y: 57.18))
        shapePath.addCurve(to: CGPoint(x: 26.46, y: 55.71), controlPoint1: CGPoint(x: 25.19, y: 56.19), controlPoint2: CGPoint(x: 25.72, y: 55.71))
        shapePath.addCurve(to: CGPoint(x: 27.63, y: 57.18), controlPoint1: CGPoint(x: 27.2, y: 55.71), controlPoint2: CGPoint(x: 27.63, y: 56.24))
        shapePath.addLine(to: CGPoint(x: 27.63, y: 60.41))
        shapePath.addLine(to: CGPoint(x: 28.74, y: 60.41))
        shapePath.close()
        shapePath.move(to: CGPoint(x: 45.26, y: 54.83))
        shapePath.addLine(to: CGPoint(x: 43.4, y: 54.83))
        shapePath.addLine(to: CGPoint(x: 43.4, y: 53.13))
        shapePath.addLine(to: CGPoint(x: 42.4, y: 53.13))
        shapePath.addLine(to: CGPoint(x: 42.4, y: 54.83))
        shapePath.addLine(to: CGPoint(x: 41.34, y: 54.83))
        shapePath.addLine(to: CGPoint(x: 41.34, y: 55.82))
        shapePath.addLine(to: CGPoint(x: 42.4, y: 55.82))
        shapePath.addLine(to: CGPoint(x: 42.4, y: 58.47))
        shapePath.addCurve(to: CGPoint(x: 44.09, y: 60.53), controlPoint1: CGPoint(x: 42.4, y: 59.76), controlPoint2: CGPoint(x: 42.82, y: 60.53))
        shapePath.addCurve(to: CGPoint(x: 45.47, y: 60.11), controlPoint1: CGPoint(x: 44.58, y: 60.51), controlPoint2: CGPoint(x: 45.05, y: 60.37))
        shapePath.addLine(to: CGPoint(x: 45.15, y: 59.12))
        shapePath.addCurve(to: CGPoint(x: 44.2, y: 59.42), controlPoint1: CGPoint(x: 44.87, y: 59.32), controlPoint2: CGPoint(x: 44.53, y: 59.42))
        shapePath.addCurve(to: CGPoint(x: 43.4, y: 58.48), controlPoint1: CGPoint(x: 43.67, y: 59.42), controlPoint2: CGPoint(x: 43.4, y: 59.06))
        shapePath.addLine(to: CGPoint(x: 43.4, y: 55.78))
        shapePath.addLine(to: CGPoint(x: 45.26, y: 55.78))
        shapePath.addLine(to: CGPoint(x: 45.26, y: 54.84))
        shapePath.addLine(to: CGPoint(x: 45.26, y: 54.83))
        shapePath.close()
        shapePath.move(to: CGPoint(x: 54.68, y: 54.65))
        shapePath.addCurve(to: CGPoint(x: 53.31, y: 55.48), controlPoint1: CGPoint(x: 54.13, y: 54.64), controlPoint2: CGPoint(x: 53.6, y: 54.95))
        shapePath.addLine(to: CGPoint(x: 53.31, y: 54.77))
        shapePath.addLine(to: CGPoint(x: 52.3, y: 54.77))
        shapePath.addLine(to: CGPoint(x: 52.3, y: 60.4))
        shapePath.addLine(to: CGPoint(x: 53.31, y: 60.4))
        shapePath.addLine(to: CGPoint(x: 53.31, y: 57.24))
        shapePath.addCurve(to: CGPoint(x: 54.42, y: 55.71), controlPoint1: CGPoint(x: 53.31, y: 56.3), controlPoint2: CGPoint(x: 53.73, y: 55.71))
        shapePath.addCurve(to: CGPoint(x: 55.11, y: 55.83), controlPoint1: CGPoint(x: 54.65, y: 55.72), controlPoint2: CGPoint(x: 54.88, y: 55.76))
        shapePath.addLine(to: CGPoint(x: 55.43, y: 54.77))
        shapePath.addCurve(to: CGPoint(x: 54.68, y: 54.65), controlPoint1: CGPoint(x: 55.18, y: 54.7), controlPoint2: CGPoint(x: 54.94, y: 54.66))
        shapePath.close()
        shapePath.move(to: CGPoint(x: 40.44, y: 55.24))
        shapePath.addCurve(to: CGPoint(x: 38.37, y: 54.65), controlPoint1: CGPoint(x: 39.91, y: 54.83), controlPoint2: CGPoint(x: 39.17, y: 54.65))
        shapePath.addCurve(to: CGPoint(x: 36.31, y: 56.42), controlPoint1: CGPoint(x: 37.1, y: 54.65), controlPoint2: CGPoint(x: 36.31, y: 55.3))
        shapePath.addCurve(to: CGPoint(x: 38, y: 58.06), controlPoint1: CGPoint(x: 36.31, y: 57.36), controlPoint2: CGPoint(x: 36.89, y: 57.88))
        shapePath.addLine(to: CGPoint(x: 38.53, y: 58.12))
        shapePath.addCurve(to: CGPoint(x: 39.49, y: 58.76), controlPoint1: CGPoint(x: 39.12, y: 58.24), controlPoint2: CGPoint(x: 39.49, y: 58.47))
        shapePath.addCurve(to: CGPoint(x: 38.27, y: 59.47), controlPoint1: CGPoint(x: 39.49, y: 59.18), controlPoint2: CGPoint(x: 39.06, y: 59.47))
        shapePath.addCurve(to: CGPoint(x: 36.57, y: 58.89), controlPoint1: CGPoint(x: 37.66, y: 59.49), controlPoint2: CGPoint(x: 37.07, y: 59.28))
        shapePath.addLine(to: CGPoint(x: 36.04, y: 59.77))
        shapePath.addCurve(to: CGPoint(x: 38.22, y: 60.48), controlPoint1: CGPoint(x: 36.79, y: 60.35), controlPoint2: CGPoint(x: 37.69, y: 60.48))
        shapePath.addCurve(to: CGPoint(x: 40.5, y: 58.66), controlPoint1: CGPoint(x: 39.7, y: 60.48), controlPoint2: CGPoint(x: 40.5, y: 59.71))
        shapePath.addCurve(to: CGPoint(x: 38.75, y: 57.01), controlPoint1: CGPoint(x: 40.5, y: 57.66), controlPoint2: CGPoint(x: 39.86, y: 57.19))
        shapePath.addLine(to: CGPoint(x: 38.22, y: 56.95))
        shapePath.addCurve(to: CGPoint(x: 37.32, y: 56.37), controlPoint1: CGPoint(x: 37.74, y: 56.89), controlPoint2: CGPoint(x: 37.32, y: 56.72))
        shapePath.addCurve(to: CGPoint(x: 38.33, y: 55.66), controlPoint1: CGPoint(x: 37.32, y: 55.95), controlPoint2: CGPoint(x: 37.75, y: 55.66))
        shapePath.addCurve(to: CGPoint(x: 39.92, y: 56.13), controlPoint1: CGPoint(x: 38.97, y: 55.66), controlPoint2: CGPoint(x: 39.6, y: 55.95))
        shapePath.addLine(to: CGPoint(x: 40.44, y: 55.24))
        shapePath.close()
        shapePath.move(to: CGPoint(x: 55.8, y: 57.59))
        shapePath.addCurve(to: CGPoint(x: 58.45, y: 60.53), controlPoint1: CGPoint(x: 55.8, y: 59.29), controlPoint2: CGPoint(x: 56.8, y: 60.53))
        shapePath.addCurve(to: CGPoint(x: 60.25, y: 59.88), controlPoint1: CGPoint(x: 59.19, y: 60.53), controlPoint2: CGPoint(x: 59.72, y: 60.35))
        shapePath.addLine(to: CGPoint(x: 59.72, y: 59))
        shapePath.addCurve(to: CGPoint(x: 58.39, y: 59.53), controlPoint1: CGPoint(x: 59.34, y: 59.34), controlPoint2: CGPoint(x: 58.88, y: 59.52))
        shapePath.addCurve(to: CGPoint(x: 56.8, y: 57.65), controlPoint1: CGPoint(x: 57.5, y: 59.53), controlPoint2: CGPoint(x: 56.8, y: 58.76))
        shapePath.addCurve(to: CGPoint(x: 58.39, y: 55.78), controlPoint1: CGPoint(x: 56.8, y: 56.53), controlPoint2: CGPoint(x: 57.49, y: 55.78))
        shapePath.addCurve(to: CGPoint(x: 59.72, y: 56.3), controlPoint1: CGPoint(x: 58.88, y: 55.78), controlPoint2: CGPoint(x: 59.34, y: 55.97))
        shapePath.addLine(to: CGPoint(x: 60.25, y: 55.42))
        shapePath.addCurve(to: CGPoint(x: 58.45, y: 54.78), controlPoint1: CGPoint(x: 59.72, y: 54.95), controlPoint2: CGPoint(x: 59.19, y: 54.78))
        shapePath.addCurve(to: CGPoint(x: 55.8, y: 57.6), controlPoint1: CGPoint(x: 56.86, y: 54.66), controlPoint2: CGPoint(x: 55.8, y: 55.89))
        shapePath.addLine(to: CGPoint(x: 55.8, y: 57.59))
        shapePath.close()
        shapePath.move(to: CGPoint(x: 48.7, y: 54.65))
        shapePath.addCurve(to: CGPoint(x: 46.21, y: 57.59), controlPoint1: CGPoint(x: 47.22, y: 54.65), controlPoint2: CGPoint(x: 46.21, y: 55.83))
        shapePath.addCurve(to: CGPoint(x: 48.81, y: 60.53), controlPoint1: CGPoint(x: 46.21, y: 59.35), controlPoint2: CGPoint(x: 47.27, y: 60.53))
        shapePath.addCurve(to: CGPoint(x: 50.87, y: 59.76), controlPoint1: CGPoint(x: 49.55, y: 60.54), controlPoint2: CGPoint(x: 50.28, y: 60.27))
        shapePath.addLine(to: CGPoint(x: 50.34, y: 58.94))
        shapePath.addCurve(to: CGPoint(x: 48.86, y: 59.53), controlPoint1: CGPoint(x: 49.92, y: 59.31), controlPoint2: CGPoint(x: 49.4, y: 59.51))
        shapePath.addCurve(to: CGPoint(x: 47.32, y: 58.06), controlPoint1: CGPoint(x: 48.17, y: 59.53), controlPoint2: CGPoint(x: 47.43, y: 59.06))
        shapePath.addLine(to: CGPoint(x: 51.08, y: 58.06))
        shapePath.addLine(to: CGPoint(x: 51.08, y: 57.59))
        shapePath.addCurve(to: CGPoint(x: 48.7, y: 54.65), controlPoint1: CGPoint(x: 51.08, y: 55.83), controlPoint2: CGPoint(x: 50.13, y: 54.65))
        shapePath.addLine(to: CGPoint(x: 48.7, y: 54.65))
        shapePath.close()
        shapePath.move(to: CGPoint(x: 48.65, y: 55.71))
        shapePath.addCurve(to: CGPoint(x: 49.97, y: 57.12), controlPoint1: CGPoint(x: 49.39, y: 55.71), controlPoint2: CGPoint(x: 49.92, y: 56.24))
        shapePath.addLine(to: CGPoint(x: 47.22, y: 57.12))
        shapePath.addCurve(to: CGPoint(x: 48.65, y: 55.71), controlPoint1: CGPoint(x: 47.38, y: 56.3), controlPoint2: CGPoint(x: 47.86, y: 55.71))
        shapePath.close()
        shapePath.move(to: CGPoint(x: 34.93, y: 57.59))
        shapePath.addLine(to: CGPoint(x: 34.93, y: 54.77))
        shapePath.addLine(to: CGPoint(x: 33.93, y: 54.77))
        shapePath.addLine(to: CGPoint(x: 33.93, y: 55.48))
        shapePath.addCurve(to: CGPoint(x: 32.28, y: 54.66), controlPoint1: CGPoint(x: 33.55, y: 54.95), controlPoint2: CGPoint(x: 33.03, y: 54.66))
        shapePath.addCurve(to: CGPoint(x: 29.79, y: 57.59), controlPoint1: CGPoint(x: 30.85, y: 54.66), controlPoint2: CGPoint(x: 29.79, y: 55.89))
        shapePath.addCurve(to: CGPoint(x: 32.28, y: 60.53), controlPoint1: CGPoint(x: 29.79, y: 59.3), controlPoint2: CGPoint(x: 30.85, y: 60.53))
        shapePath.addCurve(to: CGPoint(x: 33.93, y: 59.71), controlPoint1: CGPoint(x: 33.03, y: 60.53), controlPoint2: CGPoint(x: 33.55, y: 60.24))
        shapePath.addLine(to: CGPoint(x: 33.93, y: 60.42))
        shapePath.addLine(to: CGPoint(x: 34.93, y: 60.42))
        shapePath.addLine(to: CGPoint(x: 34.93, y: 57.59))
        shapePath.close()
        shapePath.move(to: CGPoint(x: 30.85, y: 57.59))
        shapePath.addCurve(to: CGPoint(x: 32.44, y: 55.71), controlPoint1: CGPoint(x: 30.85, y: 56.53), controlPoint2: CGPoint(x: 31.44, y: 55.71))
        shapePath.addCurve(to: CGPoint(x: 33.98, y: 57.59), controlPoint1: CGPoint(x: 33.4, y: 55.71), controlPoint2: CGPoint(x: 33.98, y: 56.53))
        shapePath.addCurve(to: CGPoint(x: 32.44, y: 59.47), controlPoint1: CGPoint(x: 33.98, y: 58.71), controlPoint2: CGPoint(x: 33.34, y: 59.47))
        shapePath.addCurve(to: CGPoint(x: 30.85, y: 57.59), controlPoint1: CGPoint(x: 31.44, y: 59.53), controlPoint2: CGPoint(x: 30.85, y: 58.65))
        shapePath.close()
        shapePath.move(to: CGPoint(x: 69.99, y: 54.65))
        shapePath.addCurve(to: CGPoint(x: 68.61, y: 55.48), controlPoint1: CGPoint(x: 69.43, y: 54.64), controlPoint2: CGPoint(x: 68.91, y: 54.95))
        shapePath.addLine(to: CGPoint(x: 68.61, y: 54.77))
        shapePath.addLine(to: CGPoint(x: 67.61, y: 54.77))
        shapePath.addLine(to: CGPoint(x: 67.61, y: 60.4))
        shapePath.addLine(to: CGPoint(x: 68.61, y: 60.4))
        shapePath.addLine(to: CGPoint(x: 68.61, y: 57.24))
        shapePath.addCurve(to: CGPoint(x: 69.73, y: 55.71), controlPoint1: CGPoint(x: 68.61, y: 56.3), controlPoint2: CGPoint(x: 69.04, y: 55.71))
        shapePath.addCurve(to: CGPoint(x: 70.41, y: 55.83), controlPoint1: CGPoint(x: 69.96, y: 55.72), controlPoint2: CGPoint(x: 70.19, y: 55.76))
        shapePath.addLine(to: CGPoint(x: 70.73, y: 54.77))
        shapePath.addCurve(to: CGPoint(x: 69.99, y: 54.65), controlPoint1: CGPoint(x: 70.49, y: 54.7), controlPoint2: CGPoint(x: 70.24, y: 54.66))
        shapePath.addLine(to: CGPoint(x: 69.99, y: 54.65))
        shapePath.close()
        shapePath.move(to: CGPoint(x: 66.07, y: 57.59))
        shapePath.addLine(to: CGPoint(x: 66.07, y: 54.77))
        shapePath.addLine(to: CGPoint(x: 65.07, y: 54.77))
        shapePath.addLine(to: CGPoint(x: 65.07, y: 55.48))
        shapePath.addCurve(to: CGPoint(x: 63.42, y: 54.66), controlPoint1: CGPoint(x: 64.7, y: 54.95), controlPoint2: CGPoint(x: 64.17, y: 54.66))
        shapePath.addCurve(to: CGPoint(x: 60.94, y: 57.59), controlPoint1: CGPoint(x: 62, y: 54.66), controlPoint2: CGPoint(x: 60.94, y: 55.89))
        shapePath.addCurve(to: CGPoint(x: 63.42, y: 60.53), controlPoint1: CGPoint(x: 60.94, y: 59.3), controlPoint2: CGPoint(x: 61.99, y: 60.53))
        shapePath.addCurve(to: CGPoint(x: 65.07, y: 59.71), controlPoint1: CGPoint(x: 64.17, y: 60.53), controlPoint2: CGPoint(x: 64.7, y: 60.24))
        shapePath.addLine(to: CGPoint(x: 65.07, y: 60.42))
        shapePath.addLine(to: CGPoint(x: 66.07, y: 60.42))
        shapePath.addLine(to: CGPoint(x: 66.07, y: 57.59))
        shapePath.close()
        shapePath.move(to: CGPoint(x: 62, y: 57.59))
        shapePath.addCurve(to: CGPoint(x: 63.58, y: 55.71), controlPoint1: CGPoint(x: 62, y: 56.53), controlPoint2: CGPoint(x: 62.58, y: 55.71))
        shapePath.addCurve(to: CGPoint(x: 65.12, y: 57.59), controlPoint1: CGPoint(x: 64.54, y: 55.71), controlPoint2: CGPoint(x: 65.12, y: 56.53))
        shapePath.addCurve(to: CGPoint(x: 63.58, y: 59.47), controlPoint1: CGPoint(x: 65.12, y: 58.71), controlPoint2: CGPoint(x: 64.48, y: 59.47))
        shapePath.addCurve(to: CGPoint(x: 62, y: 57.59), controlPoint1: CGPoint(x: 62.58, y: 59.53), controlPoint2: CGPoint(x: 62, y: 58.65))
        shapePath.close()
        shapePath.move(to: CGPoint(x: 76.29, y: 57.59))
        shapePath.addLine(to: CGPoint(x: 76.29, y: 52.54))
        shapePath.addLine(to: CGPoint(x: 75.29, y: 52.54))
        shapePath.addLine(to: CGPoint(x: 75.29, y: 55.48))
        shapePath.addCurve(to: CGPoint(x: 73.65, y: 54.65), controlPoint1: CGPoint(x: 74.92, y: 54.95), controlPoint2: CGPoint(x: 74.39, y: 54.65))
        shapePath.addCurve(to: CGPoint(x: 71.16, y: 57.59), controlPoint1: CGPoint(x: 72.22, y: 54.65), controlPoint2: CGPoint(x: 71.16, y: 55.89))
        shapePath.addCurve(to: CGPoint(x: 73.65, y: 60.53), controlPoint1: CGPoint(x: 71.16, y: 59.29), controlPoint2: CGPoint(x: 72.22, y: 60.53))
        shapePath.addCurve(to: CGPoint(x: 75.29, y: 59.7), controlPoint1: CGPoint(x: 74.39, y: 60.53), controlPoint2: CGPoint(x: 74.92, y: 60.23))
        shapePath.addLine(to: CGPoint(x: 75.29, y: 60.41))
        shapePath.addLine(to: CGPoint(x: 76.29, y: 60.41))
        shapePath.addLine(to: CGPoint(x: 76.29, y: 57.59))
        shapePath.close()
        shapePath.move(to: CGPoint(x: 72.22, y: 57.59))
        shapePath.addCurve(to: CGPoint(x: 73.81, y: 55.71), controlPoint1: CGPoint(x: 72.22, y: 56.53), controlPoint2: CGPoint(x: 72.8, y: 55.71))
        shapePath.addCurve(to: CGPoint(x: 75.34, y: 57.59), controlPoint1: CGPoint(x: 74.76, y: 55.71), controlPoint2: CGPoint(x: 75.34, y: 56.53))
        shapePath.addCurve(to: CGPoint(x: 73.81, y: 59.47), controlPoint1: CGPoint(x: 75.34, y: 58.71), controlPoint2: CGPoint(x: 74.7, y: 59.47))
        shapePath.addCurve(to: CGPoint(x: 72.22, y: 57.59), controlPoint1: CGPoint(x: 72.8, y: 59.53), controlPoint2: CGPoint(x: 72.22, y: 58.65))
        shapePath.addLine(to: CGPoint(x: 72.22, y: 57.59))
        shapePath.close()
        fillColor2.setFill()
        shapePath.fill()


        //// Group 5
        //// Rectangle-path Drawing
        let rectanglepathPath = UIBezierPath(rect: CGRect(x: 39.55, y: 12.39, width: 17.72, height: 32.42))
        fillColor20.setFill()
        rectanglepathPath.fill()


        //// Shape 2 Drawing
        let shape2Path = UIBezierPath()
        shape2Path.move(to: CGPoint(x: 41.13, y: 28.6))
        shape2Path.addCurve(to: CGPoint(x: 48.38, y: 12.01), controlPoint1: CGPoint(x: 41.13, y: 22.13), controlPoint2: CGPoint(x: 43.8, y: 16.02))
        shape2Path.addCurve(to: CGPoint(x: 22.59, y: 14.28), controlPoint1: CGPoint(x: 40.57, y: 5.21), controlPoint2: CGPoint(x: 29.34, y: 6.2))
        shape2Path.addCurve(to: CGPoint(x: 22.59, y: 42.92), controlPoint1: CGPoint(x: 15.85, y: 22.37), controlPoint2: CGPoint(x: 15.85, y: 34.83))
        shape2Path.addCurve(to: CGPoint(x: 48.38, y: 45.19), controlPoint1: CGPoint(x: 29.34, y: 51), controlPoint2: CGPoint(x: 40.57, y: 51.99))
        shape2Path.addCurve(to: CGPoint(x: 41.13, y: 28.6), controlPoint1: CGPoint(x: 43.8, y: 41.18), controlPoint2: CGPoint(x: 41.13, y: 35.07))
        shape2Path.close()
        fillColor18.setFill()
        shape2Path.fill()


        //// Shape 3 Drawing
        let shape3Path = UIBezierPath()
        shape3Path.move(to: CGPoint(x: 79.26, y: 28.6))
        shape3Path.addCurve(to: CGPoint(x: 68.54, y: 47.57), controlPoint1: CGPoint(x: 79.27, y: 36.67), controlPoint2: CGPoint(x: 75.1, y: 44.04))
        shape3Path.addCurve(to: CGPoint(x: 48.44, y: 45.19), controlPoint1: CGPoint(x: 61.98, y: 51.1), controlPoint2: CGPoint(x: 54.18, y: 50.18))
        shape3Path.addCurve(to: CGPoint(x: 55.7, y: 28.6), controlPoint1: CGPoint(x: 53.03, y: 41.18), controlPoint2: CGPoint(x: 55.7, y: 35.07))
        shape3Path.addCurve(to: CGPoint(x: 48.44, y: 12.01), controlPoint1: CGPoint(x: 55.7, y: 22.13), controlPoint2: CGPoint(x: 53.03, y: 16.02))
        shape3Path.addCurve(to: CGPoint(x: 68.54, y: 9.63), controlPoint1: CGPoint(x: 54.18, y: 7.02), controlPoint2: CGPoint(x: 61.98, y: 6.1))
        shape3Path.addCurve(to: CGPoint(x: 79.26, y: 28.6), controlPoint1: CGPoint(x: 75.1, y: 13.16), controlPoint2: CGPoint(x: 79.27, y: 20.53))
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

        UIGraphicsBeginImageContextWithOptions(CGSize(width: 96, height: 68), false, 0)
            CreditCardIcons.drawAmex()

        Cache.imageOfAmex = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()

        return Cache.imageOfAmex!
    }

    @objc dynamic public class var imageOfDiners: UIImage {
        if Cache.imageOfDiners != nil {
            return Cache.imageOfDiners!
        }

        UIGraphicsBeginImageContextWithOptions(CGSize(width: 96, height: 68), false, 0)
            CreditCardIcons.drawDiners()

        Cache.imageOfDiners = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()

        return Cache.imageOfDiners!
    }

    @objc dynamic public class var imageOfDiscover: UIImage {
        if Cache.imageOfDiscover != nil {
            return Cache.imageOfDiscover!
        }

        UIGraphicsBeginImageContextWithOptions(CGSize(width: 96, height: 68), false, 0)
            CreditCardIcons.drawDiscover()

        Cache.imageOfDiscover = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()

        return Cache.imageOfDiscover!
    }

    @objc dynamic public class var imageOfUnknown: UIImage {
        if Cache.imageOfUnknown != nil {
            return Cache.imageOfUnknown!
        }

        UIGraphicsBeginImageContextWithOptions(CGSize(width: 96, height: 68), false, 0)
            CreditCardIcons.drawUnknown()

        Cache.imageOfUnknown = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()

        return Cache.imageOfUnknown!
    }

    @objc dynamic public class var imageOfJcb: UIImage {
        if Cache.imageOfJcb != nil {
            return Cache.imageOfJcb!
        }

        UIGraphicsBeginImageContextWithOptions(CGSize(width: 96, height: 68), false, 0)
            CreditCardIcons.drawJcb()

        Cache.imageOfJcb = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()

        return Cache.imageOfJcb!
    }

    @objc dynamic public class var imageOfVisa: UIImage {
        if Cache.imageOfVisa != nil {
            return Cache.imageOfVisa!
        }

        UIGraphicsBeginImageContextWithOptions(CGSize(width: 96, height: 68), false, 0)
            CreditCardIcons.drawVisa()

        Cache.imageOfVisa = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()

        return Cache.imageOfVisa!
    }

    @objc dynamic public class var imageOfMaestro: UIImage {
        if Cache.imageOfMaestro != nil {
            return Cache.imageOfMaestro!
        }

        UIGraphicsBeginImageContextWithOptions(CGSize(width: 96, height: 68), false, 0)
            CreditCardIcons.drawMaestro()

        Cache.imageOfMaestro = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()

        return Cache.imageOfMaestro!
    }

    @objc dynamic public class var imageOfMastercard: UIImage {
        if Cache.imageOfMastercard != nil {
            return Cache.imageOfMastercard!
        }

        UIGraphicsBeginImageContextWithOptions(CGSize(width: 96, height: 68), false, 0)
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
