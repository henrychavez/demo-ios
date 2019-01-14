//
//  SecondViewController.swift
//  DEMO
//
//  Created by Henry Chavez on 1/12/19.
//  Copyright © 2019 Henry Chavez. All rights reserved.
//

import UIKit
import WebKit

class SecondViewController: UIViewController {

    @IBOutlet weak var webview: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.loadWebview()
    }
    
    func loadWebview() {
        let url = URL(string: "https://www.google.com")
        let urlRequest = URLRequest(url: url!)
        webview.load(urlRequest)
    }


}

