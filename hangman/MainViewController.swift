//
//  ViewController.swift
//  hangman
//
//  Created by ElderCMA on 04/01/17.
//  Copyright © 2017 Elder Dev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    

    override func viewDidLoad() {
        super.viewDidLoad()

        let test : ServiceUtil = ServiceUtil();
        
        test.executeRequest(url: "http://www.mocky.io/v2/586d10cb120000750e11f176", success: { _ in }, fail: {_ in })

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

