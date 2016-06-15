//
//  ViewController.swift
//  WKWebView
//
//  Created by Minh Thang Vu on 6/15/16.
//  Copyright © 2016 Minh Thang Vu. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var viewMain: UIView!
    var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        webView = WKWebView()
        viewMain.addSubview(webView)
       
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func viewDidAppear(animated: Bool) {
        let frame = CGRectMake(0, 0, viewMain.bounds.width, viewMain.bounds.height)
        webView.frame = frame
        loadWebsite("https://developer.apple.com/swift/blog/")
    }
    
    func loadWebsite(urlStr: String) {
        let url = NSURL(string: urlStr)!
        let request = NSURLRequest(URL: url)
        
        webView.loadRequest(request)

    }

    @IBAction func loadSwiftAction(sender: UIButton) {
        loadWebsite("https://developer.apple.com/swift/blog/")
    }
    @IBAction func loadReactAction(sender: UIButton) {
        loadWebsite("http://facebook.github.io/react/")
    }

    @IBAction func loadPythonAction(sender: UIButton) {
        loadWebsite("https://realpython.com/blog/")
    }
}

