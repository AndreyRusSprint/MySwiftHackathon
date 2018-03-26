//
//  SwipeTableViewController.swift
//  MySwiftHackathon
//
//  Created by macmini on 12.03.2018.
//  Copyright © 2018 macmini. All rights reserved.
//

import UIKit

class SwipeTableViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    private var numbersArray = [0, 1, 2, 3, 4]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.backgroundColor = .lightGray
    }
    
    @IBAction func addItem(_ sender: UIBarButtonItem) {
        numbersArray.append(numbersArray.count)
        tableView.reloadData()
    }
    
}

extension SwipeTableViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        let delete = UITableViewRowAction(style: .destructive, title: "Delete") { _, _ in
            self.numbersArray.remove(at: indexPath.row)
            self.tableView.deleteRows(at: [indexPath], with: .automatic)
        }
        let info = UITableViewRowAction(style: .normal, title: "Info") { _, _ in
            
        }
        return [delete, info]
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numbersArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! SwipeTableViewCell
        cell.titleLbl.text = "Title"
        cell.descriptionLbl.text = "Description"
        cell.additionalLbl.text = "\(numbersArray[indexPath.row])"
        return cell
    }
    
    @objc func printHello() {
        print("Hello")
    }
}
