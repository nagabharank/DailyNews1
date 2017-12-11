//
//  DetailViewController.swift
//  DailyNews
//
//  Created by NagaBharan Kothrui on 11/20/17.
//  Copyright © 2017 Bharan Kothrui. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    
    @IBOutlet weak var articleTitle: UILabel!
    @IBOutlet weak var articleDescription: UILabel!
    
    var newsData: DailyNewsData?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

  
    @IBAction func backBtnPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
        
    }

}
