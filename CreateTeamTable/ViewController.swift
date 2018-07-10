//
//  ViewController.swift
//  CreateTeamTable
//
//  Created by Avadh Bambhroliya on 17/06/18.
//  Copyright © 2018 Avadh Bambhroliya. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var tblCreateTeam : UITableView!
    let Array = NSMutableArray()
    let mainarray = [
        ["section":["teamNAme":"tAvadh","email":"fvsdfds@vf.com","phone":""],
         "Row":[
            ["cname":"Avadhdd","email":"fvsdfds@vf.com","phone":""],
            ["cname":"Avadhdddggggg","email":"fgfdgdfvsdfds@vf.com","phone":""],
            ["cname":"Avadh","email":"fvsdfds@vf.com","phone":""],
            ["cname":"Avadh","email":"fvsdfds@vf.com","phone":""]]],
        ["section":["teamNAme":"chirag","email":"","phone":""],"Row":[
            ["cname":"Avadhdd","email":"fvsdfds@vf.com","phone":""],
            ["cname":"Avadhdddggggg","email":"fgfdgdfvsdfds@vf.com","phone":""]]]
        ] as [Any]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tblCreateTeam.delegate = self
        tblCreateTeam.dataSource = self
        let nib = UINib(nibName: "CreateTeamHeaderView", bundle: nil)
        let nib2 = UINib(nibName: "RowTableViewCell", bundle: nil)
        tblCreateTeam.register(nib2, forCellReuseIdentifier: "RowTableViewCell")
        tblCreateTeam.register(nib, forHeaderFooterViewReuseIdentifier: "CreateTeamHeaderView")
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let array = mainarray[section] as! [String:Any]
        let row = array["Row"] as! [[String:Any]]
        return row.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return mainarray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RowTableViewCell", for: indexPath) as! RowTableViewCell
        let array = mainarray[indexPath.section] as! [String:Any]
        let row = array["Row"] as! [[String:Any]]
        cell.lbl.text = (row[indexPath.row])["cname"] as? String
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 100
    }

    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let array = mainarray[section] as! [String:Any]
        let row = array["section"] as! [String:Any]
        let headerView = tableView.dequeueReusableHeaderFooterView(withIdentifier: "CreateTeamHeaderView") as! CreateTeamHeaderView
        headerView.txtName.text = row["teamNAme"] as! String
        return headerView
    }

}
