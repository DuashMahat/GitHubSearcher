//
//  NetWorkingHandler.swift
//  GitHubSearcher
//
//  Created by Duale on 6/24/20.
//  Copyright © 2020 Duale. All rights reserved.
//

import Foundation

class Networking {
    
    func response (url : String  , completion: @escaping (User) -> ()) {
        guard let url = URL(string: url) else {return}
        URLSession.shared.dataTask(with: url, completionHandler: { (data , response , error ) in
            self.urlCompletionHandler(data: data, response: response, error: error, completion: completion)
      }).resume()
    }
    
    func urlCompletionHandler (data : Data?  , response : URLResponse? , error: Error? , completion: (User) -> ()) {
        guard let data = data else {return}
        do {
           let jsondecoder = JSONDecoder()
            let users = try jsondecoder.decode(User.self, from: data)
            completion(users)
        } catch {
           print("Error \(error)")
        }
    }
}

