//
//  Wallet.swift
//  Mobile_Task_1
//
//  Created by Ryan J. W. Kim on 2022/11/12.
//

import Foundation

struct Wallet: Codable {
    let ticker: String
    let name: String
    let amount: Double
    let value: Double
    let imageURL: String
    
    var amountString: String {
        return String(amount) + " \(ticker)"
    }
    var valueString: String {
        return String(value.numberToNoDecimal()) + " USD"
    }

    static let examples: [Wallet] = [
        Wallet(ticker: "BTC", name: "Bitcoin", amount: 0.31244124, value: 5000, imageURL: "BTC"),
        Wallet(ticker: "ETH", name: "Ether", amount: 0.327834478541236547, value: 5000, imageURL: "ETH"),
        Wallet(ticker: "PAX", name: "Pax Dollar", amount: 0.32, value: 5000, imageURL: "PAX"),
        Wallet(ticker: "BNK", name: "Banker", amount: 131231567, value: 5000, imageURL: "BNK")
    ]
}
