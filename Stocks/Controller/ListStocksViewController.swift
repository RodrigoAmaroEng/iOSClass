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
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.tableFooterView = UIView()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let identifier = segue.identifier else {return}
        if identifier == "SelectedPaper" {
            let controller = segue.destination as? AddTransactionViewController
            controller?.stock = sender as? Stock
        }
        
    }
    
    
}
extension ListStocksViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ViewController.broker.stocks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        if let labelPaperName = cell.viewWithTag(10) as? UILabel,
            let labelPaperId = cell.viewWithTag(11) as? UILabel,
            let labelStockPrice = cell.viewWithTag(12) as? UILabel {
            let stock =  ViewController.broker.stocks[indexPath.row]
            labelPaperName.text = stock.paper.name
            labelPaperId.text = stock.paper.identifier
            labelStockPrice.text = stock.cost.toCurrency()
        }
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let stock  = ViewController.broker.stocks[indexPath.row]
        performSegue(withIdentifier: "SelectedPaper", sender: stock)
    }
}
