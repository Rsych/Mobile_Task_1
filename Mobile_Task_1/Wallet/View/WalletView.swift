//
//  WalletView.swift
//  Mobile_Task_1
//
//  Created by Ryan J. W. Kim on 2022/11/12.
//

import UIKit

class WalletView: UIViewController {
    // MARK: - Outlets
    @IBOutlet private weak var currencyTableview: UITableView!

    // MARK: - Privates
    private var dummy = Wallet.examples

    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigation()
        setupTableview()
    }
    // MARK: - Functions
    private func setupNavigation() {
        navigationController?.isNavigationBarHidden = true
        navigationController?.isToolbarHidden = true
    }
    private func setupTableview() {
        currencyTableview.delegate = self
        currencyTableview.dataSource = self
        currencyTableview.register(UINib(nibName: CurrencyCell.identifier, bundle: nil), forCellReuseIdentifier: CurrencyCell.identifier)
    }
    func routeToCurrency() {
        let currencyView = CurrencyView(nibName: "CurrencyView", bundle: nil)
        self.navigationController?.pushViewController(currencyView, animated: true)
        
    }
}

extension WalletView: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        default: routeToCurrency()
        }
    }
}

extension WalletView: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dummy.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        default: return createCurrencyCell(index: indexPath)
        }
    }
}

// MARK: - CreateCell

extension WalletView {
    private func createCurrencyCell(index: IndexPath) -> UITableViewCell {
        guard let cell = currencyTableview.dequeueReusableCell(withIdentifier: CurrencyCell.identifier, for: index) as? CurrencyCell else { return CurrencyCell() }
        cell.selectionStyle = .none
        cell.configureCell(image: dummy[index.row].imageURL, name: dummy[index.row].name, coins: dummy[index.row].amountString, value: dummy[index.row].valueString)
        return cell
    }
}
