//
//  LocalizeUtility.swift
//  baseproject
//
//  Created by Pazandish on 1/14/19.
//  Copyright © 2019 sehosseini. All rights reserved.
//

import Foundation
import MiawKit

public enum Language: String {
    case  persian = "fa_IR"
    case  english = "en_US"
    public static let allValues:[Language] = [.persian, .english]
}

public func NVLocalizedWithFormat(_ key: String, values: CVarArg ...) -> String {
    return String(format: MKLocalized(key), arguments: values)
}

public func NVLocalized(_ key: String) -> String {
    return MKLocalized(key) ?? ""
}

public func translateNumberToPersion(number: Double) -> String {
    let formatter: NumberFormatter = NumberFormatter()
    formatter.locale = NSLocale(localeIdentifier: Language.persian.rawValue) as Locale
    return formatter.string(from: NSNumber(value: number)) ?? ""
}

public func translateNumberToEnglish(numberStr: String) -> String {
    let formatter: NumberFormatter = NumberFormatter()
    formatter.locale = NSLocale(localeIdentifier: Language.english.rawValue) as Locale
    let final = formatter.number(from: numberStr)
    if final == nil {
        return ""
    }
    return "\(final!)"
}

