//
//  ViewController.swift
//  DailyNews
//
//  Created by NagaBharan Kothrui on 11/20/17.
//  Copyright © 2017 Bharan Kothrui. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
        
    var dailyNewsArray = [DailyNewsData]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NewsWebServerCall()
    }
    
    func NewsWebServerCall() {
        let requestURL = "https://newsapi.org/v1/articles?source=the-next-web&sortBy=latest&apiKey=2f98e8fe05a344a3bdd966f65ca550a2"
        Alamofire.request(requestURL).responseJSON { (response) in
            if response.error != nil {
                print("This could not complete the Request ")
            } else {
                if let responseDict = response.result.value as? Dictionary<String, Any> {
                    self.parseJson(JSON: responseDict)
                    DispatchQueue.main.async {
                        self.tableView.reloadData()
                    }
                }
            }
        }

    }
    
    func parseJson(JSON: Dictionary<String, Any>) {
        if let newsItems = JSON["articles"] as? [Dictionary<String, Any>] {
            for item in newsItems {
                let newsItem = DailyNewsData(dailyNewsItem: item)
                self.dailyNewsArray.append(newsItem)
            }
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dailyNewsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "dailyNewsCell") as? DailyNewsCell {
            cell.configureCell(dailyNewsItem: dailyNewsArray[indexPath.row])
            return cell
        }
        return UITableViewCell()
    }
    
  
    
}

