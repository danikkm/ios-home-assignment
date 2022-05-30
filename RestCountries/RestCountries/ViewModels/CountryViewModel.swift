//
//  CountryViewModel.swift
//  RestCountries
//
//  Created by Daniel Dluznevskij on 2022-05-30.
//

import Foundation

class CountryViewModel {
    
    let country: Country

    init(country: Country) {
        self.country = country
    }

    var flagURL: String {
        return country.flags.png
    }

    var name: String {
        return country.name.official
    }

    var currency: String {
        return country.currencies.values.first?.name ?? ""
    }

    var capital: String {
        return country.capital.joined(separator: ", ")
    }

    var neighbours: [String] {
        return country.borders
    }

    var population: String {
        return String(country.population)
    }

    var flagEmoji: String {
        return country.flag
    }
}

