//
//  ViewController.swift
//  BallmerBot
//
//  Created by Jon Hemstreet on 6/11/16.
//  Copyright © 2016 Jon Hemstreet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let http = HttpRequest()
        
        http.getBottlesRequest().responseJSON { response in
            if let JSON = response.result.value {
                print(JSON)
            }
        }
        
        http.getDrinkRequest().responseJSON { response in
            if let JSON = response.result.value {
                print(JSON)
            }
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

