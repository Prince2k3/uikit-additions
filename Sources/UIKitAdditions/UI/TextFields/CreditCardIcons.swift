import UIKit

public class CreditCardIcons: NSObject {
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

    @objc dynamic public class func drawAmex(frame targetFrame: CGRect = CGRect(x: 0, y: 0, width: 780, height: 500), resizing: ResizingBehavior = .aspectFit) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()!
        
        //// Resize to Target Frame
        context.saveGState()
        let resizedFrame: CGRect = resizing.apply(rect: CGRect(x: 0, y: 0, width: 780, height: 500), target: targetFrame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy(x: resizedFrame.width / 780, y: resizedFrame.height / 500)


        //// Color Declarations
        let fillColor = UIColor(red: 0.145, green: 0.341, blue: 0.839, alpha: 1.000)
        let fillColor2 = UIColor(red: 1.000, green: 1.000, blue: 1.000, alpha: 1.000)

        //// Bezier Drawing
        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: 40, y: 0))
        bezierPath.addLine(to: CGPoint(x: 740, y: 0))
        bezierPath.addCurve(to: CGPoint(x: 780, y: 40), controlPoint1: CGPoint(x: 762.09, y: 0), controlPoint2: CGPoint(x: 780, y: 17.91))
        bezierPath.addLine(to: CGPoint(x: 780, y: 460))
        bezierPath.addCurve(to: CGPoint(x: 740, y: 500), controlPoint1: CGPoint(x: 780, y: 482.09), controlPoint2: CGPoint(x: 762.09, y: 500))
        bezierPath.addLine(to: CGPoint(x: 40, y: 500))
        bezierPath.addCurve(to: CGPoint(x: 0, y: 460), controlPoint1: CGPoint(x: 17.91, y: 500), controlPoint2: CGPoint(x: 0, y: 482.09))
        bezierPath.addLine(to: CGPoint(x: 0, y: 40))
        bezierPath.addCurve(to: CGPoint(x: 40, y: 0), controlPoint1: CGPoint(x: 0, y: 17.91), controlPoint2: CGPoint(x: 17.91, y: 0))
        bezierPath.close()
        fillColor.setFill()
        bezierPath.fill()


        //// Bezier 2 Drawing
        let bezier2Path = UIBezierPath()
        bezier2Path.move(to: CGPoint(x: 0.25, y: 235.69))
        bezier2Path.addLine(to: CGPoint(x: 37.69, y: 235.69))
        bezier2Path.addLine(to: CGPoint(x: 46.14, y: 216.18))
        bezier2Path.addLine(to: CGPoint(x: 65.04, y: 216.18))
        bezier2Path.addLine(to: CGPoint(x: 73.46, y: 235.69))
        bezier2Path.addLine(to: CGPoint(x: 147.12, y: 235.69))
        bezier2Path.addLine(to: CGPoint(x: 147.12, y: 220.77))
        bezier2Path.addLine(to: CGPoint(x: 153.7, y: 235.75))
        bezier2Path.addLine(to: CGPoint(x: 191.94, y: 235.75))
        bezier2Path.addLine(to: CGPoint(x: 198.52, y: 220.55))
        bezier2Path.addLine(to: CGPoint(x: 198.52, y: 235.69))
        bezier2Path.addLine(to: CGPoint(x: 381.6, y: 235.69))
        bezier2Path.addLine(to: CGPoint(x: 381.51, y: 203.66))
        bezier2Path.addLine(to: CGPoint(x: 385.06, y: 203.66))
        bezier2Path.addCurve(to: CGPoint(x: 388.26, y: 207.89), controlPoint1: CGPoint(x: 387.54, y: 203.75), controlPoint2: CGPoint(x: 388.26, y: 203.97))
        bezier2Path.addLine(to: CGPoint(x: 388.26, y: 235.69))
        bezier2Path.addLine(to: CGPoint(x: 482.95, y: 235.69))
        bezier2Path.addLine(to: CGPoint(x: 482.95, y: 228.24))
        bezier2Path.addCurve(to: CGPoint(x: 518.1, y: 235.69), controlPoint1: CGPoint(x: 490.59, y: 232.16), controlPoint2: CGPoint(x: 502.47, y: 235.69))
        bezier2Path.addLine(to: CGPoint(x: 557.93, y: 235.69))
        bezier2Path.addLine(to: CGPoint(x: 566.46, y: 216.18))
        bezier2Path.addLine(to: CGPoint(x: 585.36, y: 216.18))
        bezier2Path.addLine(to: CGPoint(x: 593.7, y: 235.69))
        bezier2Path.addLine(to: CGPoint(x: 670.46, y: 235.69))
        bezier2Path.addLine(to: CGPoint(x: 670.46, y: 217.16))
        bezier2Path.addLine(to: CGPoint(x: 682.09, y: 235.69))
        bezier2Path.addLine(to: CGPoint(x: 743.6, y: 235.69))
        bezier2Path.addLine(to: CGPoint(x: 743.6, y: 113.18))
        bezier2Path.addLine(to: CGPoint(x: 682.72, y: 113.18))
        bezier2Path.addLine(to: CGPoint(x: 682.72, y: 127.65))
        bezier2Path.addLine(to: CGPoint(x: 674.2, y: 113.18))
        bezier2Path.addLine(to: CGPoint(x: 611.73, y: 113.18))
        bezier2Path.addLine(to: CGPoint(x: 611.73, y: 127.65))
        bezier2Path.addLine(to: CGPoint(x: 603.9, y: 113.18))
        bezier2Path.addLine(to: CGPoint(x: 519.52, y: 113.18))
        bezier2Path.addCurve(to: CGPoint(x: 482.95, y: 120.33), controlPoint1: CGPoint(x: 505.4, y: 113.18), controlPoint2: CGPoint(x: 492.98, y: 115.07))
        bezier2Path.addLine(to: CGPoint(x: 482.95, y: 113.18))
        bezier2Path.addLine(to: CGPoint(x: 424.72, y: 113.18))
        bezier2Path.addLine(to: CGPoint(x: 424.72, y: 120.33))
        bezier2Path.addCurve(to: CGPoint(x: 399.97, y: 113.18), controlPoint1: CGPoint(x: 418.34, y: 114.91), controlPoint2: CGPoint(x: 409.64, y: 113.18))
        bezier2Path.addLine(to: CGPoint(x: 187.23, y: 113.18))
        bezier2Path.addLine(to: CGPoint(x: 172.96, y: 144.82))
        bezier2Path.addLine(to: CGPoint(x: 158.3, y: 113.18))
        bezier2Path.addLine(to: CGPoint(x: 91.29, y: 113.18))
        bezier2Path.addLine(to: CGPoint(x: 91.29, y: 127.65))
        bezier2Path.addLine(to: CGPoint(x: 83.93, y: 113.18))
        bezier2Path.addLine(to: CGPoint(x: 26.79, y: 113.18))
        bezier2Path.addLine(to: CGPoint(x: 0.25, y: 171.43))
        bezier2Path.addLine(to: CGPoint(x: 0.25, y: 235.69))
        bezier2Path.addLine(to: CGPoint(x: 0.25, y: 235.69))
        bezier2Path.addLine(to: CGPoint(x: 0.25, y: 235.69))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 236.59, y: 218.02))
        bezier2Path.addLine(to: CGPoint(x: 214.13, y: 218.02))
        bezier2Path.addLine(to: CGPoint(x: 214.05, y: 149.23))
        bezier2Path.addLine(to: CGPoint(x: 182.27, y: 218.02))
        bezier2Path.addLine(to: CGPoint(x: 163.03, y: 218.02))
        bezier2Path.addLine(to: CGPoint(x: 131.17, y: 149.17))
        bezier2Path.addLine(to: CGPoint(x: 131.17, y: 218.02))
        bezier2Path.addLine(to: CGPoint(x: 86.6, y: 218.02))
        bezier2Path.addLine(to: CGPoint(x: 78.18, y: 198.43))
        bezier2Path.addLine(to: CGPoint(x: 32.56, y: 198.43))
        bezier2Path.addLine(to: CGPoint(x: 24.05, y: 218.02))
        bezier2Path.addLine(to: CGPoint(x: 0.25, y: 218.02))
        bezier2Path.addLine(to: CGPoint(x: 39.49, y: 130.18))
        bezier2Path.addLine(to: CGPoint(x: 72.05, y: 130.18))
        bezier2Path.addLine(to: CGPoint(x: 109.32, y: 213.35))
        bezier2Path.addLine(to: CGPoint(x: 109.32, y: 130.18))
        bezier2Path.addLine(to: CGPoint(x: 145.08, y: 130.18))
        bezier2Path.addLine(to: CGPoint(x: 173.76, y: 189.77))
        bezier2Path.addLine(to: CGPoint(x: 200.11, y: 130.18))
        bezier2Path.addLine(to: CGPoint(x: 236.59, y: 130.18))
        bezier2Path.addLine(to: CGPoint(x: 236.59, y: 218.02))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 70.69, y: 180.2))
        bezier2Path.addLine(to: CGPoint(x: 55.69, y: 145.18))
        bezier2Path.addLine(to: CGPoint(x: 40.78, y: 180.2))
        bezier2Path.addLine(to: CGPoint(x: 70.69, y: 180.2))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 325.99, y: 218.02))
        bezier2Path.addLine(to: CGPoint(x: 252.79, y: 218.02))
        bezier2Path.addLine(to: CGPoint(x: 252.79, y: 130.18))
        bezier2Path.addLine(to: CGPoint(x: 325.99, y: 130.18))
        bezier2Path.addLine(to: CGPoint(x: 325.99, y: 148.47))
        bezier2Path.addLine(to: CGPoint(x: 274.7, y: 148.47))
        bezier2Path.addLine(to: CGPoint(x: 274.7, y: 164.3))
        bezier2Path.addLine(to: CGPoint(x: 324.76, y: 164.3))
        bezier2Path.addLine(to: CGPoint(x: 324.76, y: 182.31))
        bezier2Path.addLine(to: CGPoint(x: 274.7, y: 182.31))
        bezier2Path.addLine(to: CGPoint(x: 274.7, y: 199.85))
        bezier2Path.addLine(to: CGPoint(x: 325.99, y: 199.85))
        bezier2Path.addLine(to: CGPoint(x: 325.99, y: 218.02))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 429.15, y: 153.84))
        bezier2Path.addCurve(to: CGPoint(x: 413.71, y: 177.25), controlPoint1: CGPoint(x: 429.15, y: 167.84), controlPoint2: CGPoint(x: 419.4, y: 175.08))
        bezier2Path.addCurve(to: CGPoint(x: 424.55, y: 184.65), controlPoint1: CGPoint(x: 418.51, y: 179), controlPoint2: CGPoint(x: 422.61, y: 182.09))
        bezier2Path.addCurve(to: CGPoint(x: 428.18, y: 200.76), controlPoint1: CGPoint(x: 427.65, y: 189.02), controlPoint2: CGPoint(x: 428.18, y: 192.92))
        bezier2Path.addLine(to: CGPoint(x: 428.18, y: 218.02))
        bezier2Path.addLine(to: CGPoint(x: 406.08, y: 218.02))
        bezier2Path.addLine(to: CGPoint(x: 405.99, y: 206.94))
        bezier2Path.addCurve(to: CGPoint(x: 402.54, y: 189.83), controlPoint1: CGPoint(x: 405.99, y: 201.66), controlPoint2: CGPoint(x: 406.52, y: 194.05))
        bezier2Path.addCurve(to: CGPoint(x: 386.56, y: 186.07), controlPoint1: CGPoint(x: 399.33, y: 186.74), controlPoint2: CGPoint(x: 394.45, y: 186.07))
        bezier2Path.addLine(to: CGPoint(x: 363.04, y: 186.07))
        bezier2Path.addLine(to: CGPoint(x: 363.04, y: 218.02))
        bezier2Path.addLine(to: CGPoint(x: 341.13, y: 218.02))
        bezier2Path.addLine(to: CGPoint(x: 341.13, y: 130.18))
        bezier2Path.addLine(to: CGPoint(x: 391.53, y: 130.18))
        bezier2Path.addCurve(to: CGPoint(x: 418.06, y: 134.39), controlPoint1: CGPoint(x: 402.73, y: 130.18), controlPoint2: CGPoint(x: 410.98, y: 130.46))
        bezier2Path.addCurve(to: CGPoint(x: 429.15, y: 153.84), controlPoint1: CGPoint(x: 425, y: 138.31), controlPoint2: CGPoint(x: 429.15, y: 144.04))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 401.45, y: 166.88))
        bezier2Path.addCurve(to: CGPoint(x: 390.61, y: 168.69), controlPoint1: CGPoint(x: 398.44, y: 168.63), controlPoint2: CGPoint(x: 394.88, y: 168.69))
        bezier2Path.addLine(to: CGPoint(x: 363.99, y: 168.69))
        bezier2Path.addLine(to: CGPoint(x: 363.99, y: 149.18))
        bezier2Path.addLine(to: CGPoint(x: 390.98, y: 149.18))
        bezier2Path.addCurve(to: CGPoint(x: 401.37, y: 150.76), controlPoint1: CGPoint(x: 394.79, y: 149.18), controlPoint2: CGPoint(x: 398.78, y: 149.34))
        bezier2Path.addCurve(to: CGPoint(x: 405.97, y: 158.53), controlPoint1: CGPoint(x: 404.21, y: 152.04), controlPoint2: CGPoint(x: 405.97, y: 154.77))
        bezier2Path.addCurve(to: CGPoint(x: 401.45, y: 166.88), controlPoint1: CGPoint(x: 405.97, y: 162.37), controlPoint2: CGPoint(x: 404.3, y: 165.46))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 464.3, y: 218.02))
        bezier2Path.addLine(to: CGPoint(x: 441.94, y: 218.02))
        bezier2Path.addLine(to: CGPoint(x: 441.94, y: 130.18))
        bezier2Path.addLine(to: CGPoint(x: 464.3, y: 130.18))
        bezier2Path.addLine(to: CGPoint(x: 464.3, y: 218.02))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 723.86, y: 218.02))
        bezier2Path.addLine(to: CGPoint(x: 692.8, y: 218.02))
        bezier2Path.addLine(to: CGPoint(x: 651.27, y: 152.09))
        bezier2Path.addLine(to: CGPoint(x: 651.27, y: 218.02))
        bezier2Path.addLine(to: CGPoint(x: 606.64, y: 218.02))
        bezier2Path.addLine(to: CGPoint(x: 598.11, y: 198.43))
        bezier2Path.addLine(to: CGPoint(x: 552.59, y: 198.43))
        bezier2Path.addLine(to: CGPoint(x: 544.32, y: 218.02))
        bezier2Path.addLine(to: CGPoint(x: 518.67, y: 218.02))
        bezier2Path.addCurve(to: CGPoint(x: 486.9, y: 208.3), controlPoint1: CGPoint(x: 508.03, y: 218.02), controlPoint2: CGPoint(x: 494.54, y: 215.76))
        bezier2Path.addCurve(to: CGPoint(x: 475.19, y: 174.77), controlPoint1: CGPoint(x: 479.2, y: 200.84), controlPoint2: CGPoint(x: 475.19, y: 190.74))
        bezier2Path.addCurve(to: CGPoint(x: 487.01, y: 140.42), controlPoint1: CGPoint(x: 475.19, y: 161.74), controlPoint2: CGPoint(x: 477.59, y: 149.83))
        bezier2Path.addCurve(to: CGPoint(x: 520.29, y: 130.18), controlPoint1: CGPoint(x: 494.09, y: 133.41), controlPoint2: CGPoint(x: 505.19, y: 130.18))
        bezier2Path.addLine(to: CGPoint(x: 541.5, y: 130.18))
        bezier2Path.addLine(to: CGPoint(x: 541.5, y: 149))
        bezier2Path.addLine(to: CGPoint(x: 520.73, y: 149))
        bezier2Path.addCurve(to: CGPoint(x: 503.87, y: 154.2), controlPoint1: CGPoint(x: 512.73, y: 149), controlPoint2: CGPoint(x: 508.22, y: 150.14))
        bezier2Path.addCurve(to: CGPoint(x: 497.57, y: 174.1), controlPoint1: CGPoint(x: 500.13, y: 157.9), controlPoint2: CGPoint(x: 497.57, y: 164.89))
        bezier2Path.addCurve(to: CGPoint(x: 503.59, y: 194.73), controlPoint1: CGPoint(x: 497.57, y: 183.51), controlPoint2: CGPoint(x: 499.52, y: 190.3))
        bezier2Path.addCurve(to: CGPoint(x: 518.87, y: 199.26), controlPoint1: CGPoint(x: 506.97, y: 198.21), controlPoint2: CGPoint(x: 513.1, y: 199.26))
        bezier2Path.addLine(to: CGPoint(x: 528.71, y: 199.26))
        bezier2Path.addLine(to: CGPoint(x: 559.59, y: 130.18))
        bezier2Path.addLine(to: CGPoint(x: 592.43, y: 130.18))
        bezier2Path.addLine(to: CGPoint(x: 629.53, y: 213.26))
        bezier2Path.addLine(to: CGPoint(x: 629.53, y: 130.19))
        bezier2Path.addLine(to: CGPoint(x: 662.89, y: 130.19))
        bezier2Path.addLine(to: CGPoint(x: 701.41, y: 191.36))
        bezier2Path.addLine(to: CGPoint(x: 701.41, y: 130.19))
        bezier2Path.addLine(to: CGPoint(x: 723.86, y: 130.19))
        bezier2Path.addLine(to: CGPoint(x: 723.86, y: 218.02))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 590.66, y: 180.2))
        bezier2Path.addLine(to: CGPoint(x: 575.49, y: 145.18))
        bezier2Path.addLine(to: CGPoint(x: 560.41, y: 180.2))
        bezier2Path.addLine(to: CGPoint(x: 590.66, y: 180.2))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 779.7, y: 358.28))
        bezier2Path.addCurve(to: CGPoint(x: 749.96, y: 369.52), controlPoint1: CGPoint(x: 774.38, y: 365.74), controlPoint2: CGPoint(x: 764, y: 369.52))
        bezier2Path.addLine(to: CGPoint(x: 707.64, y: 369.52))
        bezier2Path.addLine(to: CGPoint(x: 707.64, y: 350.68))
        bezier2Path.addLine(to: CGPoint(x: 749.79, y: 350.68))
        bezier2Path.addCurve(to: CGPoint(x: 758.66, y: 348.5), controlPoint1: CGPoint(x: 753.97, y: 350.68), controlPoint2: CGPoint(x: 756.9, y: 350.15))
        bezier2Path.addCurve(to: CGPoint(x: 761.25, y: 342.77), controlPoint1: CGPoint(x: 760.32, y: 347.03), controlPoint2: CGPoint(x: 761.26, y: 344.95))
        bezier2Path.addCurve(to: CGPoint(x: 758.57, y: 336.96), controlPoint1: CGPoint(x: 761.25, y: 340.21), controlPoint2: CGPoint(x: 760.19, y: 338.18))
        bezier2Path.addCurve(to: CGPoint(x: 750.85, y: 335.01), controlPoint1: CGPoint(x: 756.98, y: 335.62), controlPoint2: CGPoint(x: 754.67, y: 335.01))
        bezier2Path.addCurve(to: CGPoint(x: 704.61, y: 307.82), controlPoint1: CGPoint(x: 730.28, y: 334.34), controlPoint2: CGPoint(x: 704.61, y: 335.62))
        bezier2Path.addCurve(to: CGPoint(x: 736.04, y: 281.66), controlPoint1: CGPoint(x: 704.61, y: 295.08), controlPoint2: CGPoint(x: 713.05, y: 281.66))
        bezier2Path.addLine(to: CGPoint(x: 779.69, y: 281.66))
        bezier2Path.addLine(to: CGPoint(x: 779.69, y: 264.18))
        bezier2Path.addLine(to: CGPoint(x: 739.14, y: 264.18))
        bezier2Path.addCurve(to: CGPoint(x: 711.71, y: 271.36), controlPoint1: CGPoint(x: 726.9, y: 264.18), controlPoint2: CGPoint(x: 718.01, y: 266.99))
        bezier2Path.addLine(to: CGPoint(x: 711.71, y: 264.18))
        bezier2Path.addLine(to: CGPoint(x: 651.73, y: 264.18))
        bezier2Path.addCurve(to: CGPoint(x: 625.55, y: 271.36), controlPoint1: CGPoint(x: 642.13, y: 264.18), controlPoint2: CGPoint(x: 630.87, y: 266.46))
        bezier2Path.addLine(to: CGPoint(x: 625.55, y: 264.18))
        bezier2Path.addLine(to: CGPoint(x: 518.43, y: 264.18))
        bezier2Path.addLine(to: CGPoint(x: 518.43, y: 271.36))
        bezier2Path.addCurve(to: CGPoint(x: 488.88, y: 264.18), controlPoint1: CGPoint(x: 509.9, y: 265.46), controlPoint2: CGPoint(x: 495.52, y: 264.18))
        bezier2Path.addLine(to: CGPoint(x: 418.22, y: 264.18))
        bezier2Path.addLine(to: CGPoint(x: 418.22, y: 271.36))
        bezier2Path.addCurve(to: CGPoint(x: 387.34, y: 264.18), controlPoint1: CGPoint(x: 411.48, y: 265.1), controlPoint2: CGPoint(x: 396.48, y: 264.18))
        bezier2Path.addLine(to: CGPoint(x: 308.26, y: 264.18))
        bezier2Path.addLine(to: CGPoint(x: 290.17, y: 282.95))
        bezier2Path.addLine(to: CGPoint(x: 273.22, y: 264.18))
        bezier2Path.addLine(to: CGPoint(x: 155.09, y: 264.18))
        bezier2Path.addLine(to: CGPoint(x: 155.09, y: 386.77))
        bezier2Path.addLine(to: CGPoint(x: 270.99, y: 386.77))
        bezier2Path.addLine(to: CGPoint(x: 289.63, y: 367.71))
        bezier2Path.addLine(to: CGPoint(x: 307.2, y: 386.77))
        bezier2Path.addLine(to: CGPoint(x: 378.64, y: 386.83))
        bezier2Path.addLine(to: CGPoint(x: 378.64, y: 357.99))
        bezier2Path.addLine(to: CGPoint(x: 385.66, y: 357.99))
        bezier2Path.addCurve(to: CGPoint(x: 416.18, y: 353.68), controlPoint1: CGPoint(x: 395.14, y: 358.13), controlPoint2: CGPoint(x: 406.32, y: 357.77))
        bezier2Path.addLine(to: CGPoint(x: 416.18, y: 386.77))
        bezier2Path.addLine(to: CGPoint(x: 475.11, y: 386.77))
        bezier2Path.addLine(to: CGPoint(x: 475.11, y: 354.81))
        bezier2Path.addLine(to: CGPoint(x: 477.95, y: 354.81))
        bezier2Path.addCurve(to: CGPoint(x: 481.94, y: 358.43), controlPoint1: CGPoint(x: 481.58, y: 354.81), controlPoint2: CGPoint(x: 481.94, y: 354.96))
        bezier2Path.addLine(to: CGPoint(x: 481.94, y: 386.76))
        bezier2Path.addLine(to: CGPoint(x: 660.95, y: 386.76))
        bezier2Path.addCurve(to: CGPoint(x: 690.77, y: 378.92), controlPoint1: CGPoint(x: 672.31, y: 386.76), controlPoint2: CGPoint(x: 684.19, y: 383.98))
        bezier2Path.addLine(to: CGPoint(x: 690.77, y: 386.76))
        bezier2Path.addLine(to: CGPoint(x: 747.55, y: 386.76))
        bezier2Path.addCurve(to: CGPoint(x: 779.69, y: 381.11), controlPoint1: CGPoint(x: 759.37, y: 386.76), controlPoint2: CGPoint(x: 770.91, y: 385.18))
        bezier2Path.addLine(to: CGPoint(x: 779.69, y: 358.27))
        bezier2Path.addLine(to: CGPoint(x: 779.7, y: 358.28))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 424.76, y: 311.12))
        bezier2Path.addCurve(to: CGPoint(x: 386.6, y: 340.57), controlPoint1: CGPoint(x: 424.76, y: 335.53), controlPoint2: CGPoint(x: 405.75, y: 340.57))
        bezier2Path.addLine(to: CGPoint(x: 359.26, y: 340.57))
        bezier2Path.addLine(to: CGPoint(x: 359.26, y: 370.04))
        bezier2Path.addLine(to: CGPoint(x: 316.66, y: 370.04))
        bezier2Path.addLine(to: CGPoint(x: 289.68, y: 340.95))
        bezier2Path.addLine(to: CGPoint(x: 261.64, y: 370.04))
        bezier2Path.addLine(to: CGPoint(x: 174.84, y: 370.04))
        bezier2Path.addLine(to: CGPoint(x: 174.84, y: 282.18))
        bezier2Path.addLine(to: CGPoint(x: 262.97, y: 282.18))
        bezier2Path.addLine(to: CGPoint(x: 289.93, y: 310.98))
        bezier2Path.addLine(to: CGPoint(x: 317.81, y: 282.18))
        bezier2Path.addLine(to: CGPoint(x: 387.83, y: 282.18))
        bezier2Path.addCurve(to: CGPoint(x: 424.76, y: 311.12), controlPoint1: CGPoint(x: 405.22, y: 282.18), controlPoint2: CGPoint(x: 424.76, y: 286.79))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 250.54, y: 351.56))
        bezier2Path.addLine(to: CGPoint(x: 196.66, y: 351.56))
        bezier2Path.addLine(to: CGPoint(x: 196.66, y: 334.08))
        bezier2Path.addLine(to: CGPoint(x: 244.77, y: 334.08))
        bezier2Path.addLine(to: CGPoint(x: 244.77, y: 316.15))
        bezier2Path.addLine(to: CGPoint(x: 196.66, y: 316.15))
        bezier2Path.addLine(to: CGPoint(x: 196.66, y: 300.18))
        bezier2Path.addLine(to: CGPoint(x: 251.6, y: 300.18))
        bezier2Path.addLine(to: CGPoint(x: 275.57, y: 325.78))
        bezier2Path.addLine(to: CGPoint(x: 250.54, y: 351.56))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 337.35, y: 361.62))
        bezier2Path.addLine(to: CGPoint(x: 303.7, y: 325.83))
        bezier2Path.addLine(to: CGPoint(x: 337.35, y: 291.18))
        bezier2Path.addLine(to: CGPoint(x: 337.35, y: 361.62))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 387.1, y: 322.55))
        bezier2Path.addLine(to: CGPoint(x: 358.79, y: 322.55))
        bezier2Path.addLine(to: CGPoint(x: 358.79, y: 300.18))
        bezier2Path.addLine(to: CGPoint(x: 387.36, y: 300.18))
        bezier2Path.addCurve(to: CGPoint(x: 400.76, y: 310.95), controlPoint1: CGPoint(x: 395.27, y: 300.18), controlPoint2: CGPoint(x: 400.76, y: 303.27))
        bezier2Path.addCurve(to: CGPoint(x: 387.1, y: 322.55), controlPoint1: CGPoint(x: 400.76, y: 318.55), controlPoint2: CGPoint(x: 395.52, y: 322.55))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 535.46, y: 282.18))
        bezier2Path.addLine(to: CGPoint(x: 608.6, y: 282.18))
        bezier2Path.addLine(to: CGPoint(x: 608.6, y: 300.35))
        bezier2Path.addLine(to: CGPoint(x: 557.29, y: 300.35))
        bezier2Path.addLine(to: CGPoint(x: 557.29, y: 316.32))
        bezier2Path.addLine(to: CGPoint(x: 607.35, y: 316.32))
        bezier2Path.addLine(to: CGPoint(x: 607.35, y: 334.25))
        bezier2Path.addLine(to: CGPoint(x: 557.29, y: 334.25))
        bezier2Path.addLine(to: CGPoint(x: 557.29, y: 351.73))
        bezier2Path.addLine(to: CGPoint(x: 608.6, y: 351.81))
        bezier2Path.addLine(to: CGPoint(x: 608.6, y: 370.04))
        bezier2Path.addLine(to: CGPoint(x: 535.46, y: 370.04))
        bezier2Path.addLine(to: CGPoint(x: 535.46, y: 282.18))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 507.35, y: 329.21))
        bezier2Path.addCurve(to: CGPoint(x: 518.08, y: 336.58), controlPoint1: CGPoint(x: 512.22, y: 330.93), controlPoint2: CGPoint(x: 516.21, y: 334.02))
        bezier2Path.addCurve(to: CGPoint(x: 521.71, y: 352.62), controlPoint1: CGPoint(x: 521.17, y: 340.87), controlPoint2: CGPoint(x: 521.62, y: 344.88))
        bezier2Path.addLine(to: CGPoint(x: 521.71, y: 370.04))
        bezier2Path.addLine(to: CGPoint(x: 499.71, y: 370.04))
        bezier2Path.addLine(to: CGPoint(x: 499.71, y: 359.05))
        bezier2Path.addCurve(to: CGPoint(x: 496.17, y: 341.85), controlPoint1: CGPoint(x: 499.71, y: 353.76), controlPoint2: CGPoint(x: 500.24, y: 345.93))
        bezier2Path.addCurve(to: CGPoint(x: 480.09, y: 337.95), controlPoint1: CGPoint(x: 492.97, y: 338.7), controlPoint2: CGPoint(x: 488.08, y: 337.95))
        bezier2Path.addLine(to: CGPoint(x: 456.67, y: 337.95))
        bezier2Path.addLine(to: CGPoint(x: 456.67, y: 370.04))
        bezier2Path.addLine(to: CGPoint(x: 434.65, y: 370.04))
        bezier2Path.addLine(to: CGPoint(x: 434.65, y: 282.18))
        bezier2Path.addLine(to: CGPoint(x: 485.24, y: 282.18))
        bezier2Path.addCurve(to: CGPoint(x: 511.61, y: 286.33), controlPoint1: CGPoint(x: 496.34, y: 282.18), controlPoint2: CGPoint(x: 504.42, y: 282.65))
        bezier2Path.addCurve(to: CGPoint(x: 522.88, y: 305.84), controlPoint1: CGPoint(x: 518.53, y: 290.33), controlPoint2: CGPoint(x: 522.88, y: 295.81))
        bezier2Path.addCurve(to: CGPoint(x: 507.35, y: 329.21), controlPoint1: CGPoint(x: 522.88, y: 319.86), controlPoint2: CGPoint(x: 513.11, y: 327.01))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 494.96, y: 318.1))
        bezier2Path.addCurve(to: CGPoint(x: 484.14, y: 319.91), controlPoint1: CGPoint(x: 492.03, y: 319.77), controlPoint2: CGPoint(x: 488.4, y: 319.91))
        bezier2Path.addLine(to: CGPoint(x: 457.52, y: 319.91))
        bezier2Path.addLine(to: CGPoint(x: 457.52, y: 300.18))
        bezier2Path.addLine(to: CGPoint(x: 484.5, y: 300.18))
        bezier2Path.addCurve(to: CGPoint(x: 494.96, y: 301.77), controlPoint1: CGPoint(x: 488.4, y: 300.18), controlPoint2: CGPoint(x: 492.31, y: 300.26))
        bezier2Path.addCurve(to: CGPoint(x: 499.5, y: 309.67), controlPoint1: CGPoint(x: 497.8, y: 303.19), controlPoint2: CGPoint(x: 499.5, y: 305.91))
        bezier2Path.addCurve(to: CGPoint(x: 494.96, y: 318.1), controlPoint1: CGPoint(x: 499.5, y: 313.43), controlPoint2: CGPoint(x: 497.8, y: 316.46))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 692.78, y: 323.7))
        bezier2Path.addCurve(to: CGPoint(x: 699.33, y: 342.31), controlPoint1: CGPoint(x: 697.05, y: 327.93), controlPoint2: CGPoint(x: 699.33, y: 333.27))
        bezier2Path.addCurve(to: CGPoint(x: 664.91, y: 370.03), controlPoint1: CGPoint(x: 699.33, y: 361.21), controlPoint2: CGPoint(x: 687.01, y: 370.03))
        bezier2Path.addLine(to: CGPoint(x: 622.23, y: 370.03))
        bezier2Path.addLine(to: CGPoint(x: 622.23, y: 351.19))
        bezier2Path.addLine(to: CGPoint(x: 664.74, y: 351.19))
        bezier2Path.addCurve(to: CGPoint(x: 673.69, y: 349.02), controlPoint1: CGPoint(x: 668.9, y: 351.19), controlPoint2: CGPoint(x: 671.84, y: 350.67))
        bezier2Path.addCurve(to: CGPoint(x: 676.28, y: 343.29), controlPoint1: CGPoint(x: 675.2, y: 347.66), controlPoint2: CGPoint(x: 676.28, y: 345.69))
        bezier2Path.addCurve(to: CGPoint(x: 673.6, y: 337.48), controlPoint1: CGPoint(x: 676.28, y: 340.73), controlPoint2: CGPoint(x: 675.11, y: 338.7))
        bezier2Path.addCurve(to: CGPoint(x: 665.8, y: 335.53), controlPoint1: CGPoint(x: 671.93, y: 336.14), controlPoint2: CGPoint(x: 669.62, y: 335.53))
        bezier2Path.addCurve(to: CGPoint(x: 619.64, y: 308.34), controlPoint1: CGPoint(x: 645.31, y: 334.86), controlPoint2: CGPoint(x: 619.64, y: 336.14))
        bezier2Path.addCurve(to: CGPoint(x: 650.97, y: 282.18), controlPoint1: CGPoint(x: 619.64, y: 295.59), controlPoint2: CGPoint(x: 628, y: 282.18))
        bezier2Path.addLine(to: CGPoint(x: 694.91, y: 282.18))
        bezier2Path.addLine(to: CGPoint(x: 694.91, y: 300.88))
        bezier2Path.addLine(to: CGPoint(x: 654.71, y: 300.88))
        bezier2Path.addCurve(to: CGPoint(x: 645.93, y: 302.47), controlPoint1: CGPoint(x: 650.72, y: 300.88), controlPoint2: CGPoint(x: 648.13, y: 301.02))
        bezier2Path.addCurve(to: CGPoint(x: 642.64, y: 308.79), controlPoint1: CGPoint(x: 643.53, y: 303.89), controlPoint2: CGPoint(x: 642.64, y: 306))
        bezier2Path.addCurve(to: CGPoint(x: 647.43, y: 315.33), controlPoint1: CGPoint(x: 642.64, y: 312.1), controlPoint2: CGPoint(x: 644.68, y: 314.36))
        bezier2Path.addCurve(to: CGPoint(x: 655.96, y: 316.33), controlPoint1: CGPoint(x: 649.75, y: 316.1), controlPoint2: CGPoint(x: 652.23, y: 316.33))
        bezier2Path.addLine(to: CGPoint(x: 667.76, y: 316.63))
        bezier2Path.addCurve(to: CGPoint(x: 692.78, y: 323.7), controlPoint1: CGPoint(x: 679.65, y: 316.91), controlPoint2: CGPoint(x: 687.82, y: 318.88))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 779.74, y: 300.18))
        bezier2Path.addLine(to: CGPoint(x: 739.8, y: 300.18))
        bezier2Path.addCurve(to: CGPoint(x: 730.93, y: 301.76), controlPoint1: CGPoint(x: 735.81, y: 300.18), controlPoint2: CGPoint(x: 733.16, y: 300.32))
        bezier2Path.addCurve(to: CGPoint(x: 727.73, y: 308.09), controlPoint1: CGPoint(x: 728.62, y: 303.19), controlPoint2: CGPoint(x: 727.73, y: 305.3))
        bezier2Path.addCurve(to: CGPoint(x: 732.52, y: 314.63), controlPoint1: CGPoint(x: 727.73, y: 311.4), controlPoint2: CGPoint(x: 729.68, y: 313.65))
        bezier2Path.addCurve(to: CGPoint(x: 740.96, y: 315.63), controlPoint1: CGPoint(x: 734.83, y: 315.4), controlPoint2: CGPoint(x: 737.32, y: 315.63))
        bezier2Path.addLine(to: CGPoint(x: 752.84, y: 315.93))
        bezier2Path.addCurve(to: CGPoint(x: 777.7, y: 323), controlPoint1: CGPoint(x: 764.83, y: 316.21), controlPoint2: CGPoint(x: 772.82, y: 318.19))
        bezier2Path.addCurve(to: CGPoint(x: 779.74, y: 325.18), controlPoint1: CGPoint(x: 778.59, y: 323.67), controlPoint2: CGPoint(x: 779.12, y: 324.42))
        bezier2Path.addLine(to: CGPoint(x: 779.74, y: 300.18))
        bezier2Path.addLine(to: CGPoint(x: 779.74, y: 300.18))
        bezier2Path.close()
        fillColor2.setFill()
        bezier2Path.fill()
        
        context.restoreGState()

    }

    @objc dynamic public class func drawDiners(frame targetFrame: CGRect = CGRect(x: 0, y: 0, width: 780, height: 500), resizing: ResizingBehavior = .aspectFit) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()!
        
        //// Resize to Target Frame
        context.saveGState()
        let resizedFrame: CGRect = resizing.apply(rect: CGRect(x: 0, y: 0, width: 780, height: 500), target: targetFrame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy(x: resizedFrame.width / 780, y: resizedFrame.height / 500)


        //// Color Declarations
        let fillColor2 = UIColor(red: 1.000, green: 1.000, blue: 1.000, alpha: 1.000)
        let fillColor3 = UIColor(red: 0.000, green: 0.475, blue: 0.745, alpha: 1.000)

        //// Bezier Drawing
        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: 40, y: 0))
        bezierPath.addLine(to: CGPoint(x: 740, y: 0))
        bezierPath.addCurve(to: CGPoint(x: 780, y: 40), controlPoint1: CGPoint(x: 762.09, y: 0), controlPoint2: CGPoint(x: 780, y: 17.91))
        bezierPath.addLine(to: CGPoint(x: 780, y: 460))
        bezierPath.addCurve(to: CGPoint(x: 740, y: 500), controlPoint1: CGPoint(x: 780, y: 482.09), controlPoint2: CGPoint(x: 762.09, y: 500))
        bezierPath.addLine(to: CGPoint(x: 40, y: 500))
        bezierPath.addCurve(to: CGPoint(x: 0, y: 460), controlPoint1: CGPoint(x: 17.91, y: 500), controlPoint2: CGPoint(x: 0, y: 482.09))
        bezierPath.addLine(to: CGPoint(x: 0, y: 40))
        bezierPath.addCurve(to: CGPoint(x: 40, y: 0), controlPoint1: CGPoint(x: 0, y: 17.91), controlPoint2: CGPoint(x: 17.91, y: 0))
        bezierPath.close()
        fillColor3.setFill()
        bezierPath.fill()


        //// Bezier 2 Drawing
        let bezier2Path = UIBezierPath()
        bezier2Path.move(to: CGPoint(x: 599.93, y: 251.45))
        bezier2Path.addCurve(to: CGPoint(x: 426.03, y: 83.35), controlPoint1: CGPoint(x: 599.93, y: 152.03), controlPoint2: CGPoint(x: 516.95, y: 83.32))
        bezier2Path.addLine(to: CGPoint(x: 347.79, y: 83.35))
        bezier2Path.addCurve(to: CGPoint(x: 180.06, y: 251.45), controlPoint1: CGPoint(x: 255.78, y: 83.32), controlPoint2: CGPoint(x: 180.06, y: 152.05))
        bezier2Path.addCurve(to: CGPoint(x: 347.79, y: 416.65), controlPoint1: CGPoint(x: 180.06, y: 342.38), controlPoint2: CGPoint(x: 255.78, y: 417.09))
        bezier2Path.addLine(to: CGPoint(x: 426.03, y: 416.65))
        bezier2Path.addCurve(to: CGPoint(x: 599.93, y: 251.45), controlPoint1: CGPoint(x: 516.94, y: 417.09), controlPoint2: CGPoint(x: 599.93, y: 342.36))
        bezier2Path.close()
        fillColor2.setFill()
        bezier2Path.fill()


        //// Oval Drawing
        let ovalPath = UIBezierPath(ovalIn: CGRect(x: 195.75, y: 97.11, width: 305.1, height: 304.5))
        fillColor3.setFill()
        ovalPath.fill()


        //// Bezier 3 Drawing
        let bezier3Path = UIBezierPath()
        bezier3Path.move(to: CGPoint(x: 252.07, y: 249.6))
        bezier3Path.addCurve(to: CGPoint(x: 314.01, y: 159.35), controlPoint1: CGPoint(x: 252.15, y: 208.42), controlPoint2: CGPoint(x: 277.82, y: 173.3))
        bezier3Path.addLine(to: CGPoint(x: 314.01, y: 339.83))
        bezier3Path.addCurve(to: CGPoint(x: 252.07, y: 249.6), controlPoint1: CGPoint(x: 277.82, y: 325.88), controlPoint2: CGPoint(x: 252.15, y: 290.78))
        bezier3Path.close()
        bezier3Path.move(to: CGPoint(x: 383.07, y: 339.87))
        bezier3Path.addLine(to: CGPoint(x: 383.07, y: 159.34))
        bezier3Path.addCurve(to: CGPoint(x: 445.05, y: 249.6), controlPoint1: CGPoint(x: 419.28, y: 173.26), controlPoint2: CGPoint(x: 444.98, y: 208.4))
        bezier3Path.addCurve(to: CGPoint(x: 383.07, y: 339.87), controlPoint1: CGPoint(x: 444.98, y: 290.81), controlPoint2: CGPoint(x: 419.28, y: 325.92))
        bezier3Path.addLine(to: CGPoint(x: 383.07, y: 339.87))
        bezier3Path.close()
        fillColor2.setFill()
        bezier3Path.fill()
        
        context.restoreGState()

    }

    @objc dynamic public class func drawDiscover(frame targetFrame: CGRect = CGRect(x: 0, y: 0, width: 780, height: 500), resizing: ResizingBehavior = .aspectFit) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()!
        
        //// Resize to Target Frame
        context.saveGState()
        let resizedFrame: CGRect = resizing.apply(rect: CGRect(x: 0, y: 0, width: 780, height: 500), target: targetFrame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy(x: resizedFrame.width / 780, y: resizedFrame.height / 500)


        //// Color Declarations
        let fillColor2 = UIColor(red: 1.000, green: 1.000, blue: 1.000, alpha: 1.000)
        let fillColor4 = UIColor(red: 0.302, green: 0.302, blue: 0.302, alpha: 1.000)
        let fillColor5 = UIColor(red: 0.957, green: 0.447, blue: 0.086, alpha: 1.000)

        //// Group
        //// Bezier Drawing
        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: 54.99, y: 0))
        bezierPath.addCurve(to: CGPoint(x: 0, y: 55), controlPoint1: CGPoint(x: 24.63, y: 0), controlPoint2: CGPoint(x: 0, y: 24.63))
        bezierPath.addLine(to: CGPoint(x: 0, y: 446))
        bezierPath.addCurve(to: CGPoint(x: 54.99, y: 501), controlPoint1: CGPoint(x: 0, y: 476.38), controlPoint2: CGPoint(x: 24.62, y: 501))
        bezierPath.addLine(to: CGPoint(x: 725.01, y: 501))
        bezierPath.addCurve(to: CGPoint(x: 780, y: 446), controlPoint1: CGPoint(x: 755.37, y: 501), controlPoint2: CGPoint(x: 780, y: 476.37))
        bezierPath.addLine(to: CGPoint(x: 780, y: 55))
        bezierPath.addCurve(to: CGPoint(x: 725.01, y: 0), controlPoint1: CGPoint(x: 780, y: 24.62), controlPoint2: CGPoint(x: 755.38, y: 0))
        bezierPath.addLine(to: CGPoint(x: 54.99, y: 0))
        bezierPath.close()
        bezierPath.usesEvenOddFillRule = true
        fillColor4.setFill()
        bezierPath.fill()


        //// Bezier 2 Drawing
        let bezier2Path = UIBezierPath()
        bezier2Path.move(to: CGPoint(x: 327.15, y: 161.89))
        bezier2Path.addCurve(to: CGPoint(x: 352.42, y: 167.98), controlPoint1: CGPoint(x: 335.99, y: 161.89), controlPoint2: CGPoint(x: 343.4, y: 163.68))
        bezier2Path.addLine(to: CGPoint(x: 352.42, y: 190.73))
        bezier2Path.addCurve(to: CGPoint(x: 326.66, y: 179.58), controlPoint1: CGPoint(x: 343.88, y: 182.87), controlPoint2: CGPoint(x: 336.46, y: 179.58))
        bezier2Path.addCurve(to: CGPoint(x: 292.25, y: 213.63), controlPoint1: CGPoint(x: 307.4, y: 179.58), controlPoint2: CGPoint(x: 292.25, y: 194.6))
        bezier2Path.addCurve(to: CGPoint(x: 327.62, y: 247.83), controlPoint1: CGPoint(x: 292.25, y: 233.7), controlPoint2: CGPoint(x: 306.93, y: 247.83))
        bezier2Path.addCurve(to: CGPoint(x: 352.42, y: 236.97), controlPoint1: CGPoint(x: 336.93, y: 247.83), controlPoint2: CGPoint(x: 344.21, y: 244.71))
        bezier2Path.addLine(to: CGPoint(x: 352.42, y: 259.73))
        bezier2Path.addCurve(to: CGPoint(x: 326.66, y: 265.51), controlPoint1: CGPoint(x: 343.08, y: 263.87), controlPoint2: CGPoint(x: 335.51, y: 265.51))
        bezier2Path.addCurve(to: CGPoint(x: 271.08, y: 213.77), controlPoint1: CGPoint(x: 295.39, y: 265.51), controlPoint2: CGPoint(x: 271.08, y: 242.91))
        bezier2Path.addCurve(to: CGPoint(x: 327.15, y: 161.89), controlPoint1: CGPoint(x: 271.08, y: 184.94), controlPoint2: CGPoint(x: 296.03, y: 161.89))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 230.04, y: 162.52))
        bezier2Path.addCurve(to: CGPoint(x: 260.98, y: 173.51), controlPoint1: CGPoint(x: 241.58, y: 162.52), controlPoint2: CGPoint(x: 252.15, y: 166.24))
        bezier2Path.addLine(to: CGPoint(x: 250.23, y: 186.76))
        bezier2Path.addCurve(to: CGPoint(x: 233.67, y: 178.73), controlPoint1: CGPoint(x: 244.88, y: 181.12), controlPoint2: CGPoint(x: 239.82, y: 178.73))
        bezier2Path.addCurve(to: CGPoint(x: 218.37, y: 189.72), controlPoint1: CGPoint(x: 224.82, y: 178.73), controlPoint2: CGPoint(x: 218.37, y: 183.48))
        bezier2Path.addCurve(to: CGPoint(x: 234.31, y: 202.21), controlPoint1: CGPoint(x: 218.37, y: 195.08), controlPoint2: CGPoint(x: 221.99, y: 197.91))
        bezier2Path.addCurve(to: CGPoint(x: 264.6, y: 233.13), controlPoint1: CGPoint(x: 257.68, y: 210.25), controlPoint2: CGPoint(x: 264.6, y: 217.38))
        bezier2Path.addCurve(to: CGPoint(x: 228.28, y: 265.68), controlPoint1: CGPoint(x: 264.6, y: 252.32), controlPoint2: CGPoint(x: 249.63, y: 265.68))
        bezier2Path.addCurve(to: CGPoint(x: 191.83, y: 246.81), controlPoint1: CGPoint(x: 212.65, y: 265.68), controlPoint2: CGPoint(x: 201.29, y: 259.89))
        bezier2Path.addLine(to: CGPoint(x: 205.09, y: 234.78))
        bezier2Path.addCurve(to: CGPoint(x: 227.51, y: 248), controlPoint1: CGPoint(x: 209.82, y: 243.39), controlPoint2: CGPoint(x: 217.72, y: 248))
        bezier2Path.addCurve(to: CGPoint(x: 243.46, y: 234.02), controlPoint1: CGPoint(x: 236.68, y: 248), controlPoint2: CGPoint(x: 243.46, y: 242.05))
        bezier2Path.addCurve(to: CGPoint(x: 237.3, y: 223.76), controlPoint1: CGPoint(x: 243.46, y: 229.86), controlPoint2: CGPoint(x: 241.41, y: 226.29))
        bezier2Path.addCurve(to: CGPoint(x: 223.1, y: 218.11), controlPoint1: CGPoint(x: 235.24, y: 222.57), controlPoint2: CGPoint(x: 231.15, y: 220.78))
        bezier2Path.addCurve(to: CGPoint(x: 197.19, y: 190.93), controlPoint1: CGPoint(x: 203.81, y: 211.58), controlPoint2: CGPoint(x: 197.19, y: 204.59))
        bezier2Path.addCurve(to: CGPoint(x: 230.04, y: 162.52), controlPoint1: CGPoint(x: 197.19, y: 174.7), controlPoint2: CGPoint(x: 211.41, y: 162.52))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 464.76, y: 164.25))
        bezier2Path.addLine(to: CGPoint(x: 487.2, y: 164.25))
        bezier2Path.addLine(to: CGPoint(x: 515.28, y: 230.84))
        bezier2Path.addLine(to: CGPoint(x: 543.73, y: 164.25))
        bezier2Path.addLine(to: CGPoint(x: 566, y: 164.25))
        bezier2Path.addLine(to: CGPoint(x: 520.5, y: 265.93))
        bezier2Path.addLine(to: CGPoint(x: 509.45, y: 265.93))
        bezier2Path.addLine(to: CGPoint(x: 464.76, y: 164.25))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 67.41, y: 164.4))
        bezier2Path.addLine(to: CGPoint(x: 97.56, y: 164.4))
        bezier2Path.addCurve(to: CGPoint(x: 154.1, y: 214.04), controlPoint1: CGPoint(x: 130.88, y: 164.4), controlPoint2: CGPoint(x: 154.1, y: 184.78))
        bezier2Path.addCurve(to: CGPoint(x: 134.98, y: 252.1), controlPoint1: CGPoint(x: 154.1, y: 228.63), controlPoint2: CGPoint(x: 146.99, y: 242.74))
        bezier2Path.addCurve(to: CGPoint(x: 97.41, y: 263.54), controlPoint1: CGPoint(x: 124.87, y: 260), controlPoint2: CGPoint(x: 113.35, y: 263.54))
        bezier2Path.addLine(to: CGPoint(x: 67.41, y: 263.54))
        bezier2Path.addLine(to: CGPoint(x: 67.41, y: 164.4))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 163.55, y: 164.4))
        bezier2Path.addLine(to: CGPoint(x: 184.09, y: 164.4))
        bezier2Path.addLine(to: CGPoint(x: 184.09, y: 263.54))
        bezier2Path.addLine(to: CGPoint(x: 163.55, y: 263.54))
        bezier2Path.addLine(to: CGPoint(x: 163.55, y: 164.4))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 575.28, y: 164.4))
        bezier2Path.addLine(to: CGPoint(x: 633.53, y: 164.4))
        bezier2Path.addLine(to: CGPoint(x: 633.53, y: 181.2))
        bezier2Path.addLine(to: CGPoint(x: 595.81, y: 181.2))
        bezier2Path.addLine(to: CGPoint(x: 595.81, y: 203.21))
        bezier2Path.addLine(to: CGPoint(x: 632.15, y: 203.21))
        bezier2Path.addLine(to: CGPoint(x: 632.15, y: 220))
        bezier2Path.addLine(to: CGPoint(x: 595.81, y: 220))
        bezier2Path.addLine(to: CGPoint(x: 595.81, y: 246.76))
        bezier2Path.addLine(to: CGPoint(x: 633.54, y: 246.76))
        bezier2Path.addLine(to: CGPoint(x: 633.54, y: 263.54))
        bezier2Path.addLine(to: CGPoint(x: 575.28, y: 263.54))
        bezier2Path.addLine(to: CGPoint(x: 575.28, y: 164.4))
        bezier2Path.addLine(to: CGPoint(x: 575.28, y: 164.4))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 647.14, y: 164.4))
        bezier2Path.addLine(to: CGPoint(x: 677.6, y: 164.4))
        bezier2Path.addCurve(to: CGPoint(x: 714.86, y: 193.67), controlPoint1: CGPoint(x: 701.29, y: 164.4), controlPoint2: CGPoint(x: 714.86, y: 175.11))
        bezier2Path.addCurve(to: CGPoint(x: 690.87, y: 221.78), controlPoint1: CGPoint(x: 714.86, y: 208.85), controlPoint2: CGPoint(x: 706.35, y: 218.81))
        bezier2Path.addLine(to: CGPoint(x: 724.02, y: 263.54))
        bezier2Path.addLine(to: CGPoint(x: 698.76, y: 263.54))
        bezier2Path.addLine(to: CGPoint(x: 670.33, y: 223.72))
        bezier2Path.addLine(to: CGPoint(x: 667.66, y: 223.72))
        bezier2Path.addLine(to: CGPoint(x: 667.66, y: 263.54))
        bezier2Path.addLine(to: CGPoint(x: 647.14, y: 263.54))
        bezier2Path.addLine(to: CGPoint(x: 647.14, y: 164.4))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 667.66, y: 180.02))
        bezier2Path.addLine(to: CGPoint(x: 667.66, y: 210.04))
        bezier2Path.addLine(to: CGPoint(x: 673.66, y: 210.04))
        bezier2Path.addCurve(to: CGPoint(x: 693.73, y: 194.71), controlPoint1: CGPoint(x: 686.77, y: 210.04), controlPoint2: CGPoint(x: 693.73, y: 204.68))
        bezier2Path.addCurve(to: CGPoint(x: 673.98, y: 180.02), controlPoint1: CGPoint(x: 693.73, y: 185.07), controlPoint2: CGPoint(x: 686.77, y: 180.02))
        bezier2Path.addLine(to: CGPoint(x: 667.66, y: 180.02))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 87.94, y: 181.2))
        bezier2Path.addLine(to: CGPoint(x: 87.94, y: 246.76))
        bezier2Path.addLine(to: CGPoint(x: 93.45, y: 246.76))
        bezier2Path.addCurve(to: CGPoint(x: 121.56, y: 238.88), controlPoint1: CGPoint(x: 106.72, y: 246.76), controlPoint2: CGPoint(x: 115.11, y: 244.36))
        bezier2Path.addCurve(to: CGPoint(x: 132.94, y: 213.9), controlPoint1: CGPoint(x: 128.66, y: 232.92), controlPoint2: CGPoint(x: 132.94, y: 223.41))
        bezier2Path.addCurve(to: CGPoint(x: 121.56, y: 189.22), controlPoint1: CGPoint(x: 132.94, y: 204.4), controlPoint2: CGPoint(x: 128.66, y: 195.17))
        bezier2Path.addCurve(to: CGPoint(x: 93.45, y: 181.2), controlPoint1: CGPoint(x: 114.78, y: 183.44), controlPoint2: CGPoint(x: 106.72, y: 181.2))
        bezier2Path.addLine(to: CGPoint(x: 87.94, y: 181.2))
        bezier2Path.close()
        bezier2Path.usesEvenOddFillRule = true
        fillColor2.setFill()
        bezier2Path.fill()


        //// Bezier 3 Drawing
        let bezier3Path = UIBezierPath()
        bezier3Path.move(to: CGPoint(x: 415.13, y: 161.21))
        bezier3Path.addCurve(to: CGPoint(x: 471.15, y: 213.92), controlPoint1: CGPoint(x: 446.07, y: 161.21), controlPoint2: CGPoint(x: 471.15, y: 184.79))
        bezier3Path.addLine(to: CGPoint(x: 471.15, y: 213.95))
        bezier3Path.addCurve(to: CGPoint(x: 415.13, y: 266.69), controlPoint1: CGPoint(x: 471.15, y: 243.08), controlPoint2: CGPoint(x: 446.07, y: 266.69))
        bezier3Path.addCurve(to: CGPoint(x: 359.11, y: 213.95), controlPoint1: CGPoint(x: 384.19, y: 266.69), controlPoint2: CGPoint(x: 359.11, y: 243.08))
        bezier3Path.addLine(to: CGPoint(x: 359.11, y: 213.92))
        bezier3Path.addCurve(to: CGPoint(x: 415.13, y: 161.21), controlPoint1: CGPoint(x: 359.11, y: 184.79), controlPoint2: CGPoint(x: 384.19, y: 161.21))
        bezier3Path.close()
        bezier3Path.move(to: CGPoint(x: 779.98, y: 288.36))
        bezier3Path.addCurve(to: CGPoint(x: 221.23, y: 500.98), controlPoint1: CGPoint(x: 753.93, y: 306.69), controlPoint2: CGPoint(x: 558.9, y: 437.7))
        bezier3Path.addLine(to: CGPoint(x: 724.99, y: 500.98))
        bezier3Path.addCurve(to: CGPoint(x: 779.98, y: 445.98), controlPoint1: CGPoint(x: 755.36, y: 500.98), controlPoint2: CGPoint(x: 779.98, y: 476.35))
        bezier3Path.addLine(to: CGPoint(x: 779.98, y: 288.36))
        bezier3Path.addLine(to: CGPoint(x: 779.98, y: 288.36))
        bezier3Path.close()
        bezier3Path.usesEvenOddFillRule = true
        fillColor5.setFill()
        bezier3Path.fill()
        
        context.restoreGState()

    }

    @objc dynamic public class func drawUnknown(frame targetFrame: CGRect = CGRect(x: 0, y: 0, width: 780, height: 500), resizing: ResizingBehavior = .aspectFit) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()!
        
        //// Resize to Target Frame
        context.saveGState()
        let resizedFrame: CGRect = resizing.apply(rect: CGRect(x: 0, y: 0, width: 780, height: 500), target: targetFrame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy(x: resizedFrame.width / 780, y: resizedFrame.height / 500)


        //// Color Declarations
        let fillColor6 = UIColor(red: 0.717, green: 0.717, blue: 0.717, alpha: 1.000)
        let fillColor7 = UIColor(red: 0.000, green: 0.000, blue: 0.000, alpha: 1.000)
        let color = UIColor(red: 1.000, green: 1.000, blue: 1.000, alpha: 1.000)
        let color2 = UIColor(red: 0.823, green: 0.818, blue: 0.818, alpha: 1.000)

        //// box Drawing
        let boxPath = UIBezierPath()
        boxPath.move(to: CGPoint(x: 40, y: 0))
        boxPath.addLine(to: CGPoint(x: 740, y: 0))
        boxPath.addCurve(to: CGPoint(x: 780, y: 40), controlPoint1: CGPoint(x: 762.09, y: 0), controlPoint2: CGPoint(x: 780, y: 17.91))
        boxPath.addLine(to: CGPoint(x: 780, y: 460))
        boxPath.addCurve(to: CGPoint(x: 740, y: 500), controlPoint1: CGPoint(x: 780, y: 482.09), controlPoint2: CGPoint(x: 762.09, y: 500))
        boxPath.addLine(to: CGPoint(x: 40, y: 500))
        boxPath.addCurve(to: CGPoint(x: 0, y: 460), controlPoint1: CGPoint(x: 17.91, y: 500), controlPoint2: CGPoint(x: 0, y: 482.09))
        boxPath.addLine(to: CGPoint(x: 0, y: 40))
        boxPath.addCurve(to: CGPoint(x: 40, y: 0), controlPoint1: CGPoint(x: 0, y: 17.91), controlPoint2: CGPoint(x: 17.91, y: 0))
        boxPath.close()
        fillColor6.setFill()
        boxPath.fill()


        //// Rectangle 3 Drawing
        let rectangle3Path = UIBezierPath(rect: CGRect(x: 0, y: 81.91, width: 780, height: 99.68))
        fillColor7.setFill()
        rectangle3Path.fill()


        //// Rectangle Drawing
        let rectanglePath = UIBezierPath(rect: CGRect(x: 28, y: 221, width: 726, height: 87))
        color.setFill()
        rectanglePath.fill()


        //// Rectangle 2 Drawing
        let rectangle2Path = UIBezierPath(rect: CGRect(x: 28, y: 331, width: 102, height: 81))
        color2.setFill()
        rectangle2Path.fill()
        
        context.restoreGState()

    }

    @objc dynamic public class func drawJcb(frame targetFrame: CGRect = CGRect(x: 0, y: 0, width: 780, height: 500), resizing: ResizingBehavior = .aspectFit) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()!
        
        //// Resize to Target Frame
        context.saveGState()
        let resizedFrame: CGRect = resizing.apply(rect: CGRect(x: 0, y: 0, width: 780, height: 500), target: targetFrame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy(x: resizedFrame.width / 780, y: resizedFrame.height / 500)


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

        //// Bezier Drawing
        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: 40, y: 0))
        bezierPath.addLine(to: CGPoint(x: 740, y: 0))
        bezierPath.addCurve(to: CGPoint(x: 780, y: 40), controlPoint1: CGPoint(x: 762.09, y: 0), controlPoint2: CGPoint(x: 780, y: 17.91))
        bezierPath.addLine(to: CGPoint(x: 780, y: 460))
        bezierPath.addCurve(to: CGPoint(x: 740, y: 500), controlPoint1: CGPoint(x: 780, y: 482.09), controlPoint2: CGPoint(x: 762.09, y: 500))
        bezierPath.addLine(to: CGPoint(x: 40, y: 500))
        bezierPath.addCurve(to: CGPoint(x: 0, y: 460), controlPoint1: CGPoint(x: 17.91, y: 500), controlPoint2: CGPoint(x: 0, y: 482.09))
        bezierPath.addLine(to: CGPoint(x: 0, y: 40))
        bezierPath.addCurve(to: CGPoint(x: 40, y: 0), controlPoint1: CGPoint(x: 0, y: 17.91), controlPoint2: CGPoint(x: 17.91, y: 0))
        bezierPath.close()
        fillColor9.setFill()
        bezierPath.fill()


        //// Bezier 2 Drawing
        let bezier2Path = UIBezierPath()
        bezier2Path.move(to: CGPoint(x: 632.24, y: 361.27))
        bezier2Path.addCurve(to: CGPoint(x: 556.88, y: 436.63), controlPoint1: CGPoint(x: 632.24, y: 402.88), controlPoint2: CGPoint(x: 598.51, y: 436.63))
        bezier2Path.addLine(to: CGPoint(x: 147.75, y: 436.63))
        bezier2Path.addLine(to: CGPoint(x: 147.75, y: 138.75))
        bezier2Path.addCurve(to: CGPoint(x: 223.12, y: 63.38), controlPoint1: CGPoint(x: 147.75, y: 97.12), controlPoint2: CGPoint(x: 181.48, y: 63.38))
        bezier2Path.addLine(to: CGPoint(x: 632.24, y: 63.38))
        bezier2Path.addLine(to: CGPoint(x: 632.24, y: 361.27))
        bezier2Path.addLine(to: CGPoint(x: 632.24, y: 361.27))
        bezier2Path.close()
        fillColor2.setFill()
        bezier2Path.fill()


        //// Bezier 3 Drawing
        let bezier3Path = UIBezierPath()
        bezier3Path.move(to: CGPoint(x: 498.86, y: 256.54))
        bezier3Path.addCurve(to: CGPoint(x: 533.94, y: 256.94), controlPoint1: CGPoint(x: 510.54, y: 256.79), controlPoint2: CGPoint(x: 522.3, y: 256.02))
        bezier3Path.addCurve(to: CGPoint(x: 538.09, y: 282.83), controlPoint1: CGPoint(x: 545.72, y: 259.14), controlPoint2: CGPoint(x: 548.57, y: 276.98))
        bezier3Path.addCurve(to: CGPoint(x: 514.71, y: 284.94), controlPoint1: CGPoint(x: 530.95, y: 286.68), controlPoint2: CGPoint(x: 522.46, y: 284.26))
        bezier3Path.addLine(to: CGPoint(x: 498.86, y: 284.94))
        bezier3Path.addLine(to: CGPoint(x: 498.86, y: 256.54))
        bezier3Path.close()
        bezier3Path.move(to: CGPoint(x: 540.69, y: 224.39))
        bezier3Path.addCurve(to: CGPoint(x: 525.63, y: 240.52), controlPoint1: CGPoint(x: 543.29, y: 233.56), controlPoint2: CGPoint(x: 534.45, y: 241.79))
        bezier3Path.addLine(to: CGPoint(x: 498.86, y: 240.52))
        bezier3Path.addCurve(to: CGPoint(x: 499.13, y: 214.32), controlPoint1: CGPoint(x: 499.04, y: 231.88), controlPoint2: CGPoint(x: 498.49, y: 222.5))
        bezier3Path.addCurve(to: CGPoint(x: 531.34, y: 214.8), controlPoint1: CGPoint(x: 509.86, y: 214.62), controlPoint2: CGPoint(x: 520.68, y: 213.7))
        bezier3Path.addCurve(to: CGPoint(x: 540.69, y: 224.39), controlPoint1: CGPoint(x: 535.92, y: 215.95), controlPoint2: CGPoint(x: 539.75, y: 219.71))
        bezier3Path.close()
        bezier3Path.move(to: CGPoint(x: 605.12, y: 88.49))
        bezier3Path.addCurve(to: CGPoint(x: 605.34, y: 142.28), controlPoint1: CGPoint(x: 605.62, y: 106), controlPoint2: CGPoint(x: 605.19, y: 124.42))
        bezier3Path.addCurve(to: CGPoint(x: 605.28, y: 360.07), controlPoint1: CGPoint(x: 605.3, y: 214.87), controlPoint2: CGPoint(x: 605.41, y: 287.47))
        bezier3Path.addCurve(to: CGPoint(x: 553.68, y: 411.45), controlPoint1: CGPoint(x: 604.81, y: 387.27), controlPoint2: CGPoint(x: 580.7, y: 410.91))
        bezier3Path.addCurve(to: CGPoint(x: 472.54, y: 411.5), controlPoint1: CGPoint(x: 526.63, y: 411.57), controlPoint2: CGPoint(x: 499.58, y: 411.47))
        bezier3Path.addLine(to: CGPoint(x: 472.54, y: 301.75))
        bezier3Path.addCurve(to: CGPoint(x: 560.95, y: 301.52), controlPoint1: CGPoint(x: 502.01, y: 301.6), controlPoint2: CGPoint(x: 531.5, y: 302.06))
        bezier3Path.addCurve(to: CGPoint(x: 590.22, y: 276.61), controlPoint1: CGPoint(x: 574.62, y: 300.66), controlPoint2: CGPoint(x: 589.59, y: 291.64))
        bezier3Path.addCurve(to: CGPoint(x: 564.07, y: 249.4), controlPoint1: CGPoint(x: 591.83, y: 261.5), controlPoint2: CGPoint(x: 577.59, y: 251.05))
        bezier3Path.addCurve(to: CGPoint(x: 564.07, y: 247.29), controlPoint1: CGPoint(x: 558.87, y: 249.27), controlPoint2: CGPoint(x: 559.03, y: 247.89))
        bezier3Path.addCurve(to: CGPoint(x: 583.3, y: 217.79), controlPoint1: CGPoint(x: 576.96, y: 244.5), controlPoint2: CGPoint(x: 587.09, y: 231.15))
        bezier3Path.addCurve(to: CGPoint(x: 551.6, y: 198.32), controlPoint1: CGPoint(x: 580.06, y: 203.73), controlPoint2: CGPoint(x: 564.53, y: 198.29))
        bezier3Path.addCurve(to: CGPoint(x: 472.54, y: 198.24), controlPoint1: CGPoint(x: 525.25, y: 198.14), controlPoint2: CGPoint(x: 498.89, y: 198.29))
        bezier3Path.addCurve(to: CGPoint(x: 472.82, y: 136.77), controlPoint1: CGPoint(x: 472.71, y: 177.75), controlPoint2: CGPoint(x: 472.19, y: 157.24))
        bezier3Path.addCurve(to: CGPoint(x: 526.27, y: 88.5), controlPoint1: CGPoint(x: 474.91, y: 110.05), controlPoint2: CGPoint(x: 499.63, y: 88.02))
        bezier3Path.addLine(to: CGPoint(x: 605.12, y: 88.5))
        bezier3Path.addLine(to: CGPoint(x: 605.12, y: 88.49))
        bezier3Path.close()
        context.saveGState()
        bezier3Path.addClip()
        context.drawLinearGradient(c,
            start: CGPoint(x: 472.02, y: 250.59),
            end: CGPoint(x: 604.89, y: 250.59),
            options: [.drawsBeforeStartLocation, .drawsAfterEndLocation])
        context.restoreGState()


        //// Bezier 4 Drawing
        let bezier4Path = UIBezierPath()
        bezier4Path.move(to: CGPoint(x: 174.74, y: 139.54))
        bezier4Path.addCurve(to: CGPoint(x: 226.62, y: 88.53), controlPoint1: CGPoint(x: 175.41, y: 112.38), controlPoint2: CGPoint(x: 199.63, y: 88.93))
        bezier4Path.addCurve(to: CGPoint(x: 307.45, y: 88.5), controlPoint1: CGPoint(x: 253.56, y: 88.45), controlPoint2: CGPoint(x: 280.51, y: 88.52))
        bezier4Path.addCurve(to: CGPoint(x: 307.34, y: 361.16), controlPoint1: CGPoint(x: 307.38, y: 179.38), controlPoint2: CGPoint(x: 307.6, y: 270.28))
        bezier4Path.addCurve(to: CGPoint(x: 255.66, y: 411.46), controlPoint1: CGPoint(x: 306.3, y: 387.99), controlPoint2: CGPoint(x: 282.35, y: 410.99))
        bezier4Path.addCurve(to: CGPoint(x: 174.67, y: 411.51), controlPoint1: CGPoint(x: 228.66, y: 411.56), controlPoint2: CGPoint(x: 201.67, y: 411.48))
        bezier4Path.addLine(to: CGPoint(x: 174.67, y: 298.06))
        bezier4Path.addCurve(to: CGPoint(x: 255.14, y: 302.78), controlPoint1: CGPoint(x: 200.89, y: 304.25), controlPoint2: CGPoint(x: 228.39, y: 306.89))
        bezier4Path.addCurve(to: CGPoint(x: 294.04, y: 275.76), controlPoint1: CGPoint(x: 271.13, y: 300.2), controlPoint2: CGPoint(x: 288.63, y: 292.35))
        bezier4Path.addCurve(to: CGPoint(x: 296.38, y: 232.07), controlPoint1: CGPoint(x: 298.03, y: 261.57), controlPoint2: CGPoint(x: 295.79, y: 246.64))
        bezier4Path.addLine(to: CGPoint(x: 296.38, y: 198.25))
        bezier4Path.addLine(to: CGPoint(x: 250.08, y: 198.25))
        bezier4Path.addCurve(to: CGPoint(x: 249.75, y: 265.37), controlPoint1: CGPoint(x: 249.87, y: 220.62), controlPoint2: CGPoint(x: 250.51, y: 243.03))
        bezier4Path.addCurve(to: CGPoint(x: 221.95, y: 287.37), controlPoint1: CGPoint(x: 248.5, y: 279.11), controlPoint2: CGPoint(x: 234.9, y: 287.83))
        bezier4Path.addCurve(to: CGPoint(x: 174.05, y: 275.73), controlPoint1: CGPoint(x: 205.88, y: 287.54), controlPoint2: CGPoint(x: 174.05, y: 275.73))
        bezier4Path.addCurve(to: CGPoint(x: 174.74, y: 139.55), controlPoint1: CGPoint(x: 173.97, y: 233.81), controlPoint2: CGPoint(x: 174.51, y: 181.32))
        bezier4Path.addLine(to: CGPoint(x: 174.74, y: 139.54))
        bezier4Path.close()
        context.saveGState()
        bezier4Path.addClip()
        context.drawLinearGradient(b,
            start: CGPoint(x: 174.99, y: 250.59),
            end: CGPoint(x: 307.75, y: 250.59),
            options: [.drawsBeforeStartLocation, .drawsAfterEndLocation])
        context.restoreGState()


        //// Bezier 5 Drawing
        let bezier5Path = UIBezierPath()
        bezier5Path.move(to: CGPoint(x: 324.72, y: 211.89))
        bezier5Path.addCurve(to: CGPoint(x: 323.61, y: 200.24), controlPoint1: CGPoint(x: 322.29, y: 212.41), controlPoint2: CGPoint(x: 324.23, y: 203.59))
        bezier5Path.addCurve(to: CGPoint(x: 323.89, y: 136.79), controlPoint1: CGPoint(x: 323.77, y: 179.09), controlPoint2: CGPoint(x: 323.26, y: 157.92))
        bezier5Path.addCurve(to: CGPoint(x: 377.63, y: 88.5), controlPoint1: CGPoint(x: 325.97, y: 109.96), controlPoint2: CGPoint(x: 350.88, y: 87.87))
        bezier5Path.addLine(to: CGPoint(x: 456.39, y: 88.5))
        bezier5Path.addCurve(to: CGPoint(x: 456.28, y: 361.16), controlPoint1: CGPoint(x: 456.32, y: 179.38), controlPoint2: CGPoint(x: 456.54, y: 270.28))
        bezier5Path.addCurve(to: CGPoint(x: 404.6, y: 411.47), controlPoint1: CGPoint(x: 455.25, y: 387.99), controlPoint2: CGPoint(x: 431.29, y: 410.99))
        bezier5Path.addCurve(to: CGPoint(x: 323.61, y: 411.51), controlPoint1: CGPoint(x: 377.61, y: 411.57), controlPoint2: CGPoint(x: 350.61, y: 411.48))
        bezier5Path.addLine(to: CGPoint(x: 323.61, y: 287.21))
        bezier5Path.addCurve(to: CGPoint(x: 390.08, y: 304.73), controlPoint1: CGPoint(x: 342.05, y: 302.34), controlPoint2: CGPoint(x: 367.11, y: 304.69))
        bezier5Path.addCurve(to: CGPoint(x: 441.43, y: 298.06), controlPoint1: CGPoint(x: 407.39, y: 304.73), controlPoint2: CGPoint(x: 424.61, y: 302.06))
        bezier5Path.addLine(to: CGPoint(x: 441.43, y: 275.29))
        bezier5Path.addCurve(to: CGPoint(x: 379.19, y: 285.31), controlPoint1: CGPoint(x: 422.48, y: 284.74), controlPoint2: CGPoint(x: 400.2, y: 290.74))
        bezier5Path.addCurve(to: CGPoint(x: 354.13, y: 252.37), controlPoint1: CGPoint(x: 364.53, y: 281.66), controlPoint2: CGPoint(x: 353.89, y: 267.5))
        bezier5Path.addCurve(to: CGPoint(x: 377.11, y: 215.36), controlPoint1: CGPoint(x: 352.43, y: 236.64), controlPoint2: CGPoint(x: 361.65, y: 220.04))
        bezier5Path.addCurve(to: CGPoint(x: 435.21, y: 221.76), controlPoint1: CGPoint(x: 396.3, y: 209.35), controlPoint2: CGPoint(x: 417.22, y: 213.95))
        bezier5Path.addCurve(to: CGPoint(x: 441.43, y: 219.84), controlPoint1: CGPoint(x: 439.06, y: 223.78), controlPoint2: CGPoint(x: 442.97, y: 226.28))
        bezier5Path.addLine(to: CGPoint(x: 441.43, y: 201.94))
        bezier5Path.addCurve(to: CGPoint(x: 349.1, y: 199.93), controlPoint1: CGPoint(x: 411.35, y: 194.78), controlPoint2: CGPoint(x: 379.33, y: 192.15))
        bezier5Path.addCurve(to: CGPoint(x: 324.72, y: 211.89), controlPoint1: CGPoint(x: 340.35, y: 202.4), controlPoint2: CGPoint(x: 331.83, y: 206.15))
        bezier5Path.addLine(to: CGPoint(x: 324.72, y: 211.89))
        bezier5Path.close()
        context.saveGState()
        bezier5Path.addClip()
        context.drawLinearGradient(a,
            start: CGPoint(x: 323.71, y: 254.14),
            end: CGPoint(x: 456.54, y: 254.14),
            options: [.drawsBeforeStartLocation, .drawsAfterEndLocation])
        context.restoreGState()
        
        context.restoreGState()

    }

    @objc dynamic public class func drawVisa(frame targetFrame: CGRect = CGRect(x: 0, y: 0, width: 780, height: 500), resizing: ResizingBehavior = .aspectFit) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()!
        
        //// Resize to Target Frame
        context.saveGState()
        let resizedFrame: CGRect = resizing.apply(rect: CGRect(x: 0, y: 0, width: 780, height: 500), target: targetFrame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy(x: resizedFrame.width / 780, y: resizedFrame.height / 500)


        //// Color Declarations
        let fillColor2 = UIColor(red: 1.000, green: 1.000, blue: 1.000, alpha: 1.000)
        let fillColor15 = UIColor(red: 0.055, green: 0.271, blue: 0.584, alpha: 1.000)
        let fillColor16 = UIColor(red: 0.949, green: 0.682, blue: 0.078, alpha: 1.000)

        //// Bezier Drawing
        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: 40, y: 0))
        bezierPath.addLine(to: CGPoint(x: 740, y: 0))
        bezierPath.addCurve(to: CGPoint(x: 780, y: 40), controlPoint1: CGPoint(x: 762.09, y: 0), controlPoint2: CGPoint(x: 780, y: 17.91))
        bezierPath.addLine(to: CGPoint(x: 780, y: 460))
        bezierPath.addCurve(to: CGPoint(x: 740, y: 500), controlPoint1: CGPoint(x: 780, y: 482.09), controlPoint2: CGPoint(x: 762.09, y: 500))
        bezierPath.addLine(to: CGPoint(x: 40, y: 500))
        bezierPath.addCurve(to: CGPoint(x: 0, y: 460), controlPoint1: CGPoint(x: 17.91, y: 500), controlPoint2: CGPoint(x: 0, y: 482.09))
        bezierPath.addLine(to: CGPoint(x: 0, y: 40))
        bezierPath.addCurve(to: CGPoint(x: 40, y: 0), controlPoint1: CGPoint(x: 0, y: 17.91), controlPoint2: CGPoint(x: 17.91, y: 0))
        bezierPath.close()
        fillColor15.setFill()
        bezierPath.fill()


        //// Bezier 2 Drawing
        let bezier2Path = UIBezierPath()
        bezier2Path.move(to: CGPoint(x: 293.2, y: 348.73))
        bezier2Path.addLine(to: CGPoint(x: 326.56, y: 152.97))
        bezier2Path.addLine(to: CGPoint(x: 379.92, y: 152.97))
        bezier2Path.addLine(to: CGPoint(x: 346.54, y: 348.73))
        bezier2Path.addLine(to: CGPoint(x: 293.2, y: 348.73))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 539.31, y: 157.19))
        bezier2Path.addCurve(to: CGPoint(x: 491.49, y: 148.97), controlPoint1: CGPoint(x: 528.74, y: 153.22), controlPoint2: CGPoint(x: 512.17, y: 148.97))
        bezier2Path.addCurve(to: CGPoint(x: 401.31, y: 213.57), controlPoint1: CGPoint(x: 438.76, y: 148.97), controlPoint2: CGPoint(x: 401.62, y: 175.52))
        bezier2Path.addCurve(to: CGPoint(x: 448.06, y: 266.76), controlPoint1: CGPoint(x: 401.01, y: 241.7), controlPoint2: CGPoint(x: 427.82, y: 257.39))
        bezier2Path.addCurve(to: CGPoint(x: 475.71, y: 291.04), controlPoint1: CGPoint(x: 468.83, y: 276.35), controlPoint2: CGPoint(x: 475.81, y: 282.47))
        bezier2Path.addCurve(to: CGPoint(x: 443.79, y: 310.16), controlPoint1: CGPoint(x: 475.58, y: 304.16), controlPoint2: CGPoint(x: 459.13, y: 310.16))
        bezier2Path.addCurve(to: CGPoint(x: 393.56, y: 299.88), controlPoint1: CGPoint(x: 422.43, y: 310.16), controlPoint2: CGPoint(x: 411.09, y: 307.19))
        bezier2Path.addLine(to: CGPoint(x: 386.69, y: 296.77))
        bezier2Path.addLine(to: CGPoint(x: 379.2, y: 340.59))
        bezier2Path.addCurve(to: CGPoint(x: 438.64, y: 351.04), controlPoint1: CGPoint(x: 391.66, y: 346.06), controlPoint2: CGPoint(x: 414.71, y: 350.79))
        bezier2Path.addCurve(to: CGPoint(x: 531.55, y: 284.15), controlPoint1: CGPoint(x: 494.73, y: 351.04), controlPoint2: CGPoint(x: 531.14, y: 324.79))
        bezier2Path.addCurve(to: CGPoint(x: 486.75, y: 230.97), controlPoint1: CGPoint(x: 531.75, y: 261.88), controlPoint2: CGPoint(x: 517.54, y: 244.94))
        bezier2Path.addCurve(to: CGPoint(x: 456.8, y: 206.7), controlPoint1: CGPoint(x: 468.1, y: 221.91), controlPoint2: CGPoint(x: 456.68, y: 215.87))
        bezier2Path.addCurve(to: CGPoint(x: 487.36, y: 189.86), controlPoint1: CGPoint(x: 456.8, y: 198.56), controlPoint2: CGPoint(x: 466.47, y: 189.86))
        bezier2Path.addCurve(to: CGPoint(x: 527.3, y: 197.36), controlPoint1: CGPoint(x: 504.81, y: 189.59), controlPoint2: CGPoint(x: 517.45, y: 193.39))
        bezier2Path.addLine(to: CGPoint(x: 532.08, y: 199.62))
        bezier2Path.addLine(to: CGPoint(x: 539.31, y: 157.19))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 676.62, y: 152.97))
        bezier2Path.addLine(to: CGPoint(x: 635.39, y: 152.97))
        bezier2Path.addCurve(to: CGPoint(x: 607.45, y: 169.2), controlPoint1: CGPoint(x: 622.61, y: 152.97), controlPoint2: CGPoint(x: 613.06, y: 156.45))
        bezier2Path.addLine(to: CGPoint(x: 528.2, y: 348.6))
        bezier2Path.addLine(to: CGPoint(x: 584.23, y: 348.6))
        bezier2Path.addCurve(to: CGPoint(x: 595.47, y: 319.18), controlPoint1: CGPoint(x: 584.23, y: 348.6), controlPoint2: CGPoint(x: 593.39, y: 324.48))
        bezier2Path.addCurve(to: CGPoint(x: 663.8, y: 319.27), controlPoint1: CGPoint(x: 601.59, y: 319.18), controlPoint2: CGPoint(x: 656.02, y: 319.27))
        bezier2Path.addCurve(to: CGPoint(x: 670.29, y: 348.6), controlPoint1: CGPoint(x: 665.4, y: 326.12), controlPoint2: CGPoint(x: 670.29, y: 348.6))
        bezier2Path.addLine(to: CGPoint(x: 719.81, y: 348.6))
        bezier2Path.addLine(to: CGPoint(x: 676.62, y: 152.96))
        bezier2Path.addLine(to: CGPoint(x: 676.62, y: 152.97))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 611.2, y: 279.38))
        bezier2Path.addCurve(to: CGPoint(x: 632.46, y: 224.65), controlPoint1: CGPoint(x: 615.61, y: 268.1), controlPoint2: CGPoint(x: 632.46, y: 224.65))
        bezier2Path.addCurve(to: CGPoint(x: 639.54, y: 205.97), controlPoint1: CGPoint(x: 632.15, y: 225.18), controlPoint2: CGPoint(x: 636.84, y: 213.32))
        bezier2Path.addLine(to: CGPoint(x: 643.14, y: 222.85))
        bezier2Path.addCurve(to: CGPoint(x: 655.49, y: 279.38), controlPoint1: CGPoint(x: 643.14, y: 222.85), controlPoint2: CGPoint(x: 653.36, y: 269.58))
        bezier2Path.addLine(to: CGPoint(x: 611.2, y: 279.38))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 247.9, y: 152.97))
        bezier2Path.addLine(to: CGPoint(x: 195.66, y: 286.47))
        bezier2Path.addLine(to: CGPoint(x: 190.09, y: 259.34))
        bezier2Path.addCurve(to: CGPoint(x: 116.2, y: 177.22), controlPoint1: CGPoint(x: 180.37, y: 228.06), controlPoint2: CGPoint(x: 150.07, y: 194.18))
        bezier2Path.addLine(to: CGPoint(x: 163.96, y: 348.42))
        bezier2Path.addLine(to: CGPoint(x: 220.42, y: 348.35))
        bezier2Path.addLine(to: CGPoint(x: 304.42, y: 152.96))
        bezier2Path.addLine(to: CGPoint(x: 247.9, y: 152.96))
        fillColor2.setFill()
        bezier2Path.fill()


        //// Bezier 3 Drawing
        let bezier3Path = UIBezierPath()
        bezier3Path.move(to: CGPoint(x: 146.92, y: 152.96))
        bezier3Path.addLine(to: CGPoint(x: 60.88, y: 152.96))
        bezier3Path.addLine(to: CGPoint(x: 60.2, y: 157.03))
        bezier3Path.addCurve(to: CGPoint(x: 189.82, y: 259.44), controlPoint1: CGPoint(x: 127.14, y: 173.24), controlPoint2: CGPoint(x: 171.43, y: 212.4))
        bezier3Path.addLine(to: CGPoint(x: 171.11, y: 169.48))
        bezier3Path.addCurve(to: CGPoint(x: 146.92, y: 152.96), controlPoint1: CGPoint(x: 167.88, y: 157.09), controlPoint2: CGPoint(x: 158.51, y: 153.39))
        fillColor16.setFill()
        bezier3Path.fill()
        
        context.restoreGState()

    }

    @objc dynamic public class func drawMaestro(frame targetFrame: CGRect = CGRect(x: 0, y: 0, width: 750, height: 471), resizing: ResizingBehavior = .aspectFit) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()!
        
        //// Resize to Target Frame
        context.saveGState()
        let resizedFrame: CGRect = resizing.apply(rect: CGRect(x: 0, y: 0, width: 750, height: 471), target: targetFrame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy(x: resizedFrame.width / 750, y: resizedFrame.height / 471)


        //// Color Declarations
        let fillColor2 = UIColor(red: 1.000, green: 1.000, blue: 1.000, alpha: 1.000)
        let fillColor10 = UIColor(red: 0.000, green: 0.000, blue: 0.000, alpha: 1.000)
        let fillColor17 = UIColor(red: 0.463, green: 0.451, blue: 0.753, alpha: 1.000)
        let fillColor18 = UIColor(red: 0.922, green: 0.000, blue: 0.106, alpha: 1.000)
        let fillColor19 = UIColor(red: 0.000, green: 0.631, blue: 0.875, alpha: 1.000)

        //// Page-1
        //// maestro 2
        //// Rectangle-1 Drawing
        let rectangle1Path = UIBezierPath(roundedRect: CGRect(x: 0, y: 0, width: 750, height: 471), cornerRadius: 40)
        fillColor10.setFill()
        rectangle1Path.fill()


        //// Group 4
        //// Shape Drawing
        let shapePath = UIBezierPath()
        shapePath.move(to: CGPoint(x: 279.8, y: 421.77))
        shapePath.addLine(to: CGPoint(x: 279.8, y: 397))
        shapePath.addCurve(to: CGPoint(x: 264.25, y: 381.28), controlPoint1: CGPoint(x: 279.8, y: 387.65), controlPoint2: CGPoint(x: 273.8, y: 381.36))
        shapePath.addCurve(to: CGPoint(x: 250.35, y: 388.28), controlPoint1: CGPoint(x: 259.25, y: 381.2), controlPoint2: CGPoint(x: 253.99, y: 382.77))
        shapePath.addCurve(to: CGPoint(x: 237.28, y: 381.28), controlPoint1: CGPoint(x: 247.62, y: 383.9), controlPoint2: CGPoint(x: 243.35, y: 381.28))
        shapePath.addCurve(to: CGPoint(x: 225.7, y: 387.15), controlPoint1: CGPoint(x: 232.65, y: 381.05), controlPoint2: CGPoint(x: 228.25, y: 383.28))
        shapePath.addLine(to: CGPoint(x: 225.7, y: 382.27))
        shapePath.addLine(to: CGPoint(x: 217.09, y: 382.27))
        shapePath.addLine(to: CGPoint(x: 217.09, y: 421.82))
        shapePath.addLine(to: CGPoint(x: 225.78, y: 421.82))
        shapePath.addLine(to: CGPoint(x: 225.78, y: 399.85))
        shapePath.addCurve(to: CGPoint(x: 235.46, y: 389.34), controlPoint1: CGPoint(x: 225.78, y: 392.98), controlPoint2: CGPoint(x: 229.59, y: 389.34))
        shapePath.addCurve(to: CGPoint(x: 244.07, y: 399.76), controlPoint1: CGPoint(x: 241.17, y: 389.34), controlPoint2: CGPoint(x: 244.07, y: 393.06))
        shapePath.addLine(to: CGPoint(x: 244.07, y: 421.76))
        shapePath.addLine(to: CGPoint(x: 252.76, y: 421.76))
        shapePath.addLine(to: CGPoint(x: 252.76, y: 399.85))
        shapePath.addCurve(to: CGPoint(x: 262.44, y: 389.34), controlPoint1: CGPoint(x: 252.76, y: 392.98), controlPoint2: CGPoint(x: 256.76, y: 389.34))
        shapePath.addCurve(to: CGPoint(x: 271.13, y: 399.76), controlPoint1: CGPoint(x: 268.31, y: 389.34), controlPoint2: CGPoint(x: 271.13, y: 393.06))
        shapePath.addLine(to: CGPoint(x: 271.13, y: 421.76))
        shapePath.addLine(to: CGPoint(x: 279.8, y: 421.77))
        shapePath.close()
        shapePath.move(to: CGPoint(x: 328.28, y: 402))
        shapePath.addLine(to: CGPoint(x: 328.28, y: 382.23))
        shapePath.addLine(to: CGPoint(x: 319.67, y: 382.23))
        shapePath.addLine(to: CGPoint(x: 319.67, y: 387))
        shapePath.addCurve(to: CGPoint(x: 307.18, y: 381.21), controlPoint1: CGPoint(x: 316.94, y: 383.44), controlPoint2: CGPoint(x: 312.8, y: 381.21))
        shapePath.addCurve(to: CGPoint(x: 287.41, y: 401.98), controlPoint1: CGPoint(x: 296.09, y: 381.21), controlPoint2: CGPoint(x: 287.41, y: 389.9))
        shapePath.addCurve(to: CGPoint(x: 307.18, y: 422.75), controlPoint1: CGPoint(x: 287.41, y: 414.06), controlPoint2: CGPoint(x: 296.1, y: 422.75))
        shapePath.addCurve(to: CGPoint(x: 319.67, y: 416.96), controlPoint1: CGPoint(x: 312.81, y: 422.75), controlPoint2: CGPoint(x: 316.94, y: 420.52))
        shapePath.addLine(to: CGPoint(x: 319.67, y: 421.76))
        shapePath.addLine(to: CGPoint(x: 328.28, y: 421.76))
        shapePath.addLine(to: CGPoint(x: 328.28, y: 402))
        shapePath.close()
        shapePath.move(to: CGPoint(x: 296.28, y: 402))
        shapePath.addCurve(to: CGPoint(x: 308.28, y: 389.34), controlPoint1: CGPoint(x: 296.28, y: 395.05), controlPoint2: CGPoint(x: 300.83, y: 389.34))
        shapePath.addCurve(to: CGPoint(x: 320.19, y: 402), controlPoint1: CGPoint(x: 315.4, y: 389.34), controlPoint2: CGPoint(x: 320.19, y: 394.8))
        shapePath.addCurve(to: CGPoint(x: 308.28, y: 414.66), controlPoint1: CGPoint(x: 320.19, y: 409.2), controlPoint2: CGPoint(x: 315.39, y: 414.66))
        shapePath.addCurve(to: CGPoint(x: 296.26, y: 402), controlPoint1: CGPoint(x: 300.81, y: 414.66), controlPoint2: CGPoint(x: 296.26, y: 408.95))
        shapePath.addLine(to: CGPoint(x: 296.28, y: 402))
        shapePath.close()
        shapePath.move(to: CGPoint(x: 512.4, y: 381.19))
        shapePath.addCurve(to: CGPoint(x: 520.89, y: 382.78), controlPoint1: CGPoint(x: 515.31, y: 381.16), controlPoint2: CGPoint(x: 518.19, y: 381.7))
        shapePath.addCurve(to: CGPoint(x: 527.64, y: 387.16), controlPoint1: CGPoint(x: 523.4, y: 383.78), controlPoint2: CGPoint(x: 525.7, y: 385.27))
        shapePath.addCurve(to: CGPoint(x: 532.1, y: 393.75), controlPoint1: CGPoint(x: 529.55, y: 389.04), controlPoint2: CGPoint(x: 531.07, y: 391.28))
        shapePath.addCurve(to: CGPoint(x: 532.1, y: 410.27), controlPoint1: CGPoint(x: 534.25, y: 399.05), controlPoint2: CGPoint(x: 534.25, y: 404.97))
        shapePath.addCurve(to: CGPoint(x: 527.64, y: 416.86), controlPoint1: CGPoint(x: 531.07, y: 412.74), controlPoint2: CGPoint(x: 529.55, y: 414.98))
        shapePath.addCurve(to: CGPoint(x: 520.89, y: 421.24), controlPoint1: CGPoint(x: 525.7, y: 418.75), controlPoint2: CGPoint(x: 523.4, y: 420.24))
        shapePath.addCurve(to: CGPoint(x: 503.89, y: 421.24), controlPoint1: CGPoint(x: 515.42, y: 423.37), controlPoint2: CGPoint(x: 509.36, y: 423.37))
        shapePath.addCurve(to: CGPoint(x: 497.16, y: 416.86), controlPoint1: CGPoint(x: 501.38, y: 420.24), controlPoint2: CGPoint(x: 499.09, y: 418.75))
        shapePath.addCurve(to: CGPoint(x: 492.72, y: 410.27), controlPoint1: CGPoint(x: 495.26, y: 414.98), controlPoint2: CGPoint(x: 493.75, y: 412.74))
        shapePath.addCurve(to: CGPoint(x: 492.72, y: 393.75), controlPoint1: CGPoint(x: 490.57, y: 404.97), controlPoint2: CGPoint(x: 490.57, y: 399.05))
        shapePath.addCurve(to: CGPoint(x: 497.16, y: 387.16), controlPoint1: CGPoint(x: 493.75, y: 391.28), controlPoint2: CGPoint(x: 495.26, y: 389.04))
        shapePath.addCurve(to: CGPoint(x: 503.89, y: 382.78), controlPoint1: CGPoint(x: 499.09, y: 385.27), controlPoint2: CGPoint(x: 501.38, y: 383.78))
        shapePath.addCurve(to: CGPoint(x: 512.4, y: 381.19), controlPoint1: CGPoint(x: 506.6, y: 381.7), controlPoint2: CGPoint(x: 509.49, y: 381.16))
        shapePath.close()
        shapePath.move(to: CGPoint(x: 512.4, y: 389.33))
        shapePath.addCurve(to: CGPoint(x: 507.49, y: 390.26), controlPoint1: CGPoint(x: 510.72, y: 389.32), controlPoint2: CGPoint(x: 509.05, y: 389.63))
        shapePath.addCurve(to: CGPoint(x: 503.57, y: 392.86), controlPoint1: CGPoint(x: 506.02, y: 390.85), controlPoint2: CGPoint(x: 504.69, y: 391.74))
        shapePath.addCurve(to: CGPoint(x: 500.97, y: 396.86), controlPoint1: CGPoint(x: 502.45, y: 394.01), controlPoint2: CGPoint(x: 501.56, y: 395.37))
        shapePath.addCurve(to: CGPoint(x: 500.97, y: 407.14), controlPoint1: CGPoint(x: 499.7, y: 400.17), controlPoint2: CGPoint(x: 499.7, y: 403.83))
        shapePath.addCurve(to: CGPoint(x: 503.57, y: 411.14), controlPoint1: CGPoint(x: 501.56, y: 408.63), controlPoint2: CGPoint(x: 502.45, y: 409.99))
        shapePath.addCurve(to: CGPoint(x: 507.49, y: 413.74), controlPoint1: CGPoint(x: 504.69, y: 412.26), controlPoint2: CGPoint(x: 506.02, y: 413.15))
        shapePath.addCurve(to: CGPoint(x: 517.32, y: 413.74), controlPoint1: CGPoint(x: 510.65, y: 414.98), controlPoint2: CGPoint(x: 514.16, y: 414.98))
        shapePath.addCurve(to: CGPoint(x: 521.26, y: 411.14), controlPoint1: CGPoint(x: 518.79, y: 413.15), controlPoint2: CGPoint(x: 520.13, y: 412.26))
        shapePath.addCurve(to: CGPoint(x: 523.88, y: 407.14), controlPoint1: CGPoint(x: 522.39, y: 410), controlPoint2: CGPoint(x: 523.28, y: 408.64))
        shapePath.addCurve(to: CGPoint(x: 523.88, y: 396.86), controlPoint1: CGPoint(x: 525.15, y: 403.83), controlPoint2: CGPoint(x: 525.15, y: 400.17))
        shapePath.addCurve(to: CGPoint(x: 521.26, y: 392.86), controlPoint1: CGPoint(x: 523.28, y: 395.36), controlPoint2: CGPoint(x: 522.39, y: 394))
        shapePath.addCurve(to: CGPoint(x: 517.32, y: 390.26), controlPoint1: CGPoint(x: 520.13, y: 391.74), controlPoint2: CGPoint(x: 518.79, y: 390.85))
        shapePath.addCurve(to: CGPoint(x: 512.4, y: 389.32), controlPoint1: CGPoint(x: 515.76, y: 389.63), controlPoint2: CGPoint(x: 514.09, y: 389.31))
        shapePath.addLine(to: CGPoint(x: 512.4, y: 389.33))
        shapePath.close()
        shapePath.move(to: CGPoint(x: 375.1, y: 402))
        shapePath.addCurve(to: CGPoint(x: 356.32, y: 381.23), controlPoint1: CGPoint(x: 375.02, y: 389.67), controlPoint2: CGPoint(x: 367.41, y: 381.23))
        shapePath.addCurve(to: CGPoint(x: 336.63, y: 402), controlPoint1: CGPoint(x: 344.74, y: 381.23), controlPoint2: CGPoint(x: 336.63, y: 389.67))
        shapePath.addCurve(to: CGPoint(x: 356.9, y: 422.77), controlPoint1: CGPoint(x: 336.63, y: 414.58), controlPoint2: CGPoint(x: 345.07, y: 422.77))
        shapePath.addCurve(to: CGPoint(x: 373.12, y: 417.23), controlPoint1: CGPoint(x: 362.9, y: 422.77), controlPoint2: CGPoint(x: 368.32, y: 421.28))
        shapePath.addLine(to: CGPoint(x: 368.9, y: 410.86))
        shapePath.addCurve(to: CGPoint(x: 357.4, y: 415), controlPoint1: CGPoint(x: 365.63, y: 413.48), controlPoint2: CGPoint(x: 361.59, y: 414.94))
        shapePath.addCurve(to: CGPoint(x: 345.57, y: 405.32), controlPoint1: CGPoint(x: 351.86, y: 415), controlPoint2: CGPoint(x: 346.81, y: 412.44))
        shapePath.addLine(to: CGPoint(x: 374.94, y: 405.32))
        shapePath.addCurve(to: CGPoint(x: 375.1, y: 402), controlPoint1: CGPoint(x: 375, y: 404.23), controlPoint2: CGPoint(x: 375.1, y: 403.16))
        shapePath.close()
        shapePath.move(to: CGPoint(x: 345.65, y: 398.53))
        shapePath.addCurve(to: CGPoint(x: 356.16, y: 388.93), controlPoint1: CGPoint(x: 346.56, y: 392.82), controlPoint2: CGPoint(x: 350.03, y: 388.93))
        shapePath.addCurve(to: CGPoint(x: 366.16, y: 398.53), controlPoint1: CGPoint(x: 361.7, y: 388.93), controlPoint2: CGPoint(x: 365.26, y: 392.4))
        shapePath.addLine(to: CGPoint(x: 345.65, y: 398.53))
        shapePath.close()
        shapePath.move(to: CGPoint(x: 411.34, y: 392.33))
        shapePath.addCurve(to: CGPoint(x: 399, y: 388.93), controlPoint1: CGPoint(x: 407.58, y: 390.17), controlPoint2: CGPoint(x: 403.34, y: 389))
        shapePath.addCurve(to: CGPoint(x: 391.47, y: 393.56), controlPoint1: CGPoint(x: 394.28, y: 388.93), controlPoint2: CGPoint(x: 391.47, y: 390.67))
        shapePath.addCurve(to: CGPoint(x: 398.17, y: 397.45), controlPoint1: CGPoint(x: 391.47, y: 396.21), controlPoint2: CGPoint(x: 394.47, y: 396.95))
        shapePath.addLine(to: CGPoint(x: 402.22, y: 398.03))
        shapePath.addCurve(to: CGPoint(x: 416.04, y: 409.86), controlPoint1: CGPoint(x: 410.83, y: 399.27), controlPoint2: CGPoint(x: 416.04, y: 402.91))
        shapePath.addCurve(to: CGPoint(x: 398.04, y: 422.77), controlPoint1: CGPoint(x: 416.04, y: 417.39), controlPoint2: CGPoint(x: 409.42, y: 422.77))
        shapePath.addCurve(to: CGPoint(x: 380.91, y: 417.64), controlPoint1: CGPoint(x: 391.59, y: 422.77), controlPoint2: CGPoint(x: 385.63, y: 421.11))
        shapePath.addLine(to: CGPoint(x: 384.96, y: 410.94))
        shapePath.addCurve(to: CGPoint(x: 398.12, y: 415.08), controlPoint1: CGPoint(x: 388.76, y: 413.76), controlPoint2: CGPoint(x: 393.39, y: 415.22))
        shapePath.addCurve(to: CGPoint(x: 407.12, y: 410.28), controlPoint1: CGPoint(x: 403.99, y: 415.08), controlPoint2: CGPoint(x: 407.12, y: 413.34))
        shapePath.addCurve(to: CGPoint(x: 400.17, y: 406.14), controlPoint1: CGPoint(x: 407.12, y: 408.05), controlPoint2: CGPoint(x: 404.89, y: 406.81))
        shapePath.addLine(to: CGPoint(x: 396.12, y: 405.56))
        shapePath.addCurve(to: CGPoint(x: 382.47, y: 393.89), controlPoint1: CGPoint(x: 387.27, y: 404.32), controlPoint2: CGPoint(x: 382.47, y: 400.35))
        shapePath.addCurve(to: CGPoint(x: 398.93, y: 381.23), controlPoint1: CGPoint(x: 382.47, y: 386.03), controlPoint2: CGPoint(x: 388.92, y: 381.23))
        shapePath.addCurve(to: CGPoint(x: 415.06, y: 385.37), controlPoint1: CGPoint(x: 405.22, y: 381.23), controlPoint2: CGPoint(x: 410.93, y: 382.64))
        shapePath.addLine(to: CGPoint(x: 411.34, y: 392.33))
        shapePath.close()
        shapePath.move(to: CGPoint(x: 452.69, y: 390.1))
        shapePath.addLine(to: CGPoint(x: 438.62, y: 390.1))
        shapePath.addLine(to: CGPoint(x: 438.62, y: 408))
        shapePath.addCurve(to: CGPoint(x: 444.33, y: 414.62), controlPoint1: CGPoint(x: 438.62, y: 412), controlPoint2: CGPoint(x: 440.03, y: 414.62))
        shapePath.addCurve(to: CGPoint(x: 451.94, y: 412.39), controlPoint1: CGPoint(x: 447.01, y: 414.53), controlPoint2: CGPoint(x: 449.63, y: 413.76))
        shapePath.addLine(to: CGPoint(x: 454.42, y: 419.75))
        shapePath.addCurve(to: CGPoint(x: 443.66, y: 422.81), controlPoint1: CGPoint(x: 451.19, y: 421.76), controlPoint2: CGPoint(x: 447.46, y: 422.82))
        shapePath.addCurve(to: CGPoint(x: 429.93, y: 408.16), controlPoint1: CGPoint(x: 433.48, y: 422.81), controlPoint2: CGPoint(x: 429.93, y: 417.35))
        shapePath.addLine(to: CGPoint(x: 429.93, y: 390.16))
        shapePath.addLine(to: CGPoint(x: 421.93, y: 390.16))
        shapePath.addLine(to: CGPoint(x: 421.93, y: 382.3))
        shapePath.addLine(to: CGPoint(x: 429.93, y: 382.3))
        shapePath.addLine(to: CGPoint(x: 429.93, y: 370.3))
        shapePath.addLine(to: CGPoint(x: 438.62, y: 370.3))
        shapePath.addLine(to: CGPoint(x: 438.62, y: 382.3))
        shapePath.addLine(to: CGPoint(x: 452.68, y: 382.3))
        shapePath.addLine(to: CGPoint(x: 452.69, y: 390.1))
        shapePath.close()
        shapePath.move(to: CGPoint(x: 482.47, y: 381.25))
        shapePath.addCurve(to: CGPoint(x: 488.59, y: 382.33), controlPoint1: CGPoint(x: 484.56, y: 381.26), controlPoint2: CGPoint(x: 486.63, y: 381.63))
        shapePath.addLine(to: CGPoint(x: 485.94, y: 390.44))
        shapePath.addCurve(to: CGPoint(x: 480.56, y: 389.44), controlPoint1: CGPoint(x: 484.23, y: 389.76), controlPoint2: CGPoint(x: 482.4, y: 389.42))
        shapePath.addCurve(to: CGPoint(x: 472.12, y: 399.62), controlPoint1: CGPoint(x: 474.93, y: 389.44), controlPoint2: CGPoint(x: 472.12, y: 393.08))
        shapePath.addLine(to: CGPoint(x: 472.12, y: 421.79))
        shapePath.addLine(to: CGPoint(x: 463.52, y: 421.79))
        shapePath.addLine(to: CGPoint(x: 463.52, y: 382.23))
        shapePath.addLine(to: CGPoint(x: 472, y: 382.23))
        shapePath.addLine(to: CGPoint(x: 472, y: 387))
        shapePath.addCurve(to: CGPoint(x: 482.42, y: 381.21), controlPoint1: CGPoint(x: 474.15, y: 383.31), controlPoint2: CGPoint(x: 478.15, y: 381.08))
        shapePath.addLine(to: CGPoint(x: 482.47, y: 381.25))
        shapePath.close()
        fillColor2.setFill()
        shapePath.fill()


        //// _Group_
        //// Rectangle-path Drawing
        let rectanglepathPath = UIBezierPath(rect: CGRect(x: 309.95, y: 80.39, width: 130.5, height: 234.51))
        fillColor17.setFill()
        rectanglepathPath.fill()


        //// _Path_ Drawing
        let _Path_Path = UIBezierPath()
        _Path_Path.move(to: CGPoint(x: 318.24, y: 197.64))
        _Path_Path.addCurve(to: CGPoint(x: 375.24, y: 80.38), controlPoint1: CGPoint(x: 318.21, y: 151.87), controlPoint2: CGPoint(x: 339.23, y: 108.63))
        _Path_Path.addCurve(to: CGPoint(x: 173.51, y: 96.45), controlPoint1: CGPoint(x: 314.09, y: 32.32), controlPoint2: CGPoint(x: 226.28, y: 39.31))
        _Path_Path.addCurve(to: CGPoint(x: 173.51, y: 298.82), controlPoint1: CGPoint(x: 120.75, y: 153.59), controlPoint2: CGPoint(x: 120.75, y: 241.68))
        _Path_Path.addCurve(to: CGPoint(x: 375.24, y: 314.89), controlPoint1: CGPoint(x: 226.28, y: 355.96), controlPoint2: CGPoint(x: 314.09, y: 362.95))
        _Path_Path.addCurve(to: CGPoint(x: 318.24, y: 197.64), controlPoint1: CGPoint(x: 339.23, y: 286.65), controlPoint2: CGPoint(x: 318.21, y: 243.41))
        _Path_Path.close()
        fillColor18.setFill()
        _Path_Path.fill()


        //// Shape 2 Drawing
        let shape2Path = UIBezierPath()
        shape2Path.move(to: CGPoint(x: 616.5, y: 197.64))
        shape2Path.addCurve(to: CGPoint(x: 532.55, y: 331.78), controlPoint1: CGPoint(x: 616.5, y: 254.74), controlPoint2: CGPoint(x: 583.9, y: 306.83))
        shape2Path.addCurve(to: CGPoint(x: 375.2, y: 314.9), controlPoint1: CGPoint(x: 481.19, y: 356.74), controlPoint2: CGPoint(x: 420.09, y: 350.18))
        shape2Path.addCurve(to: CGPoint(x: 432.16, y: 197.65), controlPoint1: CGPoint(x: 411.17, y: 286.62), controlPoint2: CGPoint(x: 432.16, y: 243.4))
        shape2Path.addCurve(to: CGPoint(x: 375.2, y: 80.39), controlPoint1: CGPoint(x: 432.16, y: 151.89), controlPoint2: CGPoint(x: 411.17, y: 108.67))
        shape2Path.addCurve(to: CGPoint(x: 532.54, y: 63.5), controlPoint1: CGPoint(x: 420.09, y: 45.11), controlPoint2: CGPoint(x: 481.19, y: 38.55))
        shape2Path.addCurve(to: CGPoint(x: 616.5, y: 197.64), controlPoint1: CGPoint(x: 583.9, y: 88.46), controlPoint2: CGPoint(x: 616.5, y: 140.54))
        shape2Path.close()
        fillColor19.setFill()
        shape2Path.fill()
        
        context.restoreGState()

    }

    @objc dynamic public class func drawMastercard(frame targetFrame: CGRect = CGRect(x: 0, y: 0, width: 750, height: 471), resizing: ResizingBehavior = .aspectFit) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()!
        
        //// Resize to Target Frame
        context.saveGState()
        let resizedFrame: CGRect = resizing.apply(rect: CGRect(x: 0, y: 0, width: 750, height: 471), target: targetFrame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy(x: resizedFrame.width / 750, y: resizedFrame.height / 471)


        //// Color Declarations
        let fillColor2 = UIColor(red: 1.000, green: 1.000, blue: 1.000, alpha: 1.000)
        let fillColor10 = UIColor(red: 0.000, green: 0.000, blue: 0.000, alpha: 1.000)
        let fillColor18 = UIColor(red: 0.922, green: 0.000, blue: 0.106, alpha: 1.000)
        let fillColor20 = UIColor(red: 1.000, green: 0.373, blue: 0.000, alpha: 1.000)
        let fillColor21 = UIColor(red: 0.969, green: 0.620, blue: 0.106, alpha: 1.000)

        //// Page-1
        //// mastercard 2
        //// Rectangle-1 Drawing
        let rectangle1Path = UIBezierPath(roundedRect: CGRect(x: 0, y: 0, width: 750, height: 471), cornerRadius: 40)
        fillColor10.setFill()
        rectangle1Path.fill()


        //// Group 4
        //// Shape Drawing
        let shapePath = UIBezierPath()
        shapePath.move(to: CGPoint(x: 221.13, y: 421.67))
        shapePath.addLine(to: CGPoint(x: 221.13, y: 396.82))
        shapePath.addCurve(to: CGPoint(x: 205.81, y: 381.08), controlPoint1: CGPoint(x: 221.13, y: 387.29), controlPoint2: CGPoint(x: 215.33, y: 381.08))
        shapePath.addCurve(to: CGPoint(x: 191.73, y: 388.08), controlPoint1: CGPoint(x: 200.81, y: 381.08), controlPoint2: CGPoint(x: 195.46, y: 382.74))
        shapePath.addCurve(to: CGPoint(x: 178.48, y: 381.08), controlPoint1: CGPoint(x: 188.83, y: 383.52), controlPoint2: CGPoint(x: 184.73, y: 381.08))
        shapePath.addCurve(to: CGPoint(x: 166.48, y: 386.88), controlPoint1: CGPoint(x: 173.76, y: 380.88), controlPoint2: CGPoint(x: 169.25, y: 383.05))
        shapePath.addLine(to: CGPoint(x: 166.48, y: 381.88))
        shapePath.addLine(to: CGPoint(x: 158.61, y: 381.88))
        shapePath.addLine(to: CGPoint(x: 158.61, y: 421.64))
        shapePath.addLine(to: CGPoint(x: 166.48, y: 421.64))
        shapePath.addLine(to: CGPoint(x: 166.48, y: 398.89))
        shapePath.addCurve(to: CGPoint(x: 176.42, y: 388.54), controlPoint1: CGPoint(x: 166.48, y: 391.89), controlPoint2: CGPoint(x: 170.62, y: 388.54))
        shapePath.addCurve(to: CGPoint(x: 185.53, y: 398.89), controlPoint1: CGPoint(x: 182.22, y: 388.54), controlPoint2: CGPoint(x: 185.53, y: 392.27))
        shapePath.addLine(to: CGPoint(x: 185.53, y: 421.67))
        shapePath.addLine(to: CGPoint(x: 193.4, y: 421.67))
        shapePath.addLine(to: CGPoint(x: 193.4, y: 398.89))
        shapePath.addCurve(to: CGPoint(x: 203.34, y: 388.54), controlPoint1: CGPoint(x: 193.4, y: 391.89), controlPoint2: CGPoint(x: 197.54, y: 388.54))
        shapePath.addCurve(to: CGPoint(x: 212.45, y: 398.89), controlPoint1: CGPoint(x: 209.14, y: 388.54), controlPoint2: CGPoint(x: 212.45, y: 392.27))
        shapePath.addLine(to: CGPoint(x: 212.45, y: 421.67))
        shapePath.addLine(to: CGPoint(x: 221.13, y: 421.67))
        shapePath.close()
        shapePath.move(to: CGPoint(x: 350.35, y: 382.32))
        shapePath.addLine(to: CGPoint(x: 335.85, y: 382.32))
        shapePath.addLine(to: CGPoint(x: 335.85, y: 370.32))
        shapePath.addLine(to: CGPoint(x: 328, y: 370.32))
        shapePath.addLine(to: CGPoint(x: 328, y: 382.32))
        shapePath.addLine(to: CGPoint(x: 319.72, y: 382.32))
        shapePath.addLine(to: CGPoint(x: 319.72, y: 389.32))
        shapePath.addLine(to: CGPoint(x: 328, y: 389.32))
        shapePath.addLine(to: CGPoint(x: 328, y: 408))
        shapePath.addCurve(to: CGPoint(x: 341.25, y: 422.5), controlPoint1: CGPoint(x: 328, y: 417.11), controlPoint2: CGPoint(x: 331.31, y: 422.5))
        shapePath.addCurve(to: CGPoint(x: 352, y: 419.6), controlPoint1: CGPoint(x: 345.02, y: 422.42), controlPoint2: CGPoint(x: 348.71, y: 421.43))
        shapePath.addLine(to: CGPoint(x: 349.51, y: 412.6))
        shapePath.addCurve(to: CGPoint(x: 342.05, y: 414.67), controlPoint1: CGPoint(x: 347.28, y: 414), controlPoint2: CGPoint(x: 344.68, y: 414.72))
        shapePath.addCurve(to: CGPoint(x: 335.84, y: 408.04), controlPoint1: CGPoint(x: 337.91, y: 414.67), controlPoint2: CGPoint(x: 335.84, y: 412.18))
        shapePath.addLine(to: CGPoint(x: 335.84, y: 389))
        shapePath.addLine(to: CGPoint(x: 350.34, y: 389))
        shapePath.addLine(to: CGPoint(x: 350.34, y: 382.37))
        shapePath.addLine(to: CGPoint(x: 350.35, y: 382.32))
        shapePath.close()
        shapePath.move(to: CGPoint(x: 424.07, y: 381.08))
        shapePath.addCurve(to: CGPoint(x: 413.3, y: 386.88), controlPoint1: CGPoint(x: 419.71, y: 380.98), controlPoint2: CGPoint(x: 415.62, y: 383.19))
        shapePath.addLine(to: CGPoint(x: 413.3, y: 381.88))
        shapePath.addLine(to: CGPoint(x: 405.43, y: 381.88))
        shapePath.addLine(to: CGPoint(x: 405.43, y: 421.64))
        shapePath.addLine(to: CGPoint(x: 413.3, y: 421.64))
        shapePath.addLine(to: CGPoint(x: 413.3, y: 399.31))
        shapePath.addCurve(to: CGPoint(x: 422, y: 388.54), controlPoint1: CGPoint(x: 413.3, y: 392.68), controlPoint2: CGPoint(x: 416.61, y: 388.54))
        shapePath.addCurve(to: CGPoint(x: 427.38, y: 389.37), controlPoint1: CGPoint(x: 423.82, y: 388.61), controlPoint2: CGPoint(x: 425.62, y: 388.89))
        shapePath.addLine(to: CGPoint(x: 429.87, y: 381.91))
        shapePath.addCurve(to: CGPoint(x: 424.07, y: 381.08), controlPoint1: CGPoint(x: 427.97, y: 381.43), controlPoint2: CGPoint(x: 426.03, y: 381.15))
        shapePath.close()
        shapePath.move(to: CGPoint(x: 312.66, y: 385.22))
        shapePath.addCurve(to: CGPoint(x: 296.51, y: 381.08), controlPoint1: CGPoint(x: 308.52, y: 382.32), controlPoint2: CGPoint(x: 302.72, y: 381.08))
        shapePath.addCurve(to: CGPoint(x: 280.36, y: 393.51), controlPoint1: CGPoint(x: 286.57, y: 381.08), controlPoint2: CGPoint(x: 280.36, y: 385.64))
        shapePath.addCurve(to: CGPoint(x: 293.61, y: 405.11), controlPoint1: CGPoint(x: 280.36, y: 400.14), controlPoint2: CGPoint(x: 284.92, y: 403.86))
        shapePath.addLine(to: CGPoint(x: 297.75, y: 405.52))
        shapePath.addCurve(to: CGPoint(x: 305.21, y: 410.08), controlPoint1: CGPoint(x: 302.31, y: 406.35), controlPoint2: CGPoint(x: 305.21, y: 408.01))
        shapePath.addCurve(to: CGPoint(x: 295.68, y: 415.08), controlPoint1: CGPoint(x: 305.21, y: 412.98), controlPoint2: CGPoint(x: 301.9, y: 415.08))
        shapePath.addCurve(to: CGPoint(x: 282.43, y: 410.94), controlPoint1: CGPoint(x: 290.93, y: 415.18), controlPoint2: CGPoint(x: 286.28, y: 413.72))
        shapePath.addLine(to: CGPoint(x: 278.29, y: 417.15))
        shapePath.addCurve(to: CGPoint(x: 295.29, y: 422.15), controlPoint1: CGPoint(x: 284.09, y: 421.29), controlPoint2: CGPoint(x: 291.13, y: 422.15))
        shapePath.addCurve(to: CGPoint(x: 313.1, y: 409.31), controlPoint1: CGPoint(x: 306.89, y: 422.15), controlPoint2: CGPoint(x: 313.1, y: 416.77))
        shapePath.addCurve(to: CGPoint(x: 299.43, y: 397.71), controlPoint1: CGPoint(x: 313.1, y: 402.31), controlPoint2: CGPoint(x: 308.1, y: 398.96))
        shapePath.addLine(to: CGPoint(x: 295.29, y: 397.3))
        shapePath.addCurve(to: CGPoint(x: 288.29, y: 393.16), controlPoint1: CGPoint(x: 291.56, y: 396.89), controlPoint2: CGPoint(x: 288.29, y: 395.64))
        shapePath.addCurve(to: CGPoint(x: 296.16, y: 388.16), controlPoint1: CGPoint(x: 288.29, y: 390.26), controlPoint2: CGPoint(x: 291.6, y: 388.16))
        shapePath.addCurve(to: CGPoint(x: 308.59, y: 391.47), controlPoint1: CGPoint(x: 301.16, y: 388.16), controlPoint2: CGPoint(x: 306.1, y: 390.23))
        shapePath.addLine(to: CGPoint(x: 312.66, y: 385.22))
        shapePath.close()
        shapePath.move(to: CGPoint(x: 432.77, y: 401.79))
        shapePath.addCurve(to: CGPoint(x: 453.48, y: 422.5), controlPoint1: CGPoint(x: 432.77, y: 413.79), controlPoint2: CGPoint(x: 440.64, y: 422.5))
        shapePath.addCurve(to: CGPoint(x: 467.56, y: 417.94), controlPoint1: CGPoint(x: 459.28, y: 422.5), controlPoint2: CGPoint(x: 463.42, y: 421.26))
        shapePath.addLine(to: CGPoint(x: 463.42, y: 411.73))
        shapePath.addCurve(to: CGPoint(x: 453.07, y: 415.46), controlPoint1: CGPoint(x: 460.49, y: 414.1), controlPoint2: CGPoint(x: 456.84, y: 415.42))
        shapePath.addCurve(to: CGPoint(x: 440.64, y: 402.21), controlPoint1: CGPoint(x: 446.07, y: 415.46), controlPoint2: CGPoint(x: 440.64, y: 410.08))
        shapePath.addCurve(to: CGPoint(x: 453.07, y: 389), controlPoint1: CGPoint(x: 440.64, y: 394.34), controlPoint2: CGPoint(x: 446, y: 389))
        shapePath.addCurve(to: CGPoint(x: 463.42, y: 392.73), controlPoint1: CGPoint(x: 456.84, y: 389.04), controlPoint2: CGPoint(x: 460.49, y: 390.36))
        shapePath.addLine(to: CGPoint(x: 467.56, y: 386.52))
        shapePath.addCurve(to: CGPoint(x: 453.48, y: 381.96), controlPoint1: CGPoint(x: 463.42, y: 383.21), controlPoint2: CGPoint(x: 459.28, y: 381.96))
        shapePath.addCurve(to: CGPoint(x: 432.77, y: 401.84), controlPoint1: CGPoint(x: 441.05, y: 381.13), controlPoint2: CGPoint(x: 432.77, y: 389.83))
        shapePath.addLine(to: CGPoint(x: 432.77, y: 401.79))
        shapePath.close()
        shapePath.move(to: CGPoint(x: 377.27, y: 381.08))
        shapePath.addCurve(to: CGPoint(x: 357.8, y: 401.79), controlPoint1: CGPoint(x: 365.67, y: 381.08), controlPoint2: CGPoint(x: 357.8, y: 389.36))
        shapePath.addCurve(to: CGPoint(x: 378.09, y: 422.5), controlPoint1: CGPoint(x: 357.8, y: 414.22), controlPoint2: CGPoint(x: 366.08, y: 422.5))
        shapePath.addCurve(to: CGPoint(x: 394.24, y: 417.12), controlPoint1: CGPoint(x: 383.93, y: 422.62), controlPoint2: CGPoint(x: 389.64, y: 420.72))
        shapePath.addLine(to: CGPoint(x: 390.1, y: 411.32))
        shapePath.addCurve(to: CGPoint(x: 378.5, y: 415.46), controlPoint1: CGPoint(x: 386.77, y: 413.9), controlPoint2: CGPoint(x: 382.71, y: 415.35))
        shapePath.addCurve(to: CGPoint(x: 366.5, y: 405.11), controlPoint1: CGPoint(x: 373.12, y: 415.46), controlPoint2: CGPoint(x: 367.32, y: 412.15))
        shapePath.addLine(to: CGPoint(x: 395.91, y: 405.11))
        shapePath.addLine(to: CGPoint(x: 395.91, y: 401.8))
        shapePath.addCurve(to: CGPoint(x: 377.27, y: 381.09), controlPoint1: CGPoint(x: 395.91, y: 389.37), controlPoint2: CGPoint(x: 388.45, y: 381.09))
        shapePath.addLine(to: CGPoint(x: 377.27, y: 381.08))
        shapePath.close()
        shapePath.move(to: CGPoint(x: 376.86, y: 388.54))
        shapePath.addCurve(to: CGPoint(x: 387.21, y: 398.48), controlPoint1: CGPoint(x: 382.66, y: 388.54), controlPoint2: CGPoint(x: 386.8, y: 392.27))
        shapePath.addLine(to: CGPoint(x: 365.68, y: 398.48))
        shapePath.addCurve(to: CGPoint(x: 376.86, y: 388.54), controlPoint1: CGPoint(x: 366.92, y: 392.68), controlPoint2: CGPoint(x: 370.68, y: 388.54))
        shapePath.close()
        shapePath.move(to: CGPoint(x: 269.59, y: 401.79))
        shapePath.addLine(to: CGPoint(x: 269.59, y: 381.91))
        shapePath.addLine(to: CGPoint(x: 261.72, y: 381.91))
        shapePath.addLine(to: CGPoint(x: 261.72, y: 386.91))
        shapePath.addCurve(to: CGPoint(x: 248.88, y: 381.11), controlPoint1: CGPoint(x: 258.82, y: 383.18), controlPoint2: CGPoint(x: 254.72, y: 381.11))
        shapePath.addCurve(to: CGPoint(x: 229.41, y: 401.82), controlPoint1: CGPoint(x: 237.7, y: 381.11), controlPoint2: CGPoint(x: 229.41, y: 389.81))
        shapePath.addCurve(to: CGPoint(x: 248.88, y: 422.53), controlPoint1: CGPoint(x: 229.41, y: 413.83), controlPoint2: CGPoint(x: 237.69, y: 422.53))
        shapePath.addCurve(to: CGPoint(x: 261.72, y: 416.73), controlPoint1: CGPoint(x: 254.68, y: 422.53), controlPoint2: CGPoint(x: 258.82, y: 420.46))
        shapePath.addLine(to: CGPoint(x: 261.72, y: 421.73))
        shapePath.addLine(to: CGPoint(x: 269.59, y: 421.73))
        shapePath.addLine(to: CGPoint(x: 269.59, y: 401.79))
        shapePath.close()
        shapePath.move(to: CGPoint(x: 237.7, y: 401.79))
        shapePath.addCurve(to: CGPoint(x: 250.13, y: 388.54), controlPoint1: CGPoint(x: 237.7, y: 394.33), controlPoint2: CGPoint(x: 242.26, y: 388.54))
        shapePath.addCurve(to: CGPoint(x: 262.13, y: 401.79), controlPoint1: CGPoint(x: 257.59, y: 388.54), controlPoint2: CGPoint(x: 262.13, y: 394.34))
        shapePath.addCurve(to: CGPoint(x: 250.13, y: 415.04), controlPoint1: CGPoint(x: 262.13, y: 409.66), controlPoint2: CGPoint(x: 257.13, y: 415.04))
        shapePath.addCurve(to: CGPoint(x: 237.7, y: 401.79), controlPoint1: CGPoint(x: 242.26, y: 415.45), controlPoint2: CGPoint(x: 237.7, y: 409.24))
        shapePath.close()
        shapePath.move(to: CGPoint(x: 543.78, y: 381.08))
        shapePath.addCurve(to: CGPoint(x: 533.01, y: 386.88), controlPoint1: CGPoint(x: 539.42, y: 380.98), controlPoint2: CGPoint(x: 535.33, y: 383.19))
        shapePath.addLine(to: CGPoint(x: 533.01, y: 381.88))
        shapePath.addLine(to: CGPoint(x: 525.14, y: 381.88))
        shapePath.addLine(to: CGPoint(x: 525.14, y: 421.64))
        shapePath.addLine(to: CGPoint(x: 533, y: 421.64))
        shapePath.addLine(to: CGPoint(x: 533, y: 399.31))
        shapePath.addCurve(to: CGPoint(x: 541.7, y: 388.54), controlPoint1: CGPoint(x: 533, y: 392.68), controlPoint2: CGPoint(x: 536.31, y: 388.54))
        shapePath.addCurve(to: CGPoint(x: 547.08, y: 389.37), controlPoint1: CGPoint(x: 543.52, y: 388.61), controlPoint2: CGPoint(x: 545.32, y: 388.89))
        shapePath.addLine(to: CGPoint(x: 549.57, y: 381.91))
        shapePath.addCurve(to: CGPoint(x: 543.77, y: 381.08), controlPoint1: CGPoint(x: 547.67, y: 381.43), controlPoint2: CGPoint(x: 545.73, y: 381.15))
        shapePath.addLine(to: CGPoint(x: 543.78, y: 381.08))
        shapePath.close()
        shapePath.move(to: CGPoint(x: 513.13, y: 401.79))
        shapePath.addLine(to: CGPoint(x: 513.13, y: 381.91))
        shapePath.addLine(to: CGPoint(x: 505.26, y: 381.91))
        shapePath.addLine(to: CGPoint(x: 505.26, y: 386.91))
        shapePath.addCurve(to: CGPoint(x: 492.42, y: 381.11), controlPoint1: CGPoint(x: 502.36, y: 383.18), controlPoint2: CGPoint(x: 498.26, y: 381.11))
        shapePath.addCurve(to: CGPoint(x: 472.95, y: 401.82), controlPoint1: CGPoint(x: 481.24, y: 381.11), controlPoint2: CGPoint(x: 472.95, y: 389.81))
        shapePath.addCurve(to: CGPoint(x: 492.42, y: 422.53), controlPoint1: CGPoint(x: 472.95, y: 413.83), controlPoint2: CGPoint(x: 481.23, y: 422.53))
        shapePath.addCurve(to: CGPoint(x: 505.26, y: 416.73), controlPoint1: CGPoint(x: 498.22, y: 422.53), controlPoint2: CGPoint(x: 502.36, y: 420.46))
        shapePath.addLine(to: CGPoint(x: 505.26, y: 421.73))
        shapePath.addLine(to: CGPoint(x: 513.13, y: 421.73))
        shapePath.addLine(to: CGPoint(x: 513.13, y: 401.79))
        shapePath.close()
        shapePath.move(to: CGPoint(x: 481.24, y: 401.79))
        shapePath.addCurve(to: CGPoint(x: 493.67, y: 388.54), controlPoint1: CGPoint(x: 481.24, y: 394.33), controlPoint2: CGPoint(x: 485.8, y: 388.54))
        shapePath.addCurve(to: CGPoint(x: 505.67, y: 401.79), controlPoint1: CGPoint(x: 501.13, y: 388.54), controlPoint2: CGPoint(x: 505.67, y: 394.34))
        shapePath.addCurve(to: CGPoint(x: 493.67, y: 415.04), controlPoint1: CGPoint(x: 505.67, y: 409.66), controlPoint2: CGPoint(x: 500.67, y: 415.04))
        shapePath.addCurve(to: CGPoint(x: 481.24, y: 401.79), controlPoint1: CGPoint(x: 485.8, y: 415.45), controlPoint2: CGPoint(x: 481.24, y: 409.24))
        shapePath.close()
        shapePath.move(to: CGPoint(x: 593.07, y: 401.79))
        shapePath.addLine(to: CGPoint(x: 593.07, y: 366.17))
        shapePath.addLine(to: CGPoint(x: 585.2, y: 366.17))
        shapePath.addLine(to: CGPoint(x: 585.2, y: 386.88))
        shapePath.addCurve(to: CGPoint(x: 572.36, y: 381.08), controlPoint1: CGPoint(x: 582.3, y: 383.15), controlPoint2: CGPoint(x: 578.2, y: 381.08))
        shapePath.addCurve(to: CGPoint(x: 552.89, y: 401.79), controlPoint1: CGPoint(x: 561.18, y: 381.08), controlPoint2: CGPoint(x: 552.89, y: 389.78))
        shapePath.addCurve(to: CGPoint(x: 572.36, y: 422.5), controlPoint1: CGPoint(x: 552.89, y: 413.8), controlPoint2: CGPoint(x: 561.17, y: 422.5))
        shapePath.addCurve(to: CGPoint(x: 585.2, y: 416.7), controlPoint1: CGPoint(x: 578.16, y: 422.5), controlPoint2: CGPoint(x: 582.3, y: 420.43))
        shapePath.addLine(to: CGPoint(x: 585.2, y: 421.7))
        shapePath.addLine(to: CGPoint(x: 593.07, y: 421.7))
        shapePath.addLine(to: CGPoint(x: 593.07, y: 401.79))
        shapePath.close()
        shapePath.move(to: CGPoint(x: 561.18, y: 401.79))
        shapePath.addCurve(to: CGPoint(x: 573.61, y: 388.54), controlPoint1: CGPoint(x: 561.18, y: 394.33), controlPoint2: CGPoint(x: 565.74, y: 388.54))
        shapePath.addCurve(to: CGPoint(x: 585.61, y: 401.79), controlPoint1: CGPoint(x: 581.07, y: 388.54), controlPoint2: CGPoint(x: 585.61, y: 394.34))
        shapePath.addCurve(to: CGPoint(x: 573.61, y: 415.04), controlPoint1: CGPoint(x: 585.61, y: 409.66), controlPoint2: CGPoint(x: 580.61, y: 415.04))
        shapePath.addCurve(to: CGPoint(x: 561.17, y: 401.79), controlPoint1: CGPoint(x: 565.73, y: 415.46), controlPoint2: CGPoint(x: 561.17, y: 409.25))
        shapePath.addLine(to: CGPoint(x: 561.18, y: 401.79))
        shapePath.close()
        fillColor2.setFill()
        shapePath.fill()


        //// Group 5
        //// Rectangle-path Drawing
        let rectanglepathPath = UIBezierPath(rect: CGRect(x: 303.55, y: 80.39, width: 143.72, height: 234.42))
        fillColor20.setFill()
        rectanglepathPath.fill()


        //// Shape 2 Drawing
        let shape2Path = UIBezierPath()
        shape2Path.move(to: CGPoint(x: 318.05, y: 197.6))
        shape2Path.addCurve(to: CGPoint(x: 374.79, y: 80.39), controlPoint1: CGPoint(x: 318.06, y: 151.91), controlPoint2: CGPoint(x: 338.96, y: 108.74))
        shape2Path.addCurve(to: CGPoint(x: 173.1, y: 96.44), controlPoint1: CGPoint(x: 313.66, y: 32.33), controlPoint2: CGPoint(x: 225.86, y: 39.31))
        shape2Path.addCurve(to: CGPoint(x: 173.1, y: 298.76), controlPoint1: CGPoint(x: 120.34, y: 153.56), controlPoint2: CGPoint(x: 120.34, y: 241.64))
        shape2Path.addCurve(to: CGPoint(x: 374.79, y: 314.81), controlPoint1: CGPoint(x: 225.86, y: 355.89), controlPoint2: CGPoint(x: 313.66, y: 362.87))
        shape2Path.addCurve(to: CGPoint(x: 318.05, y: 197.6), controlPoint1: CGPoint(x: 338.96, y: 286.46), controlPoint2: CGPoint(x: 318.06, y: 243.29))
        shape2Path.close()
        fillColor18.setFill()
        shape2Path.fill()


        //// Shape 3 Drawing
        let shape3Path = UIBezierPath()
        shape3Path.move(to: CGPoint(x: 616.26, y: 197.6))
        shape3Path.addCurve(to: CGPoint(x: 532.46, y: 331.66), controlPoint1: CGPoint(x: 616.3, y: 254.65), controlPoint2: CGPoint(x: 583.76, y: 306.71))
        shape3Path.addCurve(to: CGPoint(x: 375.26, y: 314.81), controlPoint1: CGPoint(x: 481.15, y: 356.61), controlPoint2: CGPoint(x: 420.11, y: 350.06))
        shape3Path.addCurve(to: CGPoint(x: 432, y: 197.6), controlPoint1: CGPoint(x: 411.1, y: 286.47), controlPoint2: CGPoint(x: 432, y: 243.29))
        shape3Path.addCurve(to: CGPoint(x: 375.26, y: 80.39), controlPoint1: CGPoint(x: 432, y: 151.91), controlPoint2: CGPoint(x: 411.1, y: 108.73))
        shape3Path.addCurve(to: CGPoint(x: 532.46, y: 63.54), controlPoint1: CGPoint(x: 420.11, y: 45.14), controlPoint2: CGPoint(x: 481.15, y: 38.59))
        shape3Path.addCurve(to: CGPoint(x: 616.26, y: 197.6), controlPoint1: CGPoint(x: 583.76, y: 88.49), controlPoint2: CGPoint(x: 616.3, y: 140.55))
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

        UIGraphicsBeginImageContextWithOptions(CGSize(width: 780, height: 500), false, 0)
            CreditCardIcons.drawAmex()

        Cache.imageOfAmex = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()

        return Cache.imageOfAmex!
    }

    @objc dynamic public class var imageOfDiners: UIImage {
        if Cache.imageOfDiners != nil {
            return Cache.imageOfDiners!
        }

        UIGraphicsBeginImageContextWithOptions(CGSize(width: 780, height: 500), false, 0)
            CreditCardIcons.drawDiners()

        Cache.imageOfDiners = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()

        return Cache.imageOfDiners!
    }

    @objc dynamic public class var imageOfDiscover: UIImage {
        if Cache.imageOfDiscover != nil {
            return Cache.imageOfDiscover!
        }

        UIGraphicsBeginImageContextWithOptions(CGSize(width: 780, height: 500), false, 0)
            CreditCardIcons.drawDiscover()

        Cache.imageOfDiscover = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()

        return Cache.imageOfDiscover!
    }

    @objc dynamic public class var imageOfUnknown: UIImage {
        if Cache.imageOfUnknown != nil {
            return Cache.imageOfUnknown!
        }

        UIGraphicsBeginImageContextWithOptions(CGSize(width: 780, height: 500), false, 0)
            CreditCardIcons.drawUnknown()

        Cache.imageOfUnknown = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()

        return Cache.imageOfUnknown!
    }

    @objc dynamic public class var imageOfJcb: UIImage {
        if Cache.imageOfJcb != nil {
            return Cache.imageOfJcb!
        }

        UIGraphicsBeginImageContextWithOptions(CGSize(width: 780, height: 500), false, 0)
            CreditCardIcons.drawJcb()

        Cache.imageOfJcb = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()

        return Cache.imageOfJcb!
    }

    @objc dynamic public class var imageOfVisa: UIImage {
        if Cache.imageOfVisa != nil {
            return Cache.imageOfVisa!
        }

        UIGraphicsBeginImageContextWithOptions(CGSize(width: 780, height: 500), false, 0)
            CreditCardIcons.drawVisa()

        Cache.imageOfVisa = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()

        return Cache.imageOfVisa!
    }

    @objc dynamic public class var imageOfMaestro: UIImage {
        if Cache.imageOfMaestro != nil {
            return Cache.imageOfMaestro!
        }

        UIGraphicsBeginImageContextWithOptions(CGSize(width: 750, height: 471), false, 0)
            CreditCardIcons.drawMaestro()

        Cache.imageOfMaestro = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()

        return Cache.imageOfMaestro!
    }

    @objc dynamic public class var imageOfMastercard: UIImage {
        if Cache.imageOfMastercard != nil {
            return Cache.imageOfMastercard!
        }

        UIGraphicsBeginImageContextWithOptions(CGSize(width: 750, height: 471), false, 0)
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




    @objc(CreditCardsResizingBehavior)
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
