//
//  SlideTableViewCell.swift
//  Her
//
//  Created by shadowxie on 15/3/15.
//  Copyright (c) 2015年 hippos. All rights reserved.
//

import UIKit

class SlideTableViewCell: UITableViewCell {

    @IBOutlet weak var avatarView: HAvatarView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var badgeLabel: HBadgeLabel!
    
    override func setHighlighted(highlighted: Bool, animated: Bool) {
        var color = self.badgeLabel.backgroundColor
        super.setHighlighted(highlighted, animated: animated)
        self.badgeLabel.backgroundColor = color
    }
}
