//
//  Video.swift
//  YoutubeApp
//
//  Created by TTung on 4/28/17.
//  Copyright © 2017 TTung. All rights reserved.
//

import UIKit

class Video: NSObject {
    
    var thumbnailImageName: String?
    var title: String?
    var numberOfViews: NSNumber?
    var uploadDate: NSDate?
    
    var chanel: Channel?
}

class Channel: NSObject {
    var name: String?
    var profileImageName: String?
    
}
