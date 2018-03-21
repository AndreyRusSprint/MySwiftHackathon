//
//  MainView.swift
//  MySwiftHackathon
//
//  Created by macmini on 20.03.2018.
//  Copyright © 2018 macmini. All rights reserved.
//

import UIKit
import SnapKit

class MainView: UIView {
    
    let btnWidth: CGFloat = 120 //Button width
    
    //MARK: Buttons
    var openTableBtn: UIButton!
    var openAuthBtn: UIButton!
    
    init() {
        super.init(frame: CGRect.zero)
        setupButtons()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    private func setupButtons() {
        
        openTableBtn = getCustomButton(title: "TableViewModule")
        self.addSubview(openTableBtn)
        openTableBtn.snp.makeConstraints { make in
            make.top.equalTo(self).offset(80.0)
            make.left.equalTo(self).offset(8.0)
            make.right.equalTo(self).offset(-8.0)
            make.width.equalTo(btnWidth)
        }
        
        openAuthBtn = getCustomButton(title: "AuthModule (SnapKit)")
        self.addSubview(openAuthBtn)
        openAuthBtn.snp.makeConstraints { make in
            make.top.equalTo(openTableBtn.snp.bottom).offset(20)
            make.left.equalTo(openTableBtn)
            make.right.equalTo(openTableBtn)
            make.width.equalTo(btnWidth)
        }
    }
    
    func getCustomButton(title: String) -> UIButton {
        let btn = UIButton()
        btn.setTitle(title, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.lightGray, for: .highlighted)
        btn.backgroundColor = .orange
        btn.titleLabel?.font = UIFont(name: "Futura", size: 15.0)
        return btn
    }

}
