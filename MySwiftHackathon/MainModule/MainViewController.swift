//
//  MainViewController.swift
//  MySwiftHackathon
//
//  Created by macmini on 07.03.2018.
//  Copyright © 2018 macmini. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
        
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func openTableModule(_ sender: UIButton) {
        if let firstModuleVC = TableModuleViewController.storyboardInstance() {
            self.navigationController?.pushViewController(firstModuleVC, animated: true)
        }
    }
}
