//
//  ViewController.swift
//  Image app
//
//  Created by COE-009 on 13/09/19.
//  Copyright © 2019 COE-009. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var Array = [UIImage]()
    
    @IBOutlet weak var Imageview: UIImageView!
    
    @IBOutlet weak var Slider1: UISlider!
    
    @IBAction func Slider(_ sender: UISlider) {
        let value=Int(sender.value)
        Imageview.image=Array[value]
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Array=[#imageLiteral(resourceName: "k10"),#imageLiteral(resourceName: "k8"),#imageLiteral(resourceName: "k6"),#imageLiteral(resourceName: "k3"),#imageLiteral(resourceName: "k9")]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func Previous(_ sender: Any) {
        Slider1.value-=1
        Imageview.image=Array[Int(Slider1.value)]
    }
    
    @IBAction func Next(_ sender: Any) {
        Slider1.value+=1
        Imageview.image=Array[Int(Slider1.value)]
    }
}

