//
//  ViewController.swift
//  Test
//
//  Created by KPS Developer on 1/5/20.
//  Copyright © 2020 KPS Developer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let html = """
        <p><strong><span style="font-size: 48px;">First Line</span></strong></p>
        <p><span style="font-size: 28px;">Other Lines</span></p>
        <p><span style="font-size: 28px;">Other Lines</span></p>
        <p><span style="font-size: 28px;">Other Lines</span></p>
        """
        
        let data = Data(html.utf8)
        
        if let attributedString = try? NSAttributedString(data: data, options: [.documentType: NSAttributedString.DocumentType.html], documentAttributes: nil) {
            
            textView.attributedText = attributedString
            
        }
        
    }


}

