//
//  Wallet.swift
//  StocksApp
//
//  Created by Virtual Machine on 27/02/19.
//  Copyright © 2019 Virtual Machine. All rights reserved.
//

import Foundation

class Wallet {
    var transactions:[Transaction] = []
}

class Transaction {
    let paper: Paper
    let amount: Int
    let price: Float
    init(_ paper: Paper, _ amount: Int, _ price: Float) {
        self.paper = paper
        self.amount = amount
        self.price = price
    }
}

struct Paper {
    var name: String
    var identifier: String
}

class Stock {
    let paper: Paper
    let cost: Float
    init(_ paper: Paper, _ cost: Float) {
        self.paper = paper
        self.cost = cost
    }
}

class Broker {
    var stocks : [Stock] = []
    
    func stockById(StockId id: String) -> Stock? {
        return stocks.filter { $0.paper.identifier == id }.first
    }
}
