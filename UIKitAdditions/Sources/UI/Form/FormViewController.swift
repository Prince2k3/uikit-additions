import UIKit
import SwiftAdditions
import SwiftDate

protocol FormViewControllerDelegate: class {
    func customizeMonthYearInputView(_ inputView: MonthYearInputView, for textField: UITextField)
    func customizeDateInputView(_ inputView: UIDatePicker, for textField: UITextField)
    func customizeListInputView(_ inputView: ListInputView, for textField: UITextField)
}

/// This class is meant to be subclassed only

class FormViewController: UITableViewController {
    enum FormEntry: Int { // tag textfields in storyboard with these numbers
        case `default` = 0, state = 10, country = 20, date = 30, monthYear = 40, list = 50
    }

    enum FormState {
        case none, editing, saving
    }

    @IBOutlet private var textFields: [TextField]! {
        didSet {
            self.textFields.forEach {
                $0.addTarget(self, action: #selector(textFieldDidChange), for: .editingChanged)
                $0.addTarget(self, action: #selector(textFieldDidBeginEditing), for: .editingDidBegin)
                $0.addTarget(self, action: #selector(textFieldDidEndEditing), for: .editingDidEnd)
                $0.addTarget(self, action: #selector(textFieldDidReturn), for: .editingDidEndOnExit)
            }
        }
    }

    private let textFieldInputAccessoryView: InputAccessoryView = InputAccessoryView()
    private var hideRows: Bool = false
    private var isCountryUS = true

    weak var delegate: FormViewControllerDelegate?
    
    var state: FormState = .none {
        didSet {
            formStateDidChange()
        }
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return self.hideRows ? 0 : super.numberOfSections(in: tableView)
    }

    override var inputAccessoryView: UIView? {
        self.textFieldInputAccessoryView.formDoneTitle = "Done"
        self.textFieldInputAccessoryView.doneHandler = { textField in
            self.view.endEditing(true)
        }

        self.textFieldInputAccessoryView.moveToNextHandler = { current in
            guard
                let current = current as? TextField,
                let index = self.textFields.index(of: current)
                else { return }

            if (index + 1) < self.textFields.count {
                let textField = self.textFields[index + 1]
                textField.becomeFirstResponder()
            } else {
                let textField = self.textFields[0]
                textField.becomeFirstResponder()
            }
        }

        self.textFieldInputAccessoryView.moveToPreviousHandler = { current in
            guard
                let current = current as? TextField,
                let index = self.textFields.index(of: current)
                else { return }

            if (index - 1) > -1 {
                let textField = self.textFields[index - 1]
                textField.becomeFirstResponder()
            } else {
                let textField = self.textFields[self.textFields.count - 1]
                textField.becomeFirstResponder()
            }
        }

        return self.textFieldInputAccessoryView
    }

    func formStateDidChange() {
        /* to be overriden */
    }
    
    func handleFormSubmit(_ textField: UITextField) {
        /* to be overriden */
    }

    func isEntriesValid() -> Bool {
        return self.textFields.filter { !$0.validate() }.isEmpty
    }

    private func updateInputView(_ textField: UITextField) {
        guard let entry = FormEntry(rawValue: textField.tag) else { return }
        
        self.textFieldInputAccessoryView.inputType = .form
        self.textFieldInputAccessoryView.view = textField
        
        switch entry {
        case .state where self.isCountryUS:
            let states = ResourceUtils.states.map { $0.name }.sorted()
            listInputView(for: textField, items: states)
            textField.placeholder = "State"
        case .state where !self.isCountryUS:
            textField.placeholder = "Province/Region"
            textField.inputView = nil
        case .country:
            var countries = ResourceUtils.countries.map { $0.region }.sorted()
            countries.insert("United States", at: 0)
            listInputView(for: textField, items: countries)
        case .date:
            dateInputView(for: textField)
        case .monthYear:
            monthYearInputView(for: textField)
        case .list:
            listInputView(for: textField)
        default:
            textField.inputView = nil
        }
    }

    private func checkIfCountryIsUS(_ textField: UITextField) {
        guard textField.tag == FormEntry.country.rawValue else { return }
        self.isCountryUS = textField.text?.lowercased() == "united states"
        
        self.textFields.forEach {
            if $0.tag == FormEntry.state.rawValue {
                $0.placeholder = self.isCountryUS ? "State" : "Province/Region"
            }
        }
    }
}

extension FormViewController {
    @objc func textFieldDidChange(_ sender: UITextField) {
        self.state = .editing
    }

    @objc func textFieldDidBeginEditing(_ textField: UITextField) {
        updateInputView(textField)
    }

    @objc func textFieldDidEndEditing(_ textField: UITextField) {
        /* to be overriden, if needed */
    }

    @objc func textFieldDidReturn(_ textField: UITextField) {
        guard
            let current = textField as? TextField,
            let index = self.textFields.index(of: current)
            else { return }
        
        if (index + 1) < self.textFields.count {
            let textField = self.textFields[index + 1]
            textField.becomeFirstResponder()
        } else if textField.returnKeyType == .done || textField.returnKeyType == .send || textField.returnKeyType == .go {
            handleFormSubmit(textField)
        } else if textField.returnKeyType == .default {
            textField.resignFirstResponder()
        } else {
            let textField = self.textFields[0]
            textField.becomeFirstResponder()
        }
    }
}

extension FormViewController {
    private func listInputView(for textField: UITextField, items: [String] = []) {
        let listInputView = ListInputView(frame: CGRect(width: self.view.bounds.width, height: 232))
        listInputView.items = items
        textField.inputView = listInputView
        
        if let entry = FormEntry(rawValue: textField.tag), entry == .list {
            self.delegate?.customizeListInputView(listInputView, for: textField)
        }
        
        listInputView.didSelectItem = { value in
            textField.text = value
            self.state = .editing
            self.textFieldDidChange(textField)
            self.checkIfCountryIsUS(textField)
        }
    }

    private func dateInputView(for textField: UITextField) {
        let datePickerView = UIDatePicker()
        datePickerView.datePickerMode = .date
        datePickerView.minuteInterval = 30
        datePickerView.backgroundColor = .white
        textField.inputView = datePickerView
        self.delegate?.customizeDateInputView(datePickerView, for: textField)
        datePickerView.addTarget(self, action: #selector(dateValueChanged(_:)), for: .valueChanged)
    }

    private func monthYearInputView(for textField: UITextField) {
        let monthYearPickerView = MonthYearInputView()
        textField.inputView = monthYearPickerView
        self.delegate?.customizeMonthYearInputView(monthYearPickerView, for: textField)
        
        monthYearPickerView.valueDidChange = { month, year in
            textField.text = String(format: "%02d/%d", month, year)
            self.state = .editing
            self.textFieldDidChange(textField)
        }
    }

    @objc private func dateValueChanged(_ datePickerView: UIDatePicker) {
        guard let inputAccessoryView = self.inputAccessoryView as? InputAccessoryView,
            let textField = inputAccessoryView.view as? UITextField else { return }

        textField.text = datePickerView.date.toString(.custom(.defaultDateFormat))

        self.state = .editing
        self.textFieldDidChange(textField)
    }
}
