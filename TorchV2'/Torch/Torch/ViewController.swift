//
//  ViewController.swift
//  Torch
//
//  Created by Artyom Chshyogolev on 18.03.2018.
//  Copyright © 2018 Artyom Chshyogolev. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func ButtonPressed(_ sender: Any) {
        let device = AVCaptureDevice.default(for: AVMediaType.video)
        if (device?.hasTorch)! {
            do {
                
                try device?.lockForConfiguration()
                device?.torchMode = device?.torchMode == AVCaptureDevice.TorchMode.on ? .off : .on
                device?.unlockForConfiguration()
                
                
            } catch {
                
                print("Error")
                
            }
    }
    
}

}
