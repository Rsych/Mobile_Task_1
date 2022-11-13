//
//  Coin.swift
//  Mobile_Task_1
//
//  Created by Ryan J. W. Kim on 2022/11/12.
//

import Foundation

// MARK: - Coin
struct Coin: Codable {
    let currencyFrom: String
    let currencyFromScale: Int
    let currencyTo: String
    let currencyToScale: Int
    let last, lastHP: Double
    let timestamp: Int
    let friendlyLast: String
}
