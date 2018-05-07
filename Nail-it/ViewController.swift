//
//  ViewController.swift
//  Nail-it
//
//  Created by Flavy Tonfack on 5/2/18.
//  Copyright © 2018 FLAVY TONFACK. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return BinaryTreeQuestions.count
        case 1:
            return BinarySearchTreeQuestions.count
        case 2:
            return StringsQuestions.count
        case 3:
            return StacksQuestions.count
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        switch indexPath.section {
        case 0:
            cell.textLabel?.text = BinaryTreeQuestions[indexPath.row]
        case 1:
            cell.textLabel?.text = BinarySearchTreeQuestions[indexPath.row]
        case 2:
            cell.textLabel?.text = StringsQuestions[indexPath.row]
        case 3:
            cell.textLabel?.text = StacksQuestions[indexPath.row]
            default:
                cell.textLabel?.text = "This shouldn't happen"
        }
        
        return cell
    }
    
    
    
    
    
    //create string arrays of questions
    
    let BinaryTreeQuestions = ["Write a program to calculate size of a tree",
                               "Given a tree, write all nodes that don’t have siblings",
                               "Given a tree, check if two nodes are cousins",
                               "Write a program to delete a tree",
                               "Given a Binary Tree, find the lowest common ancestor",
                               "Given two trees, write a program to determine if they are identical"]
    
    let BinarySearchTreeQuestions = ["Write a program to check if a binary tree is a binary search tree or not",
                                     "Find the node with minimum value in a Binary Search Tree",
                                     "Given two Binary Search Trees, find common nodes in them",
                                     "Given a Binary Tree, convert it to a Binary Search Tree"]
    
    let StringsQuestions = ["Given a string, remove all duplicates string",
                            "Check whether two strings are anagram of each other",
                            "Find the first recurring character in the given string",
                            "Given an element, find the peak element in it",
                            "Reverse a string using recursion"]
    
    let StacksQuestions = ["Implement Queue using Stacks",
                           "Reverse a string using stack",
                           "Implement two stacks in an array",
                           "Implement a stack using single queue",
                           "Given an expression string, write a program to check for balanced parentheses in an expression"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

