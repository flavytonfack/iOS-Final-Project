//
//  TecnicalViewController.swift
//  Nail-it
//
//  Created by Flavy Tonfack on 5/15/18.
//  Copyright © 2018 FLAVY TONFACK. All rights reserved.
//

import UIKit

class TecnicalViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return TechnicalQuestions.count
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        switch indexPath.section {
        case 0:
            cell.textLabel?.text = TechnicalQuestions[indexPath.row]
        default:
            cell.textLabel?.text = "This should not happen"
        }
        cell.imageView?.image = UIImage(named: "bullet")
        cell.accessoryType = .disclosureIndicator
        cell.backgroundColor = UIColor(red:0.88, green:0.86, blue:0.85, alpha:1.0)
        cell.textLabel?.font = UIFont(name: (cell.textLabel?.font.fontName)!, size:18)
        return cell
    }
    
    //TITLE FOR HEADER SECTION
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        tableView.backgroundColor = UIColor(red:0.98, green:0.92, blue:0.84, alpha:1.0)
        switch section {
        case 0:
            return "Technical Questions"
        default:
            return nil
        }
    }

    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        let header = view as! UITableViewHeaderFooterView
        header.textLabel?.font = UIFont(name: "Futura", size: 24)
        header.textLabel?.textColor = UIColor.black
    }
    
    
    var selectedIndex: Int!
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedIndex = indexPath.row
        performSegue(withIdentifier: "showTechDetails", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let TechDetailsViewController = segue.destination as? TechDetailsViewController {
            TechDetailsViewController.techStringPassed = TechnicalQuestions[selectedIndex]
        }
    }
    
    
    
    
    //CREATE STRING ARRAYS OF QUESTIONS
    let TechnicalQuestions = ["What is a class and object?",
                              "What does Space Complexity mean?",
                              "Given two algorithms for a task, how do we find out which one is better?",
                              "What is performance analysis and why is it important?",
                              "What is the difference between Binary Search and Linear Search?",
                              "What is the difference between Array and LinkedList?",
                              "What does Data Structure mean?",
                              "What does Stack and Queue mean?",
                              "What is the difference between Binary Tree and Binary Search Tree",
                              "What does Many to Many relationship mean?",
                              "What are advantages of DBMS over traditional file based systems?",
                              "What are super, primary, candidate and foreign keys?",
                              "What is Join in SQL?",
                              "What are indexes?",
                              "What are clustered and non-clustered Indexes?"]
    
    
    
    
    
    
    
    
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
