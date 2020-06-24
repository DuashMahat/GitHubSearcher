//
//  model.swift
//  GitHubSearcher
//
//  Created by Duale on 6/23/20.
//  Copyright © 2020 Duale. All rights reserved.
//

import Foundation
import UIKit

struct User : Codable  {
    var followers : Int
    var following : Int
    var public_repos : Int
    var avatar_url : String
    var name : String
    var html_url : String
}


