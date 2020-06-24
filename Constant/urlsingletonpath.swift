//
//  urlsingletonpath.swift
//  GitHubSearcher
//
//  Created by Duale on 6/23/20.
//  Copyright © 2020 Duale. All rights reserved.
//

import Foundation
import UIKit

class UrlSingletonPath {
   static let urlpath = UrlSingletonPath()
    private init() {}
    let path = "https://api.github.com/users/"
    func sharedPath()->String {
       return path
    }
}
