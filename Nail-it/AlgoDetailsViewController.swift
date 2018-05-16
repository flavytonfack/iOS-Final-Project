//
//  AlgoDetailsViewController.swift
//  Nail-it
//
//  Created by Flavy Tonfack on 5/15/18.
//  Copyright © 2018 FLAVY TONFACK. All rights reserved.
//

import UIKit

class AlgoDetailsViewController: UIViewController {

    
    @IBOutlet weak var algoLabelView: UILabel!
    
    var algoStringPassed = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        algoLabelView.text = algoStringPassed
      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
