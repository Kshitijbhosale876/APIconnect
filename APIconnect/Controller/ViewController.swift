//
//  ViewController.swift
//  APIconnect
//
//  Created by Kshitij Bhosale on 02/12/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var viewModelUser = UserViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModelUser.vc = self
        
        viewModelUser.getAllUserData()
        //tableView.register(UserCell.self, forCellReuseIdentifier: "UserCell")
        tableView.register(UINib(nibName: "UserCell", bundle: nil), forCellReuseIdentifier: "UserCell")
        
        // Do any additional setup after loading the view.
    }


}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModelUser.arrUser.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UserCell", for: indexPath) as? UserCell
       let modelUser = viewModelUser.arrUser[indexPath.row]
        cell?.lblTitle.text = "\(modelUser.title)"
        cell?.lblState.text = "\(modelUser.state)"
        return cell!
        
    }
}

