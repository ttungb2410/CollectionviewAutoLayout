//
//  BaseCell.swift
//  YoutubeApp
//
//  Created by TTung on 4/28/17.
//  Copyright © 2017 TTung. All rights reserved.
//

import UIKit

class BaseCell: UICollectionViewCell{
    
    override init (frame: CGRect){
        super.init(frame: frame)
        setupViews()
    }
    
    
    
    func setupViews(){
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
