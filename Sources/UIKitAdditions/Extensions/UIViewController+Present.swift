import UIKit
import SafariServices
import MessageUI

extension UIViewController {
    public typealias ImagePickerControllerDelegate = UIImagePickerControllerDelegate & UINavigationControllerDelegate

    public func showWebViewController(url: URL, configuration: SFSafariViewController.Configuration = .init(), barTintColor: UIColor = .black, controlTintColor: UIColor = .white, modalPresentationStyle: UIModalPresentationStyle = .formSheet, completion: (() -> Void)? = nil) {
        let safariViewController = SFSafariViewController(url: url, configuration: configuration)
        let navigationController = UINavigationController(rootViewController: safariViewController)
        navigationController.setNavigationBarHidden(true, animated: false)
        safariViewController.modalPresentationStyle = modalPresentationStyle
        safariViewController.preferredBarTintColor = barTintColor
        safariViewController.preferredControlTintColor = controlTintColor
        present(navigationController, animated: true, completion: completion)
    }

    public func showImagePickerOptions(delegate: ImagePickerControllerDelegate) {
        let actionSheetController = UIAlertController(title: "", message: "Choose how you want to edit photo".localized(), preferredStyle: .actionSheet)
        let photoAction = UIAlertAction(title: "Pick a photo".localized(), style: .default) { _ in
            self.showImagePickerViewController(.photoLibrary, delegate: delegate)
        }
        actionSheetController.addAction(photoAction)
        let cameraAction = UIAlertAction(title: "Use Camera".localized(), style: .default) { _ in
            self.showImagePickerViewController(.camera, delegate: delegate)
        }
        actionSheetController.addAction(cameraAction)
        actionSheetController.addAction(UIAlertAction(title: "Cancel".localized(), style: .cancel, handler: nil))
        present(actionSheetController, animated: true, completion: nil)
    }

    private func showImagePickerViewController(_ sourceType: UIImagePickerController.SourceType, delegate: ImagePickerControllerDelegate) {
        let imagePickerViewController = UIImagePickerController()
        imagePickerViewController.sourceType = sourceType
        if sourceType == .camera {
            imagePickerViewController.cameraDevice = .front
        }

        imagePickerViewController.delegate = delegate
        present(imagePickerViewController, animated: true, completion: nil)
    }
}
