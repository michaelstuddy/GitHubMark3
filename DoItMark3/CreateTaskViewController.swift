//
//  CreateTaskViewController.swift
//  DoItMark3
//
//  Created by Michael Ruddy on 7/24/17.
//  Copyright © 2017 Michael Ruddy. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {
    
    @IBOutlet weak var TaskNameTextField: UITextField!
    
    var previousVC = ViewController()
    
    @IBOutlet weak var importantSwitch: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
   
    @IBAction func addButton(_ sender: Any) {
        let task = Task()
        task.name = TaskNameTextField.text!
        task.important = importantSwitch.isOn
        previousVC.tasks.append(task)
        previousVC.tableView.reloadData()
        navigationController?.popViewController(animated: true)
        
        }
    
    }
