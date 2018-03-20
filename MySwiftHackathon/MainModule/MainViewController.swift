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
        if let tableModule = TableModule.storyboardInstance() {
            self.navigationController?.pushViewController(tableModule, animated: true)
        }
    }
    
    @IBAction func openAuthModule(_ sender: UIButton) {
        if let authModule = AuthModule.storyboardInstance() {
            self.navigationController?.pushViewController(authModule, animated: true)
        }
    }
}
