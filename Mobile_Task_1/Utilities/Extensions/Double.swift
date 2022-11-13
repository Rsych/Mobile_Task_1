//
//  Double.swift
//  TheMillions
//
//  Created by Ryan J. W. Kim on 2022/01/19.
//

import Foundation

extension Double {
    /// Converts a Double into a Currency with 2 digits
    private var currencyFormatter: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
        //        // change later
        formatter.locale = .current
        formatter.currencyCode = "usd"
        formatter.currencySymbol = "$"
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        return formatter
    }
    /// Converts a Double into a Currency with 2 digits
    func currencyTo2Digits() -> String {
        let number = NSNumber(value: self)
        return currencyFormatter.string(from: number) ?? "$0.00"
    }
    
    func currencyTo6Digits() -> String {
        let formatter = NumberFormatter()
        let number = NSNumber(value: self)
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
        //        // change later
        formatter.locale = .current
        formatter.currencyCode = "usd"
        formatter.currencySymbol = "$"
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 6
        return formatter.string(from: number) ?? "$0.00000"
    }
    
    /// Converts a Double into String
    func numberTo6Digits() -> String {
        return String(format: "%.2f", self)
    }
    
    /// Converts a Double into String without decimal
    func numberToNoDecimal() -> String {
        return String(format: "%.0f", self)
    }
    
    /// Converts a Double Percent into String
    func percentToString() -> String {
        return numberTo6Digits() + "%"
    }
    
    /// Converts a Double into string representation
    /// ```
    /// Convert 1.2345 to "1.23"
    /// ```
    func asNumberString() -> String {
        return String(format: "%.2f", self)
    }
    
    /// Converts a Double into string representation with percent symbol
    /// ```
    /// Convert 1.2345 to "1.23%"
    /// ```
    func asPercentString() -> String {
        return asNumberString() + "%"
    }
    
    /// Converts a Double into whole
    /// ```
    /// Convert 1.2345 to 1
    /// ```
    func getWholeNumber() -> Double {

        return modf(self).0

    }
    /// Converts a Double into fraction
    /// ```
    /// Convert 1.2345 to 0.2345
    /// ```
    func getFractionNumber() -> Double {

        return modf(self).1

    }
}
