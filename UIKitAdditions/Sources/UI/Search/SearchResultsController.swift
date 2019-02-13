import UIKit
import DataSource

protocol SearchResults {
    var items: [Any] { get set }
    var didSelectItem: ((Any) -> Void)? { get set }
}

protocol SearchResultsPaging {
    var enablePaging: Bool { get set }
    var page: Int { get set }
}

class SearchResultsController: UIViewController, UITableViewDelegate, SearchResults, SearchResultsPaging {
    lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .plain)
        tableView.delegate = self
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()

    private var dataSource: DataSource?
    private var identifier: String = ""
    private var cellClass: AnyClass?

    var enablePaging: Bool = false
    var page: Int = 0

    var didSelectItem: ((Any) -> Void)?
    var items: [Any] = [] {
        didSet {
            self.dataSource?.items = self.items
            self.tableView.reloadData()
        }
    }

    var contentInset: UIEdgeInsets {
        get { return self.tableView.contentInset }
        set { self.tableView.contentInset = newValue }
    }

    weak var delegate: DataSourceDelegate?

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.addSubview(self.tableView)
        self.tableView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        self.tableView.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
        self.tableView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        self.tableView.rightAnchor.constraint(equalTo: self.view.rightAnchor).isActive = true

        registerCell(with: self.identifier, cellClass: self.cellClass)
        self.tableView.reloadData()
    }

    func registerCell(with identifier: String, cellClass: AnyClass?) {
        self.identifier = identifier
        self.cellClass = cellClass

        guard !identifier.isEmpty else { return }

        if let cellClass = cellClass {
            self.tableView.register(cellClass, forCellReuseIdentifier: identifier)
        } else {
            self.tableView.register(UINib(nibName: identifier, bundle: nil), forCellReuseIdentifier: identifier)
        }

        self.dataSource = DataSource(cellIdentifier: identifier)
        self.dataSource?.delegate = self.delegate
        self.tableView.dataSource = self.dataSource
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        self.didSelectItem?(self.items[indexPath.row])
    }

    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        return UIView()
    }

    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 1
    }
}

@available(iOS 11.0, *)
extension SearchResultsController {
    var contentInsetAdjustmentBehavior: UIScrollView.ContentInsetAdjustmentBehavior {
        get { return self.tableView.contentInsetAdjustmentBehavior }
        set { self.tableView.contentInsetAdjustmentBehavior = newValue }
    }
}
