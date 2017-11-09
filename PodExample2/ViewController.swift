//
//  ViewController.swift
//  PodExample2
//
//  Created by Mohammad Rahman Habibi on 11/9/17.
//  Copyright © 2017 Habibi. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        Alamofire.request("https://api.imgflip.com/get_memes").responseJSON { (response) in
            if let value = response.result.value {
                print(value)
                // or using SwiftyJSON
                let json = JSON(value)
                print(json)
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

