//
//  NetWorkViewModel.swift
//  GitHubSearcher
//
//  Created by Duale on 6/24/20.
//  Copyright © 2020 Duale. All rights reserved.
//

import Foundation

class NetworkViewModel {
    var users = [User]() , networkHandler = Networking()
    func getDataFromNetwork (url : String  , completion: @escaping (User) -> ()) {
        networkHandler.response(url: url) { [weak self ](user) in
            let uzer : User = user
            self?.users.append(uzer)
        }
    }
    func userCountForTableViewRows()->Int {
        return users.count
    }
    func usersArray()->[User] {
       return users
    }
}
