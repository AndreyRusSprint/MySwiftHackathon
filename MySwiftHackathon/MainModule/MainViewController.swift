//
//  MainViewController.swift
//  MySwiftHackathon
//
//  Created by macmini on 07.03.2018.
//  Copyright © 2018 macmini. All rights reserved.
//

import UIKit
import SnapKit

class MainViewController: UIViewController {
    
    let mainView = UIView()
    let scrollView = UIScrollView()
    
    var contentView: MainView!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(scrollView)
        scrollView.addSubview(mainView)
        
        mainView.backgroundColor = .lightGray
        
        contentView = MainView()
        mainView.addSubview(contentView)
        
        setupConstraints()
        setupButtons()
    }
    
    private func setupConstraints() {
        
        scrollView.snp.makeConstraints { make in
            make.top.equalTo(view).offset(-60.0)
            make.left.equalTo(view)
            make.right.equalTo(view)
            make.bottom.equalTo(view)
        }
        
        mainView.snp.makeConstraints { make in
            make.top.bottom.equalTo(scrollView)
            make.left.right.equalTo(view)
            make.height.equalTo(500.0) // Изменять при увеличении числа элементов
        }
        
        contentView.snp.makeConstraints { make in
            make.top.equalTo(self.mainView)
            make.left.equalTo(self.mainView)
            make.right.equalTo(self.mainView)
            make.bottom.equalTo(self.mainView)
        }
    }
    
    /// Add actions for buttons
    private func setupButtons() {
        contentView.openTableBtn.addTarget(self, action: #selector(self.openTableModule), for: .touchUpInside)
        contentView.openAuthBtn.addTarget(self, action: #selector(self.openAuthModule), for: .touchUpInside)
    }
    
    // MARK: Route functions
    
    @objc func openTableModule() {
        if let tableModule = TableModule.storyboardInstance() {
            self.navigationController?.pushViewController(tableModule, animated: true)
        }
    }
    
    @objc func openAuthModule() {
        if let authModule = AuthModule.storyboardInstance() {
            self.navigationController?.pushViewController(authModule, animated: true)
        }
    }
    
//    @IBAction func openTableModule(_ sender: UIButton) {
//        if let tableModule = TableModule.storyboardInstance() {
//            self.navigationController?.pushViewController(tableModule, animated: true)
//        }
//    }
//
//    @IBAction func openAuthModule(_ sender: UIButton) {
//        if let authModule = AuthModule.storyboardInstance() {
//            self.navigationController?.pushViewController(authModule, animated: true)
//        }
//    }
}
