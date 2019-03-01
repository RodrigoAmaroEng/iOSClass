//
//  AddTransactionViewController.swift
//  Stocks
//
//  Created by Virtual Machine on 27/02/19.
//  Copyright © 2019 Virtual Machine. All rights reserved.
//

import UIKit

class AddTransactionViewController: UIViewController {

    @IBOutlet weak var fieldPaperName: UILabel!
    @IBOutlet weak var fieldIdentifier: UILabel!
    @IBOutlet weak var fieldPrice: UILabel!
    var stock: Stock? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let current = stock {
            fieldPrice.text = current.cost.toCurrency()
            fieldPaperName.text = current.paper.name
            fieldIdentifier.text = current.paper.identifier
        }
    }
    
    @IBAction func saveTransaction(_ sender: Any) {
//        guard let paperId = paperField.text,
//            let amount = amountField.text,
//            let price = priceField.text
//            else {return}
//        
//        if let stock = ViewController.broker.stockById(StockId: paperId) {
//            ViewController.wallet.transactions.append(Transaction(stock.paper, Int(amount)!, Float(price)!))
//            
//        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
