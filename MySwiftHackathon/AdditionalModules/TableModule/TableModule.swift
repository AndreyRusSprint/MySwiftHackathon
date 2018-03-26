//
//  TableModule.swift
//  MySwiftHackathon
//
//  Created by macmini on 12.03.2018.
//  Copyright © 2018 macmini. All rights reserved.
//

import UIKit
import SnapKit

class TableModule: UIViewController {
    
    let mainView = UIView()
    let scrollView = UIScrollView()
    
    var contentView: TableMainView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(scrollView)
        scrollView.addSubview(mainView)
        
        mainView.backgroundColor = .lightGray
        
        contentView = TableMainView()
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
            make.height.equalTo(665.0) // Изменять при увеличении числа элементов
        }
        
        contentView.snp.makeConstraints { make in
            make.top.equalTo(self.mainView)
            make.left.equalTo(self.mainView)
            make.right.equalTo(self.mainView)
            make.bottom.equalTo(self.mainView)
        }
    }
    
    private func setupButtons() {
        contentView.swipeCellsBtn.addTarget(self, action: #selector(self.openSwipeCellsModule), for: .touchUpInside)
    }
    
    @objc func openSwipeCellsModule() {
        performSegue(withIdentifier: "segue", sender: nil)
    }

}
