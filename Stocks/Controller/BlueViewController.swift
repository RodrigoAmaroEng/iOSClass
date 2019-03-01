//
//  BlueViewController.swift
//  Stocks
//
//  Created by Virtual Machine on 27/02/19.
//  Copyright © 2019 Virtual Machine. All rights reserved.
//

import UIKit

class BlueViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        closeButton.setTitle( "Fecha logo", for: .normal)
    }
    
    @IBOutlet weak var closeButton: UIButton!
    
    
    @IBAction func fechar(_ sender: UIButton) {
    dismiss(animated: true, completion: nil)
    }
    
}
