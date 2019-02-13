import UIKit
import SafariServices
import MessageUI

extension UIViewController {
    public typealias ImagePickerControllerDelegate = UIImagePickerControllerDelegate & UINavigationControllerDelegate

    public func showWebViewController(url: URL, completion: (() -> Void)? = nil) {
        let safariViewController = SFSafariViewController(url: url)
        let navigationController = UINavigationController(rootViewController: safariViewController)
        navigationController.setNavigationBarHidden(true, animated: false)
        safariViewController.modalPresentationStyle = .formSheet
        safariViewController.preferredBarTintColor = .black
        safariViewController.preferredControlTintColor = .white
        present(navigationController, animated: true, completion: completion)
    }

    public func showImagePickerOptions(delegate: ImagePickerControllerDelegate) {
        let actionSheetController = UIAlertController(title: "", message: "Choose how you want to edit photo", preferredStyle: .actionSheet)
        let photoAction = UIAlertAction(title: "Pick a photo", style: .default) { _ in
            self.showImagePickerViewController(.photoLibrary, delegate: delegate)
        }
        actionSheetController.addAction(photoAction)
        let cameraAction = UIAlertAction(title: "Use Camera", style: .default) { _ in
            self.showImagePickerViewController(.camera, delegate: delegate)
        }
        actionSheetController.addAction(cameraAction)
        actionSheetController.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
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
