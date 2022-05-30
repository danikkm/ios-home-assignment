//
//  Country.swift
//  RestCountries
//
//  Created by Daniel Dluznevskij on 2022-05-30.
//

import Foundation

struct Country: Codable {
    let flags: Flags
    let name: Name
    let currencies: [String: Currency]
    let capital, borders: [String]
    let population: Int
    let flag: String
}

struct Currency: Codable {
    let name, symbol: String
}

struct Flags: Codable {
    let png: String
    let svg: String
}

struct Name: Codable {
    let common, official: String
    let nativeName: [String: NativeName]
}

struct NativeName: Codable {
    let official, common: String
}


extension Country {
    static var stub: Self {
        .init(flags: .init(png: "", svg: ""),
              name: .init(common: "Lithuania",
                          official: "Republic of Lithuania",
                          nativeName: ["lit": .init(official: "Lietuvos Respublikos",
                                                    common: "Lietuva")]),
              currencies: ["currencies": .init(name: "Euro", symbol: "€")],
              capital: ["Vilnius"], borders: ["BLR", "LVA", "POL", "RUS"],
              population: 2794700,
              flag: "🇱🇹")
    }
}
