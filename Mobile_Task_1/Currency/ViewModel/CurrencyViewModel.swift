//
//  CurrencyViewModel.swift
//  Mobile_Task_1
//
//  Created by Ryan J. W. Kim on 2022/11/12.
//

import Foundation

class CurrencyViewModel {
    var coin: Coin?
    var ticker: String
    
    init(coin: Coin? = nil, ticker: String) {
        self.coin = coin
        self.ticker = ticker
    }

    func fetchCoin() {
        NetworkManager<Coin>().fetch(url: URL(string: OptionsConfig.Net.baseUrl + ticker + "/USD")!) { (results) in
            switch results {
            case .success(let success):
                self.coin = success
            case .failure(let failure):
                print(failure)
            }
        }
    }
}
