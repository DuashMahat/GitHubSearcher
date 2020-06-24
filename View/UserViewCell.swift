//
//  UserViewCell.swift
//  GitHubSearcher
//
//  Created by Duale on 6/23/20.
//  Copyright © 2020 Duale. All rights reserved.
//

import UIKit

class UserViewCell: UITableViewCell {

    @IBOutlet weak var repos: UILabel!
    @IBOutlet weak var following: UILabel!
    @IBOutlet weak var followed: UILabel!
    @IBOutlet weak var url: UILabel!
    @IBOutlet weak var avatar: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var viewHold: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
