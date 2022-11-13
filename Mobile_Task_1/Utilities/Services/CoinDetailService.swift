//
//  CoinDetailService.swift
//  Mobile_Task_1
//
//  Created by Ryan J. W. Kim on 2022/11/12.
//

import Foundation

class CoinDetailService {
    var coin: Coin?

    func fetchCoin(ticker: String?) {
        guard let ticker = ticker else { return }
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
