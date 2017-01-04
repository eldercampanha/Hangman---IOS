//
//  ServiceUtil.swift
//  hangman
//
//  Created by ElderCMA on 04/01/17.
//  Copyright © 2017 Elder Dev. All rights reserved.
//

import UIKit

class ServiceUtil: NSObject {

    
    static func executeRequest(url: String, success: @escaping (String) -> (Void), fail: @escaping (String) -> (Void)) -> Void {
    
        guard let url = NSURL(string: url) else {
            print("Error: cannot create URL")
            return
        }
        let urlRequest = NSURLRequest(url: url as URL)
        
        // set up the session
        let config = URLSessionConfiguration.default
        let session = URLSession(configuration: config)
        
        // make the request
        let task = session.dataTask(with: urlRequest as URLRequest, completionHandler: { (data, response, error) in
            
            let xml = NSString(data: data!, encoding: String.Encoding.utf8.rawValue)
            
            if((error) != nil){
                fail(error as! String)
            } else {
                success(xml as! String)
            }
        })
        
        task.resume()
    
    }
    
}
