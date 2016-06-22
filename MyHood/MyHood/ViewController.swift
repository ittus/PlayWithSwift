//
//  ViewController.swift
//  MyHood
//
//  Created by Minh Thang Vu on 6/19/16.
//  Copyright © 2016 Minh Thang Vu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    var posts = [Post]()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "onPostLoaded:", name: "postsLoaded", object: nil)
        DataServices.instance.loadPosts()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
      
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        
        let post = DataServices.instance.loadedPosts[indexPath.row]
        if let cell = tableView.dequeueReusableCellWithIdentifier("PostCell") as? PostCell {
            cell.configureCell(post)
            return cell
        } else {
            var cell = PostCell()
            cell.configureCell(post)
            return cell
        }
        
        
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 88
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {

    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataServices.instance.loadedPosts.count
    }
    
    
    func onPostLoaded(notif: AnyObject) {
        tableView.reloadData()
    }


}

