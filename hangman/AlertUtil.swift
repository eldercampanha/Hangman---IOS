//
//  AlertUtil.swift
//  hangman
//
//  Created by ElderCMA on 04/01/17.
//  Copyright © 2017 Elder Dev. All rights reserved.
//

import UIKit

class AlertUtil: NSObject {

    
    static func getAlertWithOK(title:String, message:String, onClick: @escaping (Void) -> Void) ->
        UIAlertController {
        
        // create alert with title and message
        let alertController = UIAlertController(title:title, message:message,
                                                preferredStyle: UIAlertControllerStyle.alert)
        
        //create action
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default) {
            UIAlertAction in
            onClick()
        }
        
        // add Action
        alertController.addAction(okAction)
        
        return alertController
    }
}
