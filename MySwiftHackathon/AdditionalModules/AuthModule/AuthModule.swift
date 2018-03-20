//
//  AuthModule.swift
//  MySwiftHackathon
//
//  Created by macmini on 19.03.2018.
//  Copyright © 2018 macmini. All rights reserved.
//

import UIKit
import SnapKit

class AuthModule: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let loginView = LoginView()
        view.addSubview(loginView)
        loginView.snp.makeConstraints { (make) in
            make.left.equalTo(self.view)
            make.top.equalTo(self.view)
            make.right.equalTo(self.view)
            make.bottom.equalTo(self.view)
        }
    }

}
