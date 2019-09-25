import UIKit
import DataSource

public class ListInputView: UIView, UITableViewDelegate {
    enum Section: String, CaseIterable {
        case main
    }
    
    private var tableView: UITableView!
    private lazy var dataSource: DataSource<Section, String> = {
        let d = DataSource<Section, String>(sections: Section.allCases) { tv, indexPath, string in
            let cell = tv.dequeueReusableCell(withIdentifier: ListInputCell.identifier, for: indexPath) as? ListInputCell
            cell?.title = string
            return cell
        }
        return d
    }()

    public var didSelectItem: ((String?) -> Void)?
    public var items: [String] = [] {
        didSet {
            dataSource.items[.main] = items
            tableView.reloadData()
        }
    }

    public var selectedItem: String? {
        didSet {
            if let selectedItem = self.selectedItem,
                let index = items.firstIndex(of: selectedItem),
                items.contains(selectedItem) {

                tableView.selectRow(at: IndexPath(row: index, section: 0), animated: true, scrollPosition: .top)
            }
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
        tableView = UITableView(frame: .zero, style: .plain)
        addSubview(tableView)
        tableView.estimatedRowHeight = 54
        tableView.rowHeight = 54

        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.anchorToSuperview()

        tableView.register(class: ListInputCell.self)
        tableView.dataSource = dataSource
        tableView.delegate = self
        tableView.reloadData()
    }

    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.didSelectItem?(items[indexPath.row])
    }
}

fileprivate class ListInputCell: UITableViewCell {
    private var itemLabel: UILabel!

    var title: String? {
        get { return itemLabel.text }
        set { itemLabel.text = newValue }
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
        accessoryType = selected ? .checkmark : .none
    }

    func commonInit() {
        selectionStyle = .none

        itemLabel = UILabel()
        addSubview(itemLabel)
        itemLabel.numberOfLines = 0
        itemLabel.translatesAutoresizingMaskIntoConstraints = false
        itemLabel.anchorToSuperview(edgeInset: UIEdgeInsets(right: 20, left: 20))
    }
}
