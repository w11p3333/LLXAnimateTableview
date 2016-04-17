//
//  LLXAnimateViewController.swift
//  LLXAnimateTableview
//
//  Created by 卢良潇 on 16/3/30.
//  Copyright © 2016年 卢良潇. All rights reserved.
//

import UIKit

class LLXAnimateViewController: UIViewController {

    var data = [
         
        article(avatarImage: "allen", userName: "Lu Liangxiao", actionType: "Read Later", articleTitle: "一个简单Tableview的小Demo", articleCoverImage: "giphy", articleSouce: "TheNextWeb", articleCreateTime: "5min  •  13:20"),
        article(avatarImage: "Daniel Hooper", userName: "Daniel Hooper", actionType: "Shared on Twitter", articleTitle: "Principle. The Sketch of Prototyping Tools", articleCoverImage: "my workflow flow", articleSouce: "SketchTalk", articleCreateTime: "3min  •  12:57"),
        article(avatarImage: "davidbeckham", userName: "David Beckham", actionType: "Shared on Facebook", articleTitle: "Ohlala, An Uber For Escorts, Launches Its ‘Paid Dating’ Service In NYC", articleCoverImage: "Ohlala", articleSouce: "TechCrunch", articleCreateTime: "1min  •  12:59"),
        article(avatarImage: "bruce", userName: "Bruce Fan", actionType: "Shared on Weibo", articleTitle: "Lonely Planet’s new mobile app helps you explore major cities like a pro", articleCoverImage: "Lonely Planet", articleSouce: "36Kr", articleCreateTime: "5min  •  11:21"),
        
        ]

    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.delegate = self
        tableView.separatorStyle = UITableViewCellSeparatorStyle.None
        tableView.tableFooterView = UIView(frame: CGRectZero)
    }

    override func viewWillAppear(animated: Bool) {
        
        animationTable()
    
    }

    
    func animationTable() {
        
        self.tableView.reloadData()
        
        let cells = tableView.visibleCells
        let tableHeight: CGFloat = tableView.bounds.size.height
        
        for i in cells {
            let cell: UITableViewCell = i as UITableViewCell
            cell.transform = CGAffineTransformMakeTranslation(0, tableHeight)
        }
        
        var index = 0
        
        for a in cells {
            let cell: UITableViewCell = a as UITableViewCell
            UIView.animateWithDuration(1.0, delay: 0.05 * Double(index), usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: [], animations: {
                cell.transform = CGAffineTransformMakeTranslation(0, 0);
                }, completion: nil)
            
            index += 1
        }
    }
    



}

extension LLXAnimateViewController: UITableViewDelegate, UITableViewDataSource
{
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 165
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! LLXAnimateTableViewCell
        
        let article = data[indexPath.row]
        
        cell.avaterImageView.image = UIImage(named: article.avatarImage)
        cell.articleCoverImageView.image = UIImage(named: article.articleCoverImage)
        cell.userNameLabel.text = article.userName
        cell.actionTypeLabel.text = article.actionType
        cell.articeTitleLabel.text = article.articleTitle
        cell.articleSourceLabel.text = article.articleSouce
      cell.articleCreateTimeLabel.text = article.articleCreateTime
        
        cell.selectionStyle = UITableViewCellSelectionStyle.None
        
        return cell
        
    }


}