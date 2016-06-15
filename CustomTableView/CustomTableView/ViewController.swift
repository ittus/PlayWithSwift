//
//  ViewController.swift
//  CustomTableView
//
//  Created by Minh Thang Vu on 6/15/16.
//  Copyright © 2016 Minh Thang Vu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    var girlsImage = ["http://nguoinoitieng.vn/photo/tieu-su-hot-girl-tam-tit-1815.jpg",
                      "http://cdn.kul.vn/data/article/2015/10/15/midu-328328-3-_1444905533.jpg",
                      "http://k14.vcmedia.vn/2016/hanh-trinh-nhan-sac-ngay-cang-tuyet-tran-cua-hoa-hau-thu-thao-1454684404145.jpg",
                      "http://media.doisongphapluat.com/371/2015/1/31/hoa-hau-ngoc-han-doisongphapluat%20(19).jpg",
                      "http://dantri4.vcmedia.vn/WF7a6LT8JiJdVF1l6FZ/Image/2014/10/thuy1-43733.jpg"]
    var girlName = ["Tam Tit", "Midu", "Thu Thao", "Ngoc Han", "Mai Phuong Thuy"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCellWithIdentifier("girlCell") as? GirlTableViewCell {
            
            var img: UIImage!
            
            let url = NSURL(string: girlsImage[indexPath.row])!
            if let data = NSData(contentsOfURL: url) {
                img = UIImage(data: data)
                
            } else {
                img = UIImage(named: "people")
            }
            
            cell.configureCell(img, text: girlName[indexPath.row])
            
            return cell
        } else {
            return GirlTableViewCell()
        }

    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return girlsImage.count
    }

}

