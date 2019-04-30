//
//  BarData.swift
//  Vizit
//
//  Created by Divyaraj Bakrola on 04/29/19.
//  Copyright © 2018 Guidie. All rights reserved.
//

import Foundation


class BarData {
    
    static var results:[[String: Any]] = []
    
    
    init() {
        
    }
    
    static func fetchData(_ city: String!, _ state: String!) {
    
        let url = URL(string: "https://vizitus.herokuapp.com/search")!
        let location = "\(city),\(state)"

        
        var request = URLRequest(url:url, cachePolicy: .reloadIgnoringCacheData, timeoutInterval: 10)
        request.httpMethod = "POST"
        let postString = "location=\(location)&food=bars"
        request.httpBody = postString.data(using: .utf8)
        
        let session = URLSession(configuration: .default, delegate: nil, delegateQueue: OperationQueue.main)
        
        let task = session.dataTask(with: request) {
            
            (data, response, error) in
            
            if let error = error {
                
                print(error.localizedDescription)
            }
            
            if let data = data {
                
                let dataDictionary = try! JSONSerialization.jsonObject(with: data, options: []) as! [String:Any]
                BarData.results = dataDictionary["results"] as! [[String:Any]]
            }
            
            
        }
        
        task.resume()
    }
    
}
