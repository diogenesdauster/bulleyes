//
//  AboutViewController.swift
//  BullsEye
//
//  Created by Diogenes Dauster on 1/26/19.
//  Copyright © 2019 Diogenes Dauster. All rights reserved.
//

import UIKit
import WebKit

class AboutViewController: UIViewController {

    @IBOutlet weak var webview: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if let htmlPath = Bundle.main.path(forResource: "BullsEye", ofType: "html"){
            let url = URL(fileURLWithPath: htmlPath)
            let request = URLRequest(url: url)
            webview.load(request)
        }
        
    }
    
    @IBAction func close(){
        dismiss(animated: true, completion: nil)
    }

}
