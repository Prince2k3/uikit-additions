import Foundation

public struct State: Codable {
    let name: String
    let abbreviation: String
}

public struct Country: Codable {
    let region: String
    let code: String
}

public class ResourceUtils {
    public static var countries: [Country] = {
        let locale = Locale(identifier: "en_US")
        var locales = [Country]()
        for code in Locale.isoRegionCodes {
            guard
                let regionCode = locale.localizedString(forRegionCode: code)
                else { continue }
            locales.append(Country(region: regionCode, code: code))
        }
        return locales
    }()

    public static var states: [State] = {
        return [
            State(name: "Alabama", abbreviation: "AL"),
            State(name: "Alaska", abbreviation: "AK"),
            State(name: "Arizona", abbreviation: "AZ"),
            State(name: "Arkansas", abbreviation: "AR"),
            State(name: "California", abbreviation: "CA"),
            State(name: "Colorado", abbreviation: "CO"),
            State(name: "Connecticut", abbreviation: "CT"),
            State(name: "Delaware", abbreviation: "DE"),
            State(name: "District of Columbia", abbreviation: "DC"),
            State(name: "Federated States Of Micronesia", abbreviation: "FM"),
            State(name: "Florida", abbreviation: "FL"),
            State(name: "Georgia", abbreviation: "GA"),
            State(name: "Guam", abbreviation: "GU"),
            State(name: "Hawaii", abbreviation: "HI"),
            State(name: "Idaho", abbreviation: "ID"),
            State(name: "Illinois", abbreviation: "IL"),
            State(name: "Indiana", abbreviation: "IN"),
            State(name: "Iowa", abbreviation: "IA"),
            State(name: "Kansas", abbreviation: "KS"),
            State(name: "Kentucky", abbreviation: "KY"),
            State(name: "Louisiana", abbreviation: "LA"),
            State(name: "Marshall Islands", abbreviation: "MH"),
            State(name: "Maine", abbreviation: "ME"),
            State(name: "Maryland", abbreviation: "MD"),
            State(name: "Massachusetts", abbreviation: "MA"),
            State(name: "Michigan", abbreviation: "MI"),
            State(name: "Minnesota", abbreviation: "MN"),
            State(name: "Mississippi", abbreviation: "MS"),
            State(name: "Missouri", abbreviation: "MO"),
            State(name: "Montana", abbreviation: "MT"),
            State(name: "Nebraska", abbreviation: "NE"),
            State(name: "Nevada", abbreviation: "NV"),
            State(name: "New Hampshire", abbreviation: "NH"),
            State(name: "New Jersey", abbreviation: "NJ"),
            State(name: "New Mexico", abbreviation: "NM"),
            State(name: "New York", abbreviation: "NY"),
            State(name: "North Carolina", abbreviation: "NC"),
            State(name: "North Dakota", abbreviation: "ND"),
            State(name: "Northern Mariana Islands", abbreviation: "MP"),
            State(name: "Ohio", abbreviation: "OH"),
            State(name: "Oklahoma", abbreviation: "OK"),
            State(name: "Oregon", abbreviation: "OR"),
            State(name: "Palau", abbreviation: "PW"),
            State(name: "Pennsylvania", abbreviation: "PA"),
            State(name: "Puerto Rico", abbreviation: "PR"),
            State(name: "Rhode Island", abbreviation: "RI"),
            State(name: "South Carolina", abbreviation: "SC"),
            State(name: "South Dakota", abbreviation: "SD"),
            State(name: "Tennessee", abbreviation: "TN"),
            State(name: "Texas", abbreviation: "TX"),
            State(name: "Utah", abbreviation: "UT"),
            State(name: "Vermont", abbreviation: "VT"),
            State(name: "Virginia", abbreviation: "VA"),
            State(name: "Virgin Islands", abbreviation: "VI"),
            State(name: "Washington", abbreviation: "WA"),
            State(name: "West Virginia", abbreviation: "WV"),
            State(name: "Wisconsin", abbreviation: "WI"),
            State(name: "Wyoming", abbreviation: "WY"),
            State(name: "Armed Forces Americas", abbreviation: "AA"),
            State(name: "Armed Forces Europe", abbreviation: "AE"),
            State(name: "Armed Forces Pacific", abbreviation: "AP")
        ]
    }()
}

extension Sequence where Iterator.Element == Country {
    public func find(region: String) -> Country? {
        return first { $0.region.lowercased() == region.lowercased() }
    }

    public func find(code: String) -> Country? {
        return first { $0.code.lowercased() == code.lowercased() }
    }
}

extension Sequence where Iterator.Element == State {
    public func find(name: String) -> State? {
        return first { $0.name.lowercased() == name.lowercased() }
    }

    public func find(abbreviation: String) -> State? {
        return first { $0.abbreviation.lowercased() == abbreviation.lowercased() }
    }
}

extension String {
    public func findCountry() -> Country? {
        return ResourceUtils.countries.find(region: self)
    }

    public func findState() -> State? {
        return ResourceUtils.states.find(name: self)
    }
}
