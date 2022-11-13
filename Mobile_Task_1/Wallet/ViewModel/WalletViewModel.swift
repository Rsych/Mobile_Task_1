//
//  WalletViewModel.swift
//  Mobile_Task_1
//
//  Created by Ryan J. W. Kim on 2022/11/13.
//

import Foundation

class WalletViewModel {
    public var dummy = Wallet.examples

    func numOfRow() -> Int {
        return dummy.count
    }
}
