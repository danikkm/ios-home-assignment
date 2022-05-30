//
//  DetailedViewController.swift
//  RestCountries
//
//  Created by Daniel Dluznevskij on 2022-05-30.
//

import UIKit

class DetailedViewController: UIViewController {
    
    init(countryViewModel: CountryViewModel) {
        super.init(nibName: "DetailedViewController", bundle: .main)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
