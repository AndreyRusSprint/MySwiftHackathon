//
//  SwipeTableViewCell.swift
//  MySwiftHackathon
//
//  Created by macmini on 21.03.2018.
//  Copyright © 2018 macmini. All rights reserved.
//

import UIKit
import SnapKit

class SwipeTableViewCell: UITableViewCell {
    
    let titleLbl: UILabel = {
        let lbl = UILabel()
        lbl.textColor = .white
        return lbl
    }()
    
    let descriptionLbl: UILabel = {
        let lbl = UILabel()
        lbl.textColor = .white
        return lbl
    }()
    
    let additionalLbl: UILabel = {
        let lbl = UILabel()
        lbl.textColor = .white
        return lbl
    }()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.backgroundColor = .orange
        setupLabels()
    }
    
    private func setupLabels() {
        
        self.addSubview(titleLbl)
        titleLbl.snp.makeConstraints { make in
            make.top.equalTo(self).offset(10.0)
            make.left.equalTo(self).offset(8.0)
            make.width.equalTo(90.0)
        }
        
        self.addSubview(descriptionLbl)
        descriptionLbl.snp.makeConstraints { make in
            make.top.equalTo(self).offset(10.0)
            make.right.equalTo(self).offset(-8.0)
            make.bottom.equalTo(self).offset(-10.0)
            make.width.equalTo(90.0)
        }
        
        self.addSubview(additionalLbl)
        additionalLbl.snp.makeConstraints { make in
            make.top.equalTo(titleLbl).offset(30.0)
            make.left.equalTo(titleLbl)
            make.bottom.equalTo(self).offset(-10.0)
            make.width.equalTo(titleLbl)
        }
    }

}
