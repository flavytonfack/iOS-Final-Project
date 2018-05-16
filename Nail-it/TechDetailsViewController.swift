//
//  TechDetailsViewController.swift
//  Nail-it
//
//  Created by Flavy Tonfack on 5/15/18.
//  Copyright © 2018 FLAVY TONFACK. All rights reserved.
//

import UIKit

class TechDetailsViewController: UIViewController {

    @IBOutlet weak var techLabelView: UILabel!
    var techStringPassed = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        techLabelView.text = techStringPassed
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
