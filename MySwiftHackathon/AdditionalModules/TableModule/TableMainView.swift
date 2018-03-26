//
//  TableMainView.swift
//  MySwiftHackathon
//
//  Created by macmini on 21.03.2018.
//  Copyright © 2018 macmini. All rights reserved.
//

import UIKit
import SnapKit

class TableMainView: UIView {
    
    let btnWidth: CGFloat = 120
    
    //MARK: Buttons
    var swipeCellsBtn: UIButton!
    
    init() {
        super.init(frame: CGRect.zero)
        setupButtons()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    private func setupButtons() {
        
        swipeCellsBtn = getCustomButton(title: "SwipeCells")
        self.addSubview(swipeCellsBtn)
        swipeCellsBtn.snp.makeConstraints { make in
            make.top.equalTo(self).offset(80.0)
            make.left.equalTo(self).offset(8.0)
            make.right.equalTo(self).offset(-8.0)
            make.width.equalTo(btnWidth)
        }
        
    }
    
    private func getCustomButton(title: String) -> UIButton {
        let btn = UIButton()
        btn.setTitle(title, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.lightGray, for: .highlighted)
        btn.backgroundColor = .orange
        btn.titleLabel?.font = UIFont(name: "Futura", size: 15.0)
        return btn
    }

}
