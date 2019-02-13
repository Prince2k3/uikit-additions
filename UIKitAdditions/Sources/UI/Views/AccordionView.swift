import UIKit

protocol AccordionSectionDataSource: Identifiable {
    func configure(_ data: Any?)
}

struct AccordionSectionItem {
    typealias AccordionSection = UITableViewCell & AccordionSectionDataSource
    private(set) var cellClass: UITableViewCell.Type
    private(set) var bundle: Bundle?
    private(set) var isNib: Bool
    private(set) var data: Any?
    private(set) var viewHandler: ((AccordionSectionItem) -> UIView)?

    init<T: AccordionSection>(nib cls: T.Type, data: Any?, bundle: Bundle? = nil, viewHandler: ((AccordionSectionItem) -> UIView)? = nil) {
        self.isNib = true
        self.cellClass = cls
        self.data = data
        self.bundle = bundle
        self.viewHandler = viewHandler
    }

    init<T: AccordionSection>(`class` cls: T.Type, data: Any?, viewHandler: ((AccordionSectionItem) -> UIView)? = nil) {
        self.isNib = false
        self.cellClass = cls
        self.data = data
        self.viewHandler = viewHandler
    }
}

class AccordionView: UIView {
    private(set) var sections: [AccordionSectionItem] = []
    private var registeredIdentifiers: [String] = []

    private lazy var tableView: UITableView = {
        let view = UITableView(frame: .zero, style: .grouped)
        view.backgroundView = nil
        view.separatorInset = .zero
        view.contentInset = .zero
        view.contentOffset = .zero
        view.estimatedRowHeight = 44
        view.rowHeight = UITableView.automaticDimension
        view.translatesAutoresizingMaskIntoConstraints = false
        view.register(class: UITableViewCell.self)
        return view
    }()

    var shouldSelectSection: ((IndexPath) -> Bool)?
    var didSelectSection: ((IndexPath) -> Void)?
    var didExpandSection: ((IndexPath) -> Void)?
    var didCollapseSection: (() -> Void)?

    var expandedIndexPath: IndexPath?
    var selectedIndexPath: IndexPath? {
        guard let expandedIndexPath = self.expandedIndexPath else { return nil }
        return IndexPath(row: expandedIndexPath.row - 1, section: expandedIndexPath.section)
    }

    var expandedView: UIView? {
        guard let expandedIndexPath = self.expandedIndexPath,
              let cell = self.tableView.cellForRow(at: expandedIndexPath) else { return nil }
        return cell.contentView.subviews.first
    }

    var accordionHeaderView: UIView? {
        get { return self.tableView.tableHeaderView }
        set { self.tableView.tableHeaderView = newValue }
    }

    var accordionFooterView: UIView? {
        get { return self.tableView.tableFooterView }
        set {  self.tableView.tableFooterView = newValue }
    }

    var separatorColor: UIColor? {
        get { return self.tableView.separatorColor }
        set { self.tableView.separatorColor = newValue }
    }

    var separatorInset: UIEdgeInsets {
        get { return self.tableView.separatorInset }
        set { self.tableView.separatorInset = newValue }
    }

    var contentInset: UIEdgeInsets {
        get { return self.tableView.contentInset }
        set { self.tableView.contentInset = newValue }
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        commonInit()
    }

    func commonInit() {
        self.backgroundColor = .white
        self.tableView.backgroundColor = .clear
        self.tableView.dataSource = self
        self.tableView.delegate = self
        addSubview(self.tableView)
        self.tableView.anchorToSuperview()
    }

    func addSection(_ section: AccordionSectionItem) {
        self.sections.append(section)
        if !self.registeredIdentifiers.contains(section.cellClass.identifier) {
            if section.isNib {
                self.tableView.register(nib: section.cellClass, bundle: section.bundle)
            } else {
                self.tableView.register(class: section.cellClass)
            }
            self.registeredIdentifiers.append(section.cellClass.identifier)
        }
    }

    func reloadAll() {
        self.tableView.reloadData()
    }

    func refreshSection(alsoReloadExpanded: Bool = true, animated: Bool = true) {
        var reloadIndexPaths: [IndexPath] = []
        if let selectedIndexPath = self.selectedIndexPath {
            reloadIndexPaths.append(selectedIndexPath)
        }

        if let expandedIndexPath = self.expandedIndexPath, alsoReloadExpanded {
            reloadIndexPaths.append(expandedIndexPath)
        }

        if !reloadIndexPaths.isEmpty {
            self.tableView.reloadRows(at: reloadIndexPaths, with: .none)
            self.tableView.selectRow(at: selectedIndexPath, animated: animated, scrollPosition: .none)
        }
    }

    func selectSection(_ section: Int, animated: Bool = true) {
        let indexPath = IndexPath(row: section, section: 0)
        self.tableView.selectRow(at: indexPath, animated: animated, scrollPosition: .top)
        tableView(self.tableView, didSelectRowAt: indexPath)
    }

