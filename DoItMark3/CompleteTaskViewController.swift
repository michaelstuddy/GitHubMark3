//
//  CompleteTaskViewController.swift
//  DoItMark3
//
//  Created by Michael Ruddy on 7/31/17.
//  Copyright © 2017 Michael Ruddy. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {
    @IBOutlet weak var taskLabel: UILabel!
    var task = Task()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if task.important {
            taskLabel.text = "❗️\(task.name!)❗️"
        } else {taskLabel.text = task.name!
            
        }
        
    }
    @IBAction func completeTapped(_ sender: Any) {
         let context = (UIApplication.shared.delegate as!
            AppDelegate).persistentContainer.viewContext
        context.delete(task)
         (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
                navigationController!.popViewController(animated: true)
    }}
