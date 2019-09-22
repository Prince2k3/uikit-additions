import UIKit

public class MonthYearInputView: UIPickerView {
    lazy var calendar: Calendar = {
        return Calendar(identifier: .gregorian)
    }()

    public var valueDidChange: ((Int, Int) -> Void)?
    public var months: [String] = []
    public var years: [Int] = []
    public var month: Int = 0 {
        didSet {
            selectRow(self.month - 1, inComponent: 0, animated: false)
        }
    }

    public var year: Int = 0 {
        didSet {
            guard let index = self.years.firstIndex(of: self.year) else { return }
            selectRow(index, inComponent: 1, animated: true)
        }
    }

    public override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }

    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }

    func commonInit() {
        self.delegate = self
        self.dataSource = self

        let year = self.calendar.component(.year, from: Date())
        self.years = (0...20).map { year + $0 }
        self.months = (0...11).map { DateFormatter().monthSymbols[$0].capitalized }

        let currentMonth = self.calendar.component(.month, from: Date())
        self.selectRow(currentMonth - 1, inComponent: 0, animated: false)
    }
}

extension MonthYearInputView: UIPickerViewDataSource {
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }

    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        switch component {
        case 0:
            return self.months.count
        case 1:
            return self.years.count
        default:
            return 0
        }
    }

    public func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        switch component {
        case 0:
            return self.months[row]
        case 1:
            return "\(self.years[row])"
        default:
            return nil
        }
    }
}

extension MonthYearInputView: UIPickerViewDelegate {
    public func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let month = self.selectedRow(inComponent: 0) + 1
        let year = self.years[self.selectedRow(inComponent: 1)]

        self.valueDidChange?(month, year)
        self.month = month
        self.year = year
    }
}
