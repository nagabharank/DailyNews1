//
//  DailyNewsData.swift
//  DailyNews
//
//  Created by NagaBharan Kothrui on 11/20/17.
//  Copyright © 2017 Bharan Kothrui. All rights reserved.
//

import UIKit

class DailyNewsData: NSObject {
    
    private var _author: String?
    private var _title: String?
    private var _desc: String?
    private var _url: String?
    private var _urlToImage: String?
    private var _publishedAt: String?
    
    var author: String {
        if _author == nil {
            _author = ""
        }
        return _author!
    }
    
    var title: String {
        if _title == nil {
            _title = ""
        }
        return _title!
    }
    
    var desc: String {
        if _desc == nil {
            _desc = ""
        }
        return _desc!
    }
    
    var url: String {
        if _url == nil{
            _url = ""
        }
        return _url!
    }
    
    var urlToImage: String {
        if _urlToImage == nil {
            _urlToImage = ""
        }
        return _urlToImage!
    }
    
    var publishedAt: String {
        if _publishedAt == nil {
            _publishedAt = ""
        }
        return _publishedAt!
    }

    
    init(dailyNewsItem: Dictionary<String, Any>) {
        
        if let author = dailyNewsItem["author"] as? String {
            self._author = author   
        }
        
        if let title = dailyNewsItem["title"] as? String {
            self._title = title
        }
        
        if let desc = dailyNewsItem["description"] as? String {
            self._desc = desc
        }
        
        if let url = dailyNewsItem["url"] as? String {
            self._url = url
        }
        
        if let urlToImage = dailyNewsItem["urlToImage"] as? String {
            self._urlToImage = urlToImage
        }
        
        if let publishedAt = dailyNewsItem["publishedAt"] as? String {
            self._publishedAt = publishedAt
        }
    }
}
