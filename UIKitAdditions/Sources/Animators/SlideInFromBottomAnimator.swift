import UIKit

public class SlideInFromBottomAnimator: NSObject, Animator {
    public let duration: TimeInterval
    
    public var isPresenting: Bool = true
    
    public init(duration: TimeInterval = 0.55) {
        self.duration = duration
    }
    
    public static func navigationController(navigationController: UINavigationController, animationControllerForOperation operation: UINavigationController.Operation, fromViewController fromVC: UIViewController, toViewController toVC: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        let animator = SlideInFromBottomAnimator()
        animator.isPresenting = operation == .push
        return animator
    }
    
    public func present(_ transitionContext: UIViewControllerContextTransitioning) {
        let containerView = transitionContext.containerView
        let fromVC = transitionContext.viewController(forKey: .from)
        let toVC = transitionContext.viewController(forKey: .to)
        let duration = transitionDuration(using: transitionContext)
        
        
        toVC!.view.frame = CGRect(x: 0, y: containerView.frame.height, width: containerView.frame.width, height: containerView.frame.height)
        containerView.addSubview(toVC!.view)
        
        UIView.animate(withDuration: duration, delay: 0, options: .curveEaseInOut, animations: {
            fromVC!.view.alpha = 0
            toVC!.view.frame = CGRect(x: 0, y: 0, width: containerView.frame.width, height: containerView.frame.height)

        }) { _ in
            
            transitionContext.completeTransition(true)
        }
    }
    
    public func dismiss(_ transitionContext: UIViewControllerContextTransitioning) {
        let containerView = transitionContext.containerView
        let fromVC = transitionContext.viewController(forKey: .from)
        let toVC = transitionContext.viewController(forKey: .to)
        let duration = transitionDuration(using: transitionContext)
        

        containerView.addSubview(toVC!.view)
        containerView.addSubview(fromVC!.view)

        UIView.animate(withDuration: duration, delay: 0, options: .curveEaseInOut, animations: {
            fromVC!.view.frame = CGRect(x: 0, y: containerView.frame.height, width: containerView.frame.width, height: containerView.frame.height)
            toVC!.view.alpha = 1
        }) { _ in
           
            transitionContext.completeTransition(true)
        }
    }
}

extension SlideInFromBottomAnimator {
    public func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return transitionContext.flatMap { $0.isAnimated ? self.duration : 0 } ?? self.duration
    }
    
    public func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        if self.isPresenting {
            present(transitionContext)
        } else {
            dismiss(transitionContext)
        }
    }
}

extension SlideInFromBottomAnimator {
    public func animationControllerForPresentedController(presented: UIViewController, presentingController presenting: UIViewController, sourceController source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        self.isPresenting = true
        return self
    }
    
    public func animationControllerForDismissedController(dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        self.isPresenting = false
        return self
    }
}
