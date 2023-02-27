//
//  StringExtension.swift
//  OnMyWatch
//
//  Created by Damian on 27/2/23.
//

import SwiftUI

extension String {
    
    var url: URL? {
        return URL(string: self)
    }
    
    var localized: String {
        return NSLocalizedString(self, comment: "")
    }
    
    var localizedKey: LocalizedStringKey {
        return LocalizedStringKey(self)
    }
    
    func toDate() -> Date? {
        let formatter = DateFormatter()
        formatter.locale = Locale.current
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZZZ"
        formatter.timeZone = TimeZone.init(abbreviation: "UTC")
        var date = formatter.date(from: self)
        if date == nil {
            formatter.locale = Constants.kDefaultLocale
            date = formatter.date(from: self)
        }
        return date
    }
    
    func uppercaseFirst() -> String {
        return prefix(1).capitalized + dropFirst()
    }
}
