//
//  ViewController.swift
//  GitHubSearcher
//
//  Created by Duale on 6/23/20.
//  Copyright © 2020 Duale. All rights reserved.
//

import UIKit
import SVProgressHUD

class MainViewController: UIViewController {
    var newtorkhandler = Networking()
//    var viewmodel = NetworkViewModel()
    var users = [User]()
    @IBOutlet weak var tableview: UITableView!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var buttonForClick: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        forViewDownload()
        hideKeyBoardWhenTappedAround()
    }
    @IBAction func onClickButton(_ sender: UIButton) {
        print(UrlSingletonPath.urlpath.sharedPath() + textField.text!)
        newtorkhandler.response(url: UrlSingletonPath.urlpath.sharedPath() + textField.text!) { (uses: User) in
            let used : User
            used = uses
            self.users.append(used)
            print(self.users)
            DispatchQueue.main.async {
                       self.tableview?.reloadData()
             }
        }
        
        
//        viewmodel.getDataFromNetwork(url: UrlSingletonPath.urlpath.sharedPath() + textField.text!) { (user) in
//            self.users.append(viewmodel.usersArray())
//            DispatchQueue.main.async {
//                self.tableview.reloadData()
//            }
//        }
       
    }
    
    
    
}

extension MainViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count;
//        return viewmodel.userCountForTableViewRows()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UserViewCell") as! UserViewCell
        let url = URL(string: users[indexPath.row].avatar_url)
        let data = try? Data(contentsOf: url!)
        cell.avatar.beautifty()
        cell.viewHold.beautifyIV()
        cell.avatar.image = UIImage(data: data!)
        cell.name.beautify(str: users[indexPath.row].name)
        cell.repos.beautifyII(str: "Repos: " + String(users[indexPath.row].public_repos))
        cell.following.beautifyII(str: "Following: " + String(users[indexPath.row].following))
        cell.followed.beautifyII(str: "Followers: " + String(users[indexPath.row].followers))
        cell.url.beautifyII(str: "Url: " + users[indexPath.row].html_url)
        return cell
    }
}
extension MainViewController : UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let storyBd = UIStoryboard.init(name: "Main", bundle: nil)
        guard let detailVc = storyBd.instantiateViewController(identifier: "DetailViewController") as? DetailViewController else {return}
        let url = URL(string: users[indexPath.row].avatar_url)
        let data = try? Data(contentsOf: url!)
        detailVc.fwded = users[indexPath.row].following
        detailVc.fwng = users[indexPath.row].followers
        detailVc.publicresp = users[indexPath.row].public_repos
        detailVc.imag = UIImage(data: data!)!
        detailVc.nam = users[indexPath.row].name
        detailVc.displayThings()
        navigationController?.pushViewController(detailVc, animated: true)
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        var height : CGFloat = CGFloat()
        height = 200
        return height
        
    }
}



extension MainViewController {
    func forViewDownload() {
        tableview.delegate = self
        tableview.dataSource = self
        textField.delegate = self
        tableview.delegate = self
        tableview.dataSource = self
        textField.setPlaceHolder()
        buttonForClick.beautify()
        tableview?.setFinishings()
        navigationItem.title = "GitHub Googling"
    }
}


extension MainViewController : UITextFieldDelegate  {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

extension MainViewController  {
    func hideKeyBoardWhenTappedAround() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(hidekeyboard))
        view.addGestureRecognizer(tap)
    }
    
    @objc func hidekeyboard() {
        view.endEditing(true)
    }
}