    func collapseSelectedSection(animated: Bool = true, completion: (() -> Void)? = nil) {
        if let selectedIndexPath = self.selectedIndexPath {
            collapseSection(selectedIndexPath, animated: animated, completion: completion)
        } else if let selectedIndexPath = self.tableView.indexPathForSelectedRow {
            collapseSection(selectedIndexPath, animated: animated, completion: completion)
        }
    }

    func collapseSection(_ indexPath: IndexPath, animated: Bool = true, completion: (() -> Void)? = nil) {
        guard let expandedIndexPath = self.expandedIndexPath else {
            self.tableView.deselectRow(at: indexPath, animated: animated)
            return
        }
        self.tableView.beginUpdates()
        self.tableView.deleteRows(at: [expandedIndexPath], with: .fade)
        self.expandedIndexPath = nil
        self.tableView.endUpdates()
        self.tableView.deselectRow(at: indexPath, animated: animated)
        self.didCollapseSection?()
        completion?()
    }

    func expandSelectedSection(animated: Bool = true) {
        guard let selectedIndexPath = self.selectedIndexPath else { return }
        expandSection(selectedIndexPath, animated: animated)
    }

    func expandSection(_ indexPath: IndexPath, animated: Bool = true) {
        let section = self.expandedIndexPath == nil ? self.sections[indexPath.row] : self.sections[max(0, indexPath.row - 1)]
        guard section.viewHandler != nil else { return }

        self.tableView.beginUpdates()

        if var expandedIndexPath = self.expandedIndexPath,
           expandedIndexPath.section == indexPath.section && indexPath.row > expandedIndexPath.row {
            self.expandedIndexPath = IndexPath(row: (indexPath.row - expandedIndexPath.row), section: expandedIndexPath.section)
        } else {
            self.expandedIndexPath = IndexPath(row: (indexPath.row + 1), section: indexPath.section)
        }

        if let expandedIndexPath = self.expandedIndexPath {
            self.tableView.insertRows(at: [expandedIndexPath], with: .fade)
            self.didExpandSection?(expandedIndexPath)
        }
        self.tableView.endUpdates()
        self.tableView.selectRow(at: indexPath, animated: animated, scrollPosition: .top)
    }
}

extension AccordionView: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var count = self.sections.count
        if let expandedIndexPath = self.expandedIndexPath, expandedIndexPath.section == section {
            count += 1
        }
        return count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let expandedIndexPath = self.expandedIndexPath, expandedIndexPath == indexPath {
            let cell = tableView.dequeueReusableCell(withIdentifier: UITableViewCell.identifier, for: indexPath)
            cell.selectionStyle = .none
            cell.backgroundColor = .white
            cell.contentView.subviews.forEach { $0.removeFromSuperview() }

            let section = self.sections[indexPath.row - 1]
            if let view = section.viewHandler?(section) {
                cell.contentView.addSubview(view)
                view.translatesAutoresizingMaskIntoConstraints = false
                view.anchorToSuperview()
                cell.contentView.layoutIfNeeded()
            }

            return cell
        }

        let section = self.expandedIndexPath == nil ? self.sections[indexPath.row] : self.sections[max(0, indexPath.row - 1)]
        let cell = tableView.dequeueReusableCell(withIdentifier: section.cellClass.identifier, for: indexPath)
        if let cell = cell as? AccordionSectionDataSource {
            cell.configure(section.data)
        }
        return cell
    }
}

extension AccordionView: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let expandedIndexPath = self.expandedIndexPath {

            if let selectedIndexPath = self.selectedIndexPath,
               selectedIndexPath == indexPath {
                collapseSection(indexPath)
            } else {
                var selectedPathToExpand: IndexPath
                if indexPath.row > expandedIndexPath.row {
                    selectedPathToExpand = IndexPath(row: max(0, indexPath.row - 1), section: indexPath.section)
                } else {
                    selectedPathToExpand = indexPath
                }

                collapseSelectedSection {
                    self.expandSection(selectedPathToExpand)
                }
            }
        } else {
            expandSection(indexPath)
        }

        if let selectedIndexPath = self.selectedIndexPath {
            self.didSelectSection?(selectedIndexPath)
        } else if let selectedIndexPath = tableView.indexPathForSelectedRow {
              self.didSelectSection?(selectedIndexPath)
        }
    }

    func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        let shouldSelectSection = self.shouldSelectSection?(indexPath) ?? true

        if let expandedIndexPath = self.expandedIndexPath, expandedIndexPath == indexPath || !shouldSelectSection {
            return nil
        }

        return indexPath
    }

    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return UIView()
    }

    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 0.01
    }

    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        return UIView()
    }

    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 0.01
    }
}

@available(iOS 11, *)
extension AccordionView {
    var contentInsetAdjustmentBehavior: UIScrollView.ContentInsetAdjustmentBehavior {
        get { return self.tableView.contentInsetAdjustmentBehavior }
        set { self.tableView.contentInsetAdjustmentBehavior = newValue }
    }
}
