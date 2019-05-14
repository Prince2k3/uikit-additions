import UIKit

public class ScaleInOutAnimator: NSObject, Animator {
    public let duration: TimeInterval
    
    public var isPresenting: Bool = true
    
    public init(duration: TimeInterval = 0.35) {
        self.duration = duration
    }
    
    public static func navigationController(duration: TimeInterval = 0.35, navigationController: UINavigationController, animationControllerForOperation operation: UINavigationController.Operation, fromViewController fromVC: UIViewController, toViewController toVC: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        let animator = ScaleInOutAnimator(duration: duration)
        animator.isPresenting = operation == .push
        return animator
    }
    
    public func present(_ transitionContext: UIViewControllerContextTransitioning) {
        let containerView = transitionContext.containerView
        let fromVC = transitionContext.viewController(forKey: .from)!
        let toVC = transitionContext.viewController(forKey: .to)!
        let duration = transitionDuration(using: transitionContext)
            
        toVC.view.transform = CGAffineTransform(scaleX: 0.2, y: 0.2)
        toVC.view.alpha = 0
        containerView.addSubview(toVC.view)
        
        toVC.beginAppearanceTransition(true, animated: true)
        UIView.animate(withDuration: duration, delay: 0, options: .curveEaseInOut, animations: {
            fromVC.view.transform = CGAffineTransform(scaleX: 2, y: 2)
            fromVC.view.alpha = 0

            toVC.view.transform = CGAffineTransform(scaleX: 1, y: 1)
            toVC.view.alpha = 1
        }) { _ in
            fromVC.view.alpha = 1
            toVC.view.alpha = 1
            
            fromVC.view.transform = .identity
            toVC.view.transform = .identity
            
            toVC.endAppearanceTransition()
            transitionContext.completeTransition(true)
        }
    }
    
    public func dismiss(_ transitionContext: UIViewControllerContextTransitioning) {
        let containerView = transitionContext.containerView
        let fromVC = transitionContext.viewController(forKey: .from)!
        let toVC = transitionContext.viewController(forKey: .to)!
        let duration = transitionDuration(using: transitionContext)
            
        toVC.view.transform = CGAffineTransform(scaleX: 2, y: 2)
        toVC.view.alpha = 0
        containerView.addSubview(toVC.view)
        
        fromVC.beginAppearanceTransition(false, animated: true)
        UIView.animate(withDuration: duration, delay: 0, options: .curveEaseInOut, animations: {
            fromVC.view.transform = CGAffineTransform(scaleX: 0.4, y: 0.4)
            fromVC.view.alpha = 0
            
            toVC.view.transform = CGAffineTransform(scaleX: 1, y: 1)
            toVC.view.alpha = 1
        }) { _ in
            fromVC.view.alpha = 1
            toVC.view.alpha = 1

            fromVC.view.transform = .identity
            toVC.view.transform = .identity
            
            fromVC.endAppearanceTransition()
            transitionContext.completeTransition(true)
        }
    }
}

extension ScaleInOutAnimator {
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

extension ScaleInOutAnimator {
    public func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        self.isPresenting = true
        return self
    }
    
    public func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        self.isPresenting = false
        return self
    }
}
