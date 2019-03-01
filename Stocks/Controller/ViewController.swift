//
//  ViewController.swift
//  Stocks
//
//  Created by Virtual Machine on 27/02/19.
//  Copyright © 2019 Virtual Machine. All rights reserved.
//

import UIKit

class ViewController: UITabBarController {

    static var wallet = Wallet()
    static var broker = Broker()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let pags = Paper(name: "PagSeguro Digital LTD", identifier: "PAGS")
        let stne = Paper(name: "Stone Inc", identifier: "STNE")
        ViewController.broker.stocks.append(Stock(pags,28.57))
        ViewController.broker.stocks.append(Stock(stne,31.42))
    }


}

