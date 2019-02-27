//
//  NewTransactionViewController.swift
//  Stocks
//
//  Created by Virtual Machine on 27/02/19.
//  Copyright © 2019 Virtual Machine. All rights reserved.
//

import UIKit

class ListStocksViewController: UIViewController {

    @IBOutlet weak var paperField: UITextField!
    @IBOutlet weak var amountField: UITextField!
    @IBOutlet weak var priceField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func saveTransaction(_ sender: Any) {
        guard let paperId = paperField.text,
            let amount = amountField.text,
            let price = priceField.text
            else {return}
        
        if let stock = ViewController.broker.stockById(StockId: paperId) {
            ViewController.wallet.transactions.append(Transaction(stock.paper, Int(amount)!, Float(price)!))
    
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let paperId = paperField.text,
            let identifier = segue.identifier,
            let stock = ViewController.broker.stockById(StockId: paperId)
            else { return}
        if identifier == "SelectedPaper" {
            let controller = segue.destination as? AddTransactionViewController
            controller?.paper = stock.paper
        }
        
    }
    

}
