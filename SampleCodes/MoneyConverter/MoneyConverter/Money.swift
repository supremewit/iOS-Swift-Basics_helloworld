//
//  Money.swift
//  MoneyConverter
//
//  Created by Segaon_PC on 2017. 10. 23..
//  Copyright © 2017년 Segaon_PC. All rights reserved.
//

import Foundation


enum Currency: Int {
    case USD = 0, KRW, JPY, EUR
    
    
    var ratio: Double {
        get{
            switch self {
            case .USD: return 1.0
            case .KRW: return 1178.5
            case .JPY: return 122.45
            case .EUR: return 0.92
            }
        }
    }
    
    var symbol: String {
        get {
            switch self {
            case .USD: return "$"
            case .KRW: return "₩"
            case .JPY: return "¥"
            case .EUR: return "€"
        }
    }
    }
    
    
}

struct Money {
    
    var usDollar = 0.0
    
    init(_ _usdollar:Double) {
        usDollar = _usdollar
    }
    
    init(_ amount: Double, currency: Currency) {
        usDollar = amount / currency.ratio
    }
    
    func valueInCurrency(currency: Currency) -> String {
        return "\(currency.symbol)" + "\(usDollar * currency.ratio)"
    }
}


let myMoney = Money(120)
let incomeInKRW = Money(350_000, currency: .KRW)
