import UIKit

public class FadeInOutAnimator: NSObject, Animator {
    public let isOverlay: Bool
    public let duration: TimeInterval
    
    public var isPresenting: Bool = true
    
    public init(duration: TimeInterval = 0.33, isOverlay: Bool = false) {
        self.duration = duration
        self.isOverlay = isOverlay
    }
    
    public static func navigationController(duration: TimeInterval = 0.33, navigationController: UINavigationController, animationControllerForOperation operation: UINavigationController.Operation, fromViewController fromVC: UIViewController, toViewController toVC: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        let animator = FadeInOutAnimator(duration: duration)
        animator.isPresenting = operation == .push
        return animator
    }

    public func present(_ transitionContext: UIViewControllerContextTransitioning) {
        let containerView = transitionContext.containerView
        let fromVC = transitionContext.viewController(forKey: .from)!
        let toVC = transitionContext.viewController(forKey: .to)!
        let duration = transitionDuration(using: transitionContext)
            
        toVC.view.alpha = 0
        containerView.addSubview(toVC.view)
        toVC.view.frame = containerView.bounds

        toVC.beginAppearanceTransition(true, animated: true)
        fromVC.beginAppearanceTransition(false, animated: true)
        
        let animator = UIViewPropertyAnimator(duration: duration, curve: .easeInOut) {
            if !self.isOverlay {
                fromVC.view.alpha = 0
            }
            toVC.view.alpha = 1
        }
        
        animator.addCompletion { _ in
            toVC.endAppearanceTransition()
            fromVC.endAppearanceTransition()
            transitionContext.completeTransition(true)
        }
        
        animator.startAnimation()
    }
    
    public func dismiss(_ transitionContext: UIViewControllerContextTransitioning) {
        let containerView = transitionContext.containerView
        let fromVC = transitionContext.viewController(forKey: .from)!
        let toVC = transitionContext.viewController(forKey: .to)!
        let duration = transitionDuration(using: transitionContext)
        
        if !self.isOverlay {
            toVC.view.alpha = 0
            containerView.addSubview(toVC.view)
        }
        
        toVC.beginAppearanceTransition(true, animated: true)
        fromVC.beginAppearanceTransition(false, animated: true)
        
        let animator = UIViewPropertyAnimator(duration: duration, curve: .easeInOut) {
            fromVC.view.alpha = 0
            if !self.isOverlay {
                toVC.view.alpha = 1
            }
        }
        
        animator.addCompletion { _ in
            toVC.endAppearanceTransition()
            fromVC.endAppearanceTransition()
            transitionContext.completeTransition(true)
        }
        
        animator.startAnimation()
    }
}

extension FadeInOutAnimator {
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

extension FadeInOutAnimator {
    public func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        self.isPresenting = true
        return self
    }
    
    public func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        self.isPresenting = false
        return self
    }
}
