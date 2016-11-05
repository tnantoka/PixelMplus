//
//  ViewController.swift
//  Example
//
//  Created by Tatsuya Tobioka on 11/5/16.
//  Copyright © 2016 tnantoka. All rights reserved.
//

import UIKit

import PixelMplus

class ViewController: UIViewController {

    @IBOutlet weak var labelRegular10: UILabel!
    @IBOutlet weak var labelBold10: UILabel!
    
    @IBOutlet weak var labelRegular12: UILabel!
    @IBOutlet weak var labelBold12: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = UIColor.black
        
        setFont(label: labelRegular10, fontName: PixelMplus.regular10)
        setFont(label: labelBold10, fontName: PixelMplus.bold10)
        setFont(label: labelRegular12, fontName: PixelMplus.regular12)
        setFont(label: labelBold12, fontName: PixelMplus.bold12)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func setFont(label: UILabel, fontName: String) {
        label.text = fontName
        label.textColor = UIColor.white
        label.font = UIFont(name: fontName, size: 20.0)
    }
}

