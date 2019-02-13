import UIKit

public class SearchController: UISearchController {
    public var updateSearchResults: ((String?, SearchController) -> Void)?
    public var updateSearchResultsPaging: ((String?, Int, SearchController) -> Void)?

    public override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        commonInit()
    }

    public override init(searchResultsController: UIViewController?) {
        super.init(searchResultsController: searchResultsController)
        commonInit()
    }

    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }

    func commonInit() {
        self.searchBar.delegate = self
    }
}

extension SearchController {
    public convenience init() {
        self.init(searchResultsController: SearchResultsController())
    }
}

extension SearchController: UISearchResultsUpdating {
    public func updateSearchResults(for searchController: UISearchController) {
        self.updateSearchResults?(self.searchBar.text, self)
        if let searchResultsController = self.searchResultsController as? SearchResultsPaging {
            self.updateSearchResultsPaging?(self.searchBar.text, searchResultsController.page, self)
        }
    }
}

extension SearchController: UISearchBarDelegate {
    public func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
        guard var searchResultsController = self.searchResultsController as? SearchResults else { return }
        searchResultsController.items = []
    }

    public func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        guard var searchResultsController = self.searchResultsController as? SearchResults else { return }
        if searchText.isEmpty {
            searchResultsController.items = []
        }
    }

    public func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        self.updateSearchResults?(self.searchBar.text, self)

        if let searchResultsController = self.searchResultsController as? SearchResultsPaging {
            self.updateSearchResultsPaging?(self.searchBar.text, searchResultsController.page, self)
        }
    }
}

/// Search Results Conveinence

extension SearchController {
    public var enableLiveSearch: Bool {
        get { return self.searchResultsUpdater != nil }
        set { self.searchResultsUpdater = newValue ? self : nil }
    }

    public var enablePaging: Bool {
        get {
            guard
                let searchResultsController = self.searchResultsController as? SearchResultsController
                else { return false }
            return searchResultsController.enablePaging
        }

        set {
            guard
                let searchResultsController = self.searchResultsController as? SearchResultsController
                else { return }
            searchResultsController.enablePaging = newValue
        }
    }

    public func registerCell(with identifier: String, cellClass: AnyClass? = nil) {
        guard
            let searchResultsController = self.searchResultsController as? SearchResultsController
            else { fatalError("Must use SearchResultsController") }
        searchResultsController.registerCell(with: identifier, cellClass: cellClass)
    }
}
