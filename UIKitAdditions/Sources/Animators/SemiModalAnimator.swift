import UIKit

public class SemiModalAnimator: NSObject, Animator {
    public let duration: TimeInterval
    
    public var transform: CGAffineTransform
    public var isPresenting: Bool = true
    
    public init(duration: TimeInterval = 0.33, transform: CGAffineTransform = CGAffineTransform(scaleX: 0.94, y: 0.94)) {
        self.duration = duration
        self.transform = transform
    }
    
    public func present(_ transitionContext: UIViewControllerContextTransitioning) {
        let containerView = transitionContext.containerView
        let duration = transitionDuration(using: transitionContext)
        
        guard
            let fromVC = transitionContext.viewController(forKey: .from),
            let toVC = transitionContext.viewController(forKey: .to)
            else { transitionContext.completeTransition(true) ; return }
        
        var finalFrame: CGRect = .zero
        var initialFrame = finalFrame
    
        finalFrame = transitionContext.finalFrame(for: toVC)
        initialFrame = finalFrame
        initialFrame.origin.y = fromVC.view.frame.height
        
        containerView.addSubview(toVC.view)
        toVC.view.frame = initialFrame
        
        UIView.animate(withDuration: duration, delay: 0.0, usingSpringWithDamping: 0.8, initialSpringVelocity: 2, options: [.curveEaseInOut], animations: {
            fromVC.view.transform = self.transform
            toVC.view.frame = finalFrame
        }) { _ in
            transitionContext.completeTransition(true)
        }
    }
    
    public func dismiss(_ transitionContext: UIViewControllerContextTransitioning) {
        let containerView = transitionContext.containerView
        let duration = transitionDuration(using: transitionContext)
        
        guard
            let fromVC = transitionContext.viewController(forKey: .from),
            let toVC = transitionContext.viewController(forKey: .to)
            else { transitionContext.completeTransition(true) ; return }
        
        var finalFrame: CGRect = .zero
        var initialFrame = finalFrame
        
        finalFrame = transitionContext.finalFrame(for: fromVC)
        initialFrame = finalFrame
        initialFrame.origin.y = toVC.view.frame.height
        containerView.addSubview(fromVC.view)
        
        UIView.animate(withDuration: duration, delay: 0.0, usingSpringWithDamping: 0.8, initialSpringVelocity: 2, options: [.curveEaseInOut], animations: {
            toVC.view.transform = .identity
            fromVC.view.alpha = 0
            fromVC.view.frame = initialFrame
        }) { _ in
            transitionContext.completeTransition(true)
        }
    }
}

extension SemiModalAnimator {
    public func presentationController(forPresented presented: UIViewController, presenting: UIViewController?, source: UIViewController) -> UIPresentationController? {
        return SemiModalPresentationController(presentedViewController: presented, presenting: presenting)
    }
}

extension SemiModalAnimator {
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

extension SemiModalAnimator {
    public func animationControllerForPresentedController(presented: UIViewController, presentingController presenting: UIViewController, sourceController source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        self.isPresenting = true
        return self
    }
    
    public func animationControllerForDismissedController(dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        self.isPresenting = false
        return self
    }
}
