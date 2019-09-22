import UIKit

@objc public protocol Animator: class, UIViewControllerTransitioningDelegate, UIViewControllerAnimatedTransitioning {
    var isPresenting: Bool { get set }
    var duration: TimeInterval { get }
    
    func present(_ transitionContext: UIViewControllerContextTransitioning)
    func dismiss(_ transitionContext: UIViewControllerContextTransitioning)
}
