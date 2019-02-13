import UIKit
import DataSource

class ListInputView: UIView, UITableViewDelegate {
    private var tableView: UITableView!
    private var dataSource: DataSource = DataSource(cellIdentifier: ListInputCell.identifier)

    var didSelectItem: ((String?) -> Void)?
    var items: [String] = [] {
        didSet {
            self.dataSource.items = self.items
            self.tableView.reloadData()
        }
    }

    var selectedItem: String? {
        didSet {
            if let selectedItem = self.selectedItem,
                let index = self.items.index(of: selectedItem),
                self.items.contains(selectedItem) {

                self.tableView.selectRow(at: IndexPath(row: index, section: 0), animated: true, scrollPosition: .top)
            }
        }
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }

    func commonInit() {
        self.tableView = UITableView(frame: .zero, style: .plain)
        addSubview(self.tableView)
        self.tableView.estimatedRowHeight = 54
        self.tableView.rowHeight = 54

        self.tableView.translatesAutoresizingMaskIntoConstraints = false
        self.tableView.anchorToSuperview()

        self.tableView.register(class: ListInputCell.self)
        self.tableView.dataSource = self.dataSource
        self.tableView.delegate = self
        self.tableView.reloadData()
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.didSelectItem?(self.items[indexPath.row])
    }
}

internal class ListInputCell: UITableViewCell, DataSourceConfigurable {
    fileprivate var itemLabel: UILabel!

    var title: String? {
        return itemLabel.text
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        commonInit()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        self.accessoryType = selected ? .checkmark : .none
    }

    func commonInit() {
        self.selectionStyle = .none

        self.itemLabel = UILabel()
        addSubview(self.itemLabel)
        self.itemLabel.numberOfLines = 0
        self.itemLabel.translatesAutoresizingMaskIntoConstraints = false
        self.itemLabel.anchorToSuperview(edgeInset: UIEdgeInsets(right: 20, left: 20))
    }

    func configure(_ data: Any?) {
        itemLabel.text = data as? String
    }
}
