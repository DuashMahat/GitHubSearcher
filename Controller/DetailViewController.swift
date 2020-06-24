//
//  DetailViewController.swift
//  GitHubSearcher
//
//  Created by Duale on 6/23/20.
//  Copyright © 2020 Duale. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var url: UILabel!
    @IBOutlet weak var followers: UILabel!
    @IBOutlet weak var following: UILabel!
    var nam : String = ""
    var fwng : Int = 0
    var fwded : Int = 0
    var urlstr : String = ""
    var publicresp : Int = 0
    var imag : UIImage = UIImage(named: "")!
    override func viewDidLoad() {
        super.viewDidLoad()
        displayThings()
    }
    
    func displayThings() {
        image.image = imag
        followers.text = "Followers:  " +  String(fwng)
        following.text =  "Followers:  " + String(fwded)
        url.text =  "Public Respositories:  " + String(publicresp)
        name.text =  "Name:  "  +  nam
//        following.beautifyII()
//        followers.beautifyII()
//        url.beautifyII()
//        name.beautifyII()
        
    }

}
