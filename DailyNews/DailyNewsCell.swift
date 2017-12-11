//
//  DailyNewsCell.swift
//  DailyNews
//
//  Created by NagaBharan Kothrui on 11/20/17.
//  Copyright © 2017 Bharan Kothrui. All rights reserved.
//

import UIKit

class DailyNewsCell: UITableViewCell {

    @IBOutlet weak var newsTitle: UILabel!
    @IBOutlet weak var newsDesccription: UILabel!
    @IBOutlet weak var newsAuthor: UILabel!
    @IBOutlet weak var newsPublishedAt: UILabel!
    
    func configureCell(dailyNewsItem: DailyNewsData) {
        self.newsTitle.text = dailyNewsItem.title
        self.newsDesccription.text = dailyNewsItem.desc
        self.newsAuthor.text = dailyNewsItem.author
        self.newsPublishedAt.text = dailyNewsItem.publishedAt
    }
}
