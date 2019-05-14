import UIKit

public class SemiModalAnimator: NSObject, Animator {
    public let duration: TimeInterval
    
    public var transform: CGAffineTransform
    public var isPresenting: Bool = true
    private(set) var height: CGFloat?
    private(set) var allowDimBackgroundTapDismissal: Bool
    private(set) var useSpringingAnimation: Bool
    
    public init(height: CGFloat? = nil, allowDimBackgroundTapDismissal: Bool = true, useSpringingAnimation: Bool = true, duration: TimeInterval = 0.4, transform: CGAffineTransform = CGAffineTransform(scaleX: 0.94, y: 0.94)) {
        self.duration = duration
        self.transform = transform
        self.height = height
        self.useSpringingAnimation = useSpringingAnimation
        self.allowDimBackgroundTapDismissal = allowDimBackgroundTapDismissal
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
        
        toVC.beginAppearanceTransition(true, animated: true)
        fromVC.beginAppearanceTransition(false, animated: true)
        
        let animator = UIViewPropertyAnimator(duration: duration, dampingRatio: self.useSpringingAnimation ? 0.8 : 0.0) {
            fromVC.view.transform = self.transform
            toVC.view.frame = finalFrame
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
        
        toVC.beginAppearanceTransition(true, animated: true)
        fromVC.beginAppearanceTransition(false, animated: true)
        
        let animator = UIViewPropertyAnimator(duration: duration, dampingRatio: self.useSpringingAnimation ? 0.8  : 0.0) {
            toVC.view.transform = .identity
            fromVC.view.frame = initialFrame
        }
        
        animator.addCompletion { _ in
            toVC.endAppearanceTransition()
            fromVC.endAppearanceTransition()
            transitionContext.completeTransition(true)
        }
        
        animator.startAnimation()
    }
}

extension SemiModalAnimator {
    public func presentationController(forPresented presented: UIViewController, presenting: UIViewController?, source: UIViewController) -> UIPresentationController? {
        return SemiModalPresentationController(height: self.height, allowDimBackgroundTapDismissal: self.allowDimBackgroundTapDismissal, presentedViewController: presented, presenting: presenting)
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
    public func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        self.isPresenting = true
        return self
    }
    
    public func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        self.isPresenting = false
        return self
    }
}
