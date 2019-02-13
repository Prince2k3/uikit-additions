import UIKit

class InputAccessoryView: NibLoadedView {
    enum Kind {
        case form, button
    }
    
    @IBOutlet private var formView: UIView!
    @IBOutlet private var buttonView: UIView!
    @IBOutlet private var previousButton: UIButton!
    @IBOutlet private var nextButton: UIButton!
    @IBOutlet private var doneButton: UIButton!
    @IBOutlet private var button: UIButton!

    weak var view: UIView?
    
    var moveToPreviousHandler: ((UIView?) -> Void)?
    var moveToNextHandler: ((UIView?) -> Void)?
    var doneHandler: ((UIView?) -> Void)?
    var buttonActionHandler: (() -> Void)?
    var inputType: InputAccessoryView.Kind = .form {
        didSet {
            self.buttonView.isHidden = self.inputType != .button
            self.formView.isHidden = self.inputType != .form
        }
    }

    var buttonBackgroundColor: UIColor? {
        didSet {
            self.button.setBackgroundColor(self.buttonBackgroundColor, for: .normal)
        }
    }
    
    var buttonTitle: String = "Next" {
        didSet {
            self.button.setTitle(self.buttonTitle, for: .normal)
        }
    }
    
    var formDoneTitle: String {
        get { return self.doneButton?.titleLabel?.text ?? "" }
        set { self.doneButton.setTitle(newValue, for: .normal) }
    }

    var isPreviousButtonEnabled: Bool = false {
        didSet {
            previousButton?.isEnabled = self.isPreviousButtonEnabled
            previousButton?.alpha = self.isPreviousButtonEnabled ? 1 : 0.4
        }
    }

    var isNextButtonEnabled: Bool = false {
        didSet {
            self.nextButton?.isEnabled = self.isNextButtonEnabled
            self.nextButton?.alpha = self.isNextButtonEnabled ? 1 : 0.4
        }
    }

    var isNextButtonHidden: Bool = false {
        didSet {
            self.nextButton.isHidden = self.isNextButtonHidden
        }
    }

    var isPreviousButtonHidden: Bool = false {
        didSet {
            self.previousButton.isHidden = self.isPreviousButtonHidden
        }
    }
}

extension InputAccessoryView {
    @IBAction func previousButtonAction(_ button: UIButton) {
        self.moveToPreviousHandler?(self.view)
    }
    
    @IBAction func nextButtonAction(_ button: UIButton) {
        self.moveToNextHandler?(self.view)
    }
    
    @IBAction func doneButtonAction(_ button: UIButton) {
        self.doneHandler?(self.view)
    }
    
    @IBAction func buttonAction() {
        self.buttonActionHandler?()
    }
}
