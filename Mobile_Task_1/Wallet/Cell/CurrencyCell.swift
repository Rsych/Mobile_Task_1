//
//  CurrencyCell.swift
//  Mobile_Task_1
//
//  Created by Ryan J. W. Kim on 2022/11/12.
//

import UIKit

class CurrencyCell: UITableViewCell {
// MARK: - Outlets
    
    @IBOutlet weak var currencyImage: UIImageView!
    @IBOutlet weak var currencyTitle: UILabel!
    @IBOutlet weak var currencyAmount: UILabel!
    @IBOutlet weak var cashAmount: UILabel!


    func configureCell(image: String?, name: String?, coins: String?, value: String?) {
        currencyImage.image = UIImage(named: image ?? "")
        currencyTitle.text = name
        currencyAmount.text = coins
        cashAmount.text = value
    }
}
