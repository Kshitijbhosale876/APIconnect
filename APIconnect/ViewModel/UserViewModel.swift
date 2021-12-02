//
//  UserViewModel.swift
//  APIconnect
//
//  Created by Kshitij Bhosale on 02/12/21.
//

import Foundation

class UserViewModel {
    
    weak var vc: ViewController?
    var arrUser = [UserModel]()
    
    func getAllUserData() {
        URLSession.shared.dataTask(with: URL(string: "https://api.github.com/repos/alamofire/alamofire/issues?state=all")!) { data, response, error in
            if error == nil {
                if let data = data {
                    do{
                        let userRespone = try JSONDecoder().decode([UserModel].self, from: data)
                        self.arrUser.append(contentsOf: userRespone)
                        DispatchQueue.main.async {
                            self.vc?.tableView.reloadData()
                        }
                    } catch let err{
                        print(err.localizedDescription)
                        
                    }
                }
            }
            else {
                print(error?.localizedDescription)
            }
        }.resume()
    }
    
}
