//
//  Configuration.swift
//  baseproject
//
//  Created by sehosseini on 12/30/18.
//  Copyright © 2018 sehosseini. All rights reserved.
//

import Foundation

let configuration = Configuration()

class Configuration {
    var baseURL: String?
    var wsURL: String?
    
    init() {
        if let dictionary = Bundle.main.infoDictionary,
            let configuration = dictionary["Configuration"] as? String {
            let path = Bundle.main.path(forResource: "Configuration", ofType: "plist")
            let config = NSDictionary(contentsOfFile: path!)
            for (key, value) in config! {
                if let key = key as? String,
                    let value = value as? [String: String] {
                    if key == configuration {
                        baseURL = value["baseURL"] ?? ""
                        wsURL = value["wsURL"] ?? ""
                    }
                }
            }
        }
    }
}

