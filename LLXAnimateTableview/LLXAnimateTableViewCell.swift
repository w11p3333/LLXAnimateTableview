//
//  LLXAnimateTableViewCell.swift
//  LLXAnimateTableview
//
//  Created by 卢良潇 on 16/3/30.
//  Copyright © 2016年 卢良潇. All rights reserved.
//

import UIKit


struct article {
    let avatarImage: String
    let userName: String
    let actionType: String
    let articleTitle: String
    let articleCoverImage: String
    let articleSouce: String
    let articleCreateTime: String
}
class LLXAnimateTableViewCell: UITableViewCell {

 
    
    @IBOutlet weak var avaterImageView: UIImageView!
    
    @IBOutlet weak var userNameLabel: UILabel!
    
    @IBOutlet weak var actionTypeLabel: UILabel!
    
    @IBOutlet weak var articeTitleLabel: UILabel!
    
    @IBOutlet weak var articleCoverImageView: UIImageView!
    
    @IBOutlet weak var articleSourceLabel: UILabel!
    
    @IBOutlet weak var articleCreateTimeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
