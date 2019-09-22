import UIKit

public class InputAccessoryView: NibLoadedView {
    public enum Kind {
        case form, button
    }
    
    @IBOutlet private var formView: UIView!
    @IBOutlet private var buttonView: UIView!
    @IBOutlet private var previousButton: UIButton!
    @IBOutlet private var nextButton: UIButton!
    @IBOutlet private var doneButton: UIButton!
    @IBOutlet private var button: UIButton!

    public weak var view: UIView?
    
    public var moveToPreviousHandler: ((UIView?) -> Void)?
    public var moveToNextHandler: ((UIView?) -> Void)?
    public var doneHandler: ((UIView?) -> Void)?
    public var buttonActionHandler: (() -> Void)?
    public var inputType: InputAccessoryView.Kind = .form {
        didSet {
            self.buttonView.isHidden = self.inputType != .button
            self.formView.isHidden = self.inputType != .form
        }
    }

    public var buttonBackgroundColor: UIColor? {
        didSet {
            self.button.setBackgroundColor(self.buttonBackgroundColor, for: .normal)
        }
    }
    
    public var buttonTitle: String = "Next" {
        didSet {
            self.button.setTitle(self.buttonTitle, for: .normal)
        }
    }
    
    public var formDoneTitle: String {
        get { return self.doneButton?.titleLabel?.text ?? "" }
        set { self.doneButton.setTitle(newValue, for: .normal) }
    }

    public var isPreviousButtonEnabled: Bool = false {
        didSet {
            previousButton?.isEnabled = self.isPreviousButtonEnabled
            previousButton?.alpha = self.isPreviousButtonEnabled ? 1 : 0.4
        }
    }

    public var isNextButtonEnabled: Bool = false {
        didSet {
            self.nextButton?.isEnabled = self.isNextButtonEnabled
            self.nextButton?.alpha = self.isNextButtonEnabled ? 1 : 0.4
        }
    }

    public var isNextButtonHidden: Bool = false {
        didSet {
            self.nextButton.isHidden = self.isNextButtonHidden
        }
    }

    public var isPreviousButtonHidden: Bool = false {
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
