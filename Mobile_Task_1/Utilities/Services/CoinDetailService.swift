//
//  CoinDetailService.swift
//  Mobile_Task_1
//
//  Created by Ryan J. W. Kim on 2022/11/12.
//

import Foundation
import Combine

//class CoinDetailService {
//    @Published var coinDetails: CoinDetail? = nil
//    
//    var coinDetailSubscription: AnyCancellable?
//    
//    
//    init(coin: Coin) {
//        self.coin = coin
//        getCoinDetails()
//    }
//    func getCoinDetails() {
//        guard let url = URL(string: OptionsConfig.Net.baseUrl + coin.id + "/USD") else { return }
//        
//        subscription = NetworkManager.download(url: url)
//            .decode(type: CoinDetail.self, decoder: JSONDecoder())
//            .receive(on: DispatchQueue.main)
//            .sink(receiveCompletion: NetworkManager.handleCompletion, receiveValue: { [weak self] (returnedCoinDetails) in
//                self?.coinDetails = returnedCoinDetails
//                self?.coinDetailSubscription?.cancel()
//            })
//    }
//}
