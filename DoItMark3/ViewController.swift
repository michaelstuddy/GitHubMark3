//
//  ViewController.swift
//  DoItMark3
//
//  Created by Michael Ruddy on 7/24/17.
//  Copyright © 2017 Michael Ruddy. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!

   var tasks : [Task] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tasks = makeTasks()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let task = tasks[indexPath.row]
        
        if task.important {
            cell.textLabel?.text = "❗️\(task.name)❗️"
        } else {cell.textLabel?.text = task.name
            
        }
        return cell
        
        
    }
    
    func makeTasks() -> [Task] {
        let task1 = Task()
        task1.name = "Walk the dog"
        task1.important = false
        
        
        let task2 = Task()
        task2.name = "Mow the lawn"
        task2.important = true
        
        
        let task3 = Task()
        task3.name = "Buy Milk"
        task3.important = true
        return [task1,task2,task3]
        
    }
}


