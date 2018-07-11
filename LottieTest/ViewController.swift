//
//  ViewController.swift
//  LottieTest
//
//  Created by HINOMORI HIROYA on 2018/07/11.
//  Copyright © 2018年 HINOMORI HIROYA. All rights reserved.
//

import UIKit

import Lottie

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        guard let asset = NSDataAsset(name: "LottieTestData", bundle: Bundle.main) else { return }
        do {
            if let json = try JSONSerialization.jsonObject(with: asset.data, options: .allowFragments) as? [AnyHashable: Any] {
                let lotView = LOTAnimationView(json: json)
                lotView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
                lotView.center = CGPoint(x: view.frame.size.width / 2, y: view.frame.size.height / 2)
                lotView.loopAnimation = true
                lotView.play()
                view.addSubview(lotView)
            }
        } catch {
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

