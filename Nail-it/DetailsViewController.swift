//
//  DetailsViewController.swift
//  Nail-it
//
//  Created by Flavy Tonfack on 5/13/18.
//  Copyright © 2018 FLAVY TONFACK. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    
    @IBOutlet weak var labelView: UILabel!
    
    var stringPassed = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelView.text = stringPassed

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



}
