//
//  CountryListViewController.swift
//  RestCountries
//
//  Created by Daniel Dluznevskij on 2022-05-30.
//

import UIKit

class CountryListViewController: UIViewController {
    
    @IBOutlet private weak var tableView: UITableView!
    
    private var viewModel: CountryListViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nibName = UINib(nibName: "CountryCell", bundle: nil)
        tableView.register(nibName, forCellReuseIdentifier: "CountryCell")
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .portrait
    }
}

extension CountryListViewController {
    private func presentDetailedViewController(_ countryViewModel: CountryViewModel) {
        let detailedViewController = DetailedViewController(countryViewModel: countryViewModel)
        navigationController?.pushViewController(detailedViewController, animated: true)
    }
}

extension CountryListViewController {
    static func instanciate(viewModel: CountryListViewModel) -> CountryListViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: .main)
        let viewController = storyboard.instantiateInitialViewController() as! CountryListViewController
        
        viewController.viewModel = viewModel
        
        return viewController
    }
}

extension CountryListViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CountryCell", for: indexPath) as? CountryCell else { fatalError("Error") }
        cell.selectionStyle = .none

        let country = viewModel.countryViewModels[indexPath.row]

        cell.countryName.text = country.name
        cell.flagEmoji.text = country.flagEmoji

        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let countryViewModel = viewModel.countryViewModels[indexPath.row]
        presentDetailedViewController(countryViewModel)
        tableView.deselectRow(at: indexPath, animated: true)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.countryViewModels.count
    }
}

