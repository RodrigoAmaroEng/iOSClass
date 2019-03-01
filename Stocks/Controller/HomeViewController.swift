//
//  HomeViewController.swift
//  Stocks
//
//  Created by Virtual Machine on 27/02/19.
//  Copyright © 2019 Virtual Machine. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func goToRed(_ sender: Any) {
        performSegue(withIdentifier: "GoToRed", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        guard let identifier = segue.identifier else { return }
        switch identifier {
        case "GoToRed":
            segue.destination.view.backgroundColor = .red
        case "GoToBlue":
            segue.destination.view.backgroundColor = .blue
        default:
            break
        }
        // Pass the selected object to the new view controller.
    }
    
}
