//
//  uiextensions.constants.swift
//  GitHubSearcher
//
//  Created by Duale on 6/23/20.
//  Copyright © 2020 Duale. All rights reserved.
//

import Foundation
import UIKit

extension UIButton {
    func beautify () {
        self.layer.borderWidth = 1
        self.layer.cornerRadius = 2
        self.backgroundColor = .clear
        self.layer.borderColor = UIColor.systemOrange.cgColor
        self.setTitleColor(.systemOrange, for: .normal)
    }
}


extension UITextField {
    func setPlaceHolder () {
        self.placeholder = "Enter a Github User Name"
        self.adjustsFontSizeToFitWidth = true
        self.textAlignment = .center
        self.layer.borderWidth = 1
         self.layer.cornerRadius = 2
        self.layer.borderColor = UIColor.black.cgColor
    }
}

extension UITableView {
    func setFinishings() {
        self.backgroundColor = UIColor.clear
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.systemOrange.cgColor
    }
}

extension UILabel {
    func beautify( str : String) {
        self.layer.borderWidth = 1.0
        self.layer.borderColor =  UIColor.systemOrange.cgColor
        self.textAlignment = .center
        self.adjustsFontSizeToFitWidth = true
        self.textColor = UIColor.white
        self.text = str
    }
    
    func beautifyII(str : String) {
          self.layer.borderWidth = 1.0
          self.layer.borderColor =  UIColor.black.cgColor
          self.textAlignment = .center
          self.adjustsFontSizeToFitWidth = true
          self.textColor = UIColor.black
          self.text = str
      }
}

extension UIImageView {
    func beautifty() {
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.systemOrange.cgColor
        self.layer.masksToBounds = false
        self.layer.cornerRadius = self.frame.height/2
        self.clipsToBounds = true
        self.contentMode = .scaleAspectFill
    }
}

extension UIView {
    func beautifyIV() {
        self.layer.borderWidth = 1.0
        self.layer.borderColor =  UIColor.red.cgColor
            
    }
}
