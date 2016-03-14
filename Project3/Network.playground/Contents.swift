//: Playground - noun: a place where people can play

import UIKit
import Foundation
import XCPlayground

XCPlaygroundPage.currentPage.needsIndefiniteExecution = true


if let url = NSURL(string: "http://www.petesalvo.com/products.json") {
    
    let session = NSURLSession.sharedSession()
    
    let task = session.dataTaskWithURL(url, completionHandler: { (data, response, error) -> Void in
        if error != nil {
            print("error: \(error!.localizedDescription): \(error!.userInfo)")
        } else if data != nil {
            
            do {
                let json = try NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.AllowFragments) as! [String:AnyObject]
                
                if let results = json["results"] as? [[String: AnyObject]] {
                    for result in results {
                        if let name = result["name1"] as? String {
                            print(name)
                        }
                        if let prices = result["prices"] as? [String : AnyObject] {
                            if let price = prices["list"] as? String {
                                print(price)
                            }
                        }
                        // ...
                    }
                }
                
            } catch {
                print("json error: \(error)")
            }
            
        }
    })
    
    task.resume()
}
else {
    print("Unable to create NSURL")
}
