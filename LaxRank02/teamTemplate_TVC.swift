//
//  teamTemplate_TVC.swift
//  LaxRank02
//
//  Created by JONATHAN HARLAN on 7/15/16.
//  Copyright © 2016 JONATHAN HARLAN. All rights reserved.
//

import UIKit
import Alamofire

class teamTemplate_TVC: UITableViewController {
    
    var team = [Team]()
//    let allTeams = Team.getAllTeams()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("teamTemplate_TVC viewDidLoad()");
        loadNav();
        getAllTeams()
    }
    // MARK: - Table view data source
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 0
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }

    /*
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)

         Configure the cell...

        return cell
    }
    */


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
// =================== CUSTOM FUNCTIONS ===================== //
    
    func getAllTeams() {
        let url = "http://localhost:3000/rankings/national?number_of_teams=10"
        Alamofire.request(.GET, url)
            .responseJSON { response in
                print(response.result.value);
        }
    }
    
    // Needs to Be DELEGATED
    func loadNav() {
        let frame = view.frame.size
        let navBar: UINavigationBar = UINavigationBar(frame: CGRect(x: 0, y: 0, width: frame.width, height: 100))
        let navItem = UINavigationItem(title: "National Top 25");
        
        let leftButton = UIBarButtonItem(title: "Back", style: UIBarButtonItemStyle.Plain, target: self, action: Selector("back"))
        navItem.leftBarButtonItem = leftButton
        navBar.setItems([navItem], animated: false);
        
        self.view.addSubview(navBar);
    }
    
    func back() {
        // Something cool here
        print("Method Hit");
        self.dismissViewControllerAnimated(true, completion: nil);
    }

}
