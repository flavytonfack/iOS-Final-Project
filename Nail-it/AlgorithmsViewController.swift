//
//  AlgorithmsViewController.swift
//  Nail-it
//
//  Created by Flavy Tonfack on 5/15/18.
//  Copyright © 2018 FLAVY TONFACK. All rights reserved.
//

import UIKit

class AlgorithmsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return SearchingQuestions.count
        case 1:
            return SortingQuestions.count
        default:
            return 0
        }
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        switch indexPath.section {
        case 0:
            cell.textLabel?.text = SearchingQuestions[indexPath.row]
        case 1:
            cell.textLabel?.text = SortingQuestions[indexPath.row]
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
            return "Searching Algorithms"
        case 1:
            return "Sorting Algorithms"
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
    var selectedSection: Int!
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedIndex = indexPath.row
        selectedSection = indexPath.section
        performSegue(withIdentifier: "showAlgoDetails", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let AlgoDetailsViewController = segue.destination as? AlgoDetailsViewController {
            //AlgoDetailsViewController.algoStringPassed = SearchingQuestions[selectedIndex]
            switch selectedSection {
            case 0:
                AlgoDetailsViewController.algoStringPassed =  SearchingQuestions[selectedIndex]
            case 1:
                AlgoDetailsViewController.algoStringPassed =  SortingQuestions[selectedIndex]
            default :
                return
            }
        }
    }
    
    
    
    
    
    
    
    
    //CREATE STRING ARRAYS OF QUESTIONS
    let SearchingQuestions = ["Find the minimum element in a sorted and rotated array",
                               "Given an array of integers, find a peak element in it",
                               "Given a sorted array arr[] and a number x, write a function that counts the occurrences of x in arr[]. Expected time complexity is O(Logn)",
                               "There are 2 sorted arrays A and B of size n each. Write an algorithm to find the median of the array obtained after merging the above 2 arrays(i.e. array of length 2n)",
                               "Given an array of n distinct integers sorted in ascending order, write a function that returns a Fixed Point in the array, if there is any Fixed Point present in array, else returns -1"]
    
    let SortingQuestions = ["Count Inversions in an array using Merge Sort",
                              "Given an array A[] consisting 0s, 1s and 2s, write a function that sorts A[]. The functions should put all 0s first, then all 1s and all 2s in last.",
                              "Given two arrays: arr1[0..m-1] and arr2[0..n-1]. Find whether arr2[] is a subset of arr1[] or not. Both the arrays are not in sorted order",
                              "Given an integer array and a positive integer k, count all distinct pairs with difference equal to",
                              "Given an unsorted array arr[0..n-1] of size n, find the minimum length subarray arr[s..e] such that sorting this subarray makes the whole array sorted.",
                              "Given a linked list of 0s, 1s and 2s, sort it."]
    
    
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



}
