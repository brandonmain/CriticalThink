//
//  FakeboxModel.swift
//  CriticalThink Extension
//
//  Created by Brandon Main on 9/13/20.
//  Copyright © 2020 Brandon Main. All rights reserved.
//

import Foundation

class FakeboxModel {
    var success         : Bool
    var title           : String
    var titleDecision   : String
    var titleScore      : Float
    var content         : String
    var contentDecision : String
    var contentScore    : Float
    var domain          : String
    var domainCategory  : String
    
    init() {
        success = false
        title = ""
        titleDecision = ""
        titleScore = 0.0
        content = ""
        contentDecision = ""
        contentScore = 0.0
        domain = ""
        domainCategory = ""
    }
    
    
    // Function that makes a POST request to the Fakebox endpoint
    func request() {
        let json: [String: Any] = [
            "url": domain,
            "title": title,
            "content": content
        ]

        let jsonData = try? JSONSerialization.data(withJSONObject: json)

        // create post request
        let url = URL(string: "http://35.193.125.94:8080/fakebox/check")!
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("\(String(describing: jsonData?.count))", forHTTPHeaderField: "Content-Length")
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        // insert json data to the request
        request.httpBody = jsonData

        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data, error == nil else {
                print(error?.localizedDescription ?? "No data")
                return
            }
            let responseJSON = try? JSONSerialization.jsonObject(with: data, options: [])
            if let responseJSON = responseJSON as? [String: Any] {
                //Print successful response
                print(responseJSON)
            }
        }

        task.resume()
    }
}
