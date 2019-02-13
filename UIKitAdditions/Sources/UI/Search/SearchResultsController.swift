import UIKit
import DataSource

public protocol SearchResults {
    var items: [Any] { get set }
    var didSelectItem: ((Any) -> Void)? { get set }
}

public protocol SearchResultsPaging {
    var enablePaging: Bool { get set }
    var page: Int { get set }
}

public class SearchResultsController: UIViewController, UITableViewDelegate, SearchResults, SearchResultsPaging {
    lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .plain)
        tableView.delegate = self
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()

    private var dataSource: DataSource?
    private var identifier: String = ""
    private var cellClass: AnyClass?

    public var enablePaging: Bool = false
    public var page: Int = 0

    public var didSelectItem: ((Any) -> Void)?
    public var items: [Any] = [] {
        didSet {
            self.dataSource?.items = self.items
            self.tableView.reloadData()
        }
    }

    public var contentInset: UIEdgeInsets {
        get { return self.tableView.contentInset }
        set { self.tableView.contentInset = newValue }
    }

    public weak var delegate: DataSourceDelegate?

    public override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    public override func viewDidLoad() {
        super.viewDidLoad()

        self.view.addSubview(self.tableView)
        self.tableView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        self.tableView.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
        self.tableView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        self.tableView.rightAnchor.constraint(equalTo: self.view.rightAnchor).isActive = true

        registerCell(with: self.identifier, cellClass: self.cellClass)
        self.tableView.reloadData()
    }

    public func registerCell(with identifier: String, cellClass: AnyClass?) {
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

    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        self.didSelectItem?(self.items[indexPath.row])
    }

    public func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        return UIView()
    }

    public func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 1
    }
}

extension SearchResultsController {
    public var contentInsetAdjustmentBehavior: UIScrollView.ContentInsetAdjustmentBehavior {
        get { return self.tableView.contentInsetAdjustmentBehavior }
        set { self.tableView.contentInsetAdjustmentBehavior = newValue }
    }
}
