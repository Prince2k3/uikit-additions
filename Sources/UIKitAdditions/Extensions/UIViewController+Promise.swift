//
//  UIViewController+Alert+PromiseKit.swift
//  Tradelytics
//
//  Created by Prince Ugwuh on 9/19/17.
//  Copyright © 2017 Alerting Options, LLC. All rights reserved.
//

import UIKit
import PromiseKit

extension UIViewController {
    @discardableResult
    public func presentAlert(title: String, message: String, buttonTitles: [String] = ["OK".localized()]) -> Guarantee<UIAlertAction> {
        return Guarantee { fulfill in
            self.presentAlert(title: title, message: message, buttonTitles: buttonTitles) { action in
                fulfill(action)
            }
        }
    }
}

extension UIApplication {
    @discardableResult
    public static func presentAlert(title: String, message: String, buttonTitles: [String] = ["OK".localized()]) -> Guarantee<UIAlertAction> {
        return Guarantee { fulfill in
            guard
                let rootViewController = self.shared.keyWindow?.rootViewController
                else { fatalError("No key window to present alert") }

            rootViewController.presentAlert(title: title, message: message, buttonTitles: buttonTitles) { action in
                fulfill(action)
            }
        }
    }
}
