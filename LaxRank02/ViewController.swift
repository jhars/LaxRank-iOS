//
//  ViewController.swift
//  LaxRank02
//
//  Created by JONATHAN HARLAN on 7/14/16.
//  Copyright © 2016 JONATHAN HARLAN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        buildNavBar()
        
    }
    
    func buildNavBar() {
        let frame = view.frame.size
        let navBar: UINavigationBar = UINavigationBar(frame: CGRect(x: 0, y: 0, width: frame.width, height: 100))
        let navItem = UINavigationItem(title: "LaxRank");
        
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let nextViewCtlr = storyBoard.instantiateViewControllerWithIdentifier("teamTemplate")
        
        let browseItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.Search, target: nextViewCtlr, action: Selector("browseTeamsBtnClicked"));
        
        navItem.rightBarButtonItem = browseItem;
        navBar.setItems([navItem], animated: false);
        
        self.view.addSubview(navBar);
    }
    
    func browseTeamsBtnClicked() {
//        self.performSegueWithIdentifier("NatTop25", sender: nil)
//        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
//        let nextViewCtlr = storyBoard.instantiateViewControllerWithIdentifier("teamTemplate")
//        let nextViewController = storyBoard.instantiateViewControllerWithIdentifier("nextView") as NextViewController
//        self.presentViewController(nextViewCtlr, animated:true, completion:nil)
//        self.presentViewController(nextViewCtlr, animated:true, completion: nil)
        
        self.performSegueWithIdentifier("browseAll", sender: self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

