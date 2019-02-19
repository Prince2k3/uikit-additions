//
//  Animator.swift
//  UIKitAdditions
//
//  Created by Prince Ugwuh on 2/19/19.
//  Copyright © 2019 Prince Ugwuh. All rights reserved.
//

import Foundation

public protocol Animator: class, UIViewControllerTransitioningDelegate, UIViewControllerAnimatedTransitioning {
    var isPresenting: Bool { get set }
    var duration: TimeInterval { get }
    
    func present(_ transitionContext: UIViewControllerContextTransitioning)
    func dismiss(_ transitionContext: UIViewControllerContextTransitioning)
}
