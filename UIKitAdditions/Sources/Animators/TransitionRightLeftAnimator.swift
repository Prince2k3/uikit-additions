import UIKit

public class TransitionRightLeftAnimator: NSObject, Animator {
    public let duration: TimeInterval
    
    public var isPresenting: Bool = true
    
    public init(duration: TimeInterval = 0.55) {
        self.duration = duration
    }
    
    public static func navigationController(duration: TimeInterval = 0.55, navigationController: UINavigationController, animationControllerForOperation operation: UINavigationController.Operation, fromViewController fromVC: UIViewController, toViewController toVC: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        let animator = TransitionRightLeftAnimator(duration: duration)
        animator.isPresenting = operation == .push
        return animator
    }
    
    public func present(_ transitionContext: UIViewControllerContextTransitioning) {
        let containerView = transitionContext.containerView
        let fromVC = transitionContext.viewController(forKey: .from)!
        let toVC = transitionContext.viewController(forKey: .to)!
        let duration = transitionDuration(using: transitionContext)
        
        toVC.view.frame = CGRect(x: containerView.frame.width, y: 0, width: containerView.frame.width, height: containerView.frame.height)
        containerView.addSubview(toVC.view)
        
        fromVC.view.frame = CGRect(x: 0, y: 0, width: containerView.frame.width, height: containerView.frame.height)
        
        toVC.beginAppearanceTransition(true, animated: true)
        fromVC.beginAppearanceTransition(false, animated: true)
        UIView.animate(withDuration: duration, delay: 0, options: .curveEaseInOut, animations: {
            toVC.view.frame = CGRect(x: 0, y: 0, width: containerView.frame.width, height: containerView.frame.height)
            fromVC.view.frame = CGRect(x: -containerView.frame.width, y: 0, width: containerView.frame.width, height: containerView.frame.height)
        }) { _ in
            
            toVC.endAppearanceTransition()
            fromVC.endAppearanceTransition()
            transitionContext.completeTransition(true)
        }
    }
    
    public func dismiss(_ transitionContext: UIViewControllerContextTransitioning) {
        let containerView = transitionContext.containerView
        let fromVC = transitionContext.viewController(forKey: .from)!
        let toVC = transitionContext.viewController(forKey: .to)!
        let duration = transitionDuration(using: transitionContext)

        fromVC.view.frame = CGRect(x: 0, y: 0, width: containerView.frame.width, height: containerView.frame.height)
        containerView.addSubview(fromVC.view)
        
        toVC.view.frame = CGRect(x: -containerView.frame.width, y: 0, width: containerView.frame.width, height: containerView.frame.height)
        containerView.addSubview(toVC.view)
        
        toVC.beginAppearanceTransition(true, animated: true)
        fromVC.beginAppearanceTransition(false, animated: true)
        UIView.animate(withDuration: duration, delay: 0, options: [.curveEaseInOut], animations: {
            toVC.view.frame = CGRect(x: 0, y: 0, width: containerView.frame.width, height: containerView.frame.height)
            fromVC.view.frame = CGRect(x: containerView.frame.width, y: 0, width: containerView.frame.width, height: containerView.frame.height)
        }) { _ in
            toVC.endAppearanceTransition()
            fromVC.endAppearanceTransition()
            transitionContext.completeTransition(true)
        }
    }
}

extension TransitionRightLeftAnimator {
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

extension TransitionRightLeftAnimator {
    public func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        self.isPresenting = true
        return self
    }
    
    public func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        self.isPresenting = false
        return self
    }
}
