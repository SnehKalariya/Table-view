//
//  ViewController.swift
//  Table view
//
//  Created by R87 on 07/02/35.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
   var fgColor = ["Red","Black","Blue","Orange","Green","Puple","Yellow","Brown","Cyan"]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fgColor.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = fgColor[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView:UITableView,titleForHeaderInSection section: Int) -> String? {
        if section == 0{
            return "section 1"
        }
        else if section == 1 {
            return "section 2"
        }
        return ""
    }

}

