//
//  CountryListViewModel.swift
//  RestCountries
//
//  Created by Daniel Dluznevskij on 2022-05-30.
//

import Foundation

class CountryListViewModel {
    
    private(set) var countryViewModels: [CountryViewModel]
    
    init() {
        self.countryViewModels = [.init(country: .stub), .init(country: .stub)]
    }
}
