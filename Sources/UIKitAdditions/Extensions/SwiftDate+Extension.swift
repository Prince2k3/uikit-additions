//
//  SwiftDate+Extension.swift
//  Tradelytics
//
//  Created by Prince Ugwuh on 10/2/18.
//  Copyright © 2018 Alerting Options, LLC. All rights reserved.
//

import Foundation
import SwiftDate

extension Date {
    public static var today: Date {
        return .nowAt(.startOfDay)
    }

    public static var tomorrow: Date {
        return .nowAt(.tomorrow)
    }

    public static var yesterday: Date {
        return .nowAt(.yesterday)
    }

    public static func today(in region: Region) -> DateInRegion {
        return Date.nowAt(.startOfDay).in(region: region)
    }

    public static func tomorrow(in region: Region) -> DateInRegion {
        return Date.nowAt(.tomorrow).in(region: region)
    }

    public static func yesterday(in region: Region) -> DateInRegion {
        return Date.nowAt(.yesterday).in(region: region)
    }
}

extension DateInRegion {
    public static var today: DateInRegion {
        return DateInRegion().dateAt(.startOfDay)
    }

    public static var tomorrow: DateInRegion {
        return DateInRegion().dateAt(.tomorrow)
    }

    public static var yesterday: DateInRegion {
        return DateInRegion().dateAt(.yesterday)
    }
}
