import UIKit

public class SemiModalPresentationController: UIPresentationController {
    lazy fileprivate var dimmingView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(white: 0.0, alpha: 0.5)
        view.alpha = 0.0
        return view
    }()
    
    private(set) var height: CGFloat?
    private var allowDimBackgroundTapDismissal: Bool = true
    
    public override func presentationTransitionWillBegin() {
        guard let containerView = self.containerView else { return }
        
        containerView.insertSubview(self.dimmingView, at: 0)
        
        self.dimmingView.topAnchor.constraint(equalTo: containerView.topAnchor).isActive = true
        self.dimmingView.leftAnchor.constraint(equalTo: containerView.leftAnchor).isActive = true
        self.dimmingView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor).isActive = true
        self.dimmingView.rightAnchor.constraint(equalTo: containerView.rightAnchor).isActive = true
        let recognizer = UITapGestureRecognizer(target: self, action: #selector(handleTap(_:)))
        self.dimmingView.addGestureRecognizer(recognizer)
        
        
        guard let coordinator = presentedViewController.transitionCoordinator else {
            self.dimmingView.alpha = 1.0
            return
        }
        
        coordinator.animate(alongsideTransition: { _ in
            self.dimmingView.alpha = 1.0
        })
    }
    
    public override var shouldRemovePresentersView: Bool {
        return true
    }
    
    public override func dismissalTransitionWillBegin() {
        guard let coordinator = presentedViewController.transitionCoordinator else {
            dimmingView.alpha = 0.0
            return
        }
        
        coordinator.animate(alongsideTransition: { _ in
            self.dimmingView.alpha = 0.0
        })
    }
    
    public override func size(forChildContentContainer container: UIContentContainer, withParentContainerSize parentSize: CGSize) -> CGSize {
        var size = parentSize
        size.height = self.height ?? (size.height - 20)
        return size
    }
    
    public override var frameOfPresentedViewInContainerView: CGRect {
        guard let containerView = self.containerView else { return .zero }
        var frame: CGRect = .zero
        frame.size = size(forChildContentContainer: self.presentedViewController, withParentContainerSize: containerView.bounds.size)
        frame.origin.y = containerView.frame.height - frame.size.height
        return frame
    }
    
    public override func containerViewWillLayoutSubviews() {
        self.presentedView?.frame = self.frameOfPresentedViewInContainerView
    }
    
    @objc func handleTap(_ recognizer: UITapGestureRecognizer) {
        guard self.allowDimBackgroundTapDismissal else { return }
        self.presentingViewController.dismiss(animated: true)
    }
}

extension SemiModalPresentationController {
    public convenience init(height: CGFloat?, allowDimBackgroundTapDismissal: Bool = true, presentedViewController: UIViewController, presenting presentingViewController: UIViewController?) {
        self.init(presentedViewController: presentedViewController, presenting: presentingViewController)
        self.height = height
        self.allowDimBackgroundTapDismissal = allowDimBackgroundTapDismissal
    }
}
