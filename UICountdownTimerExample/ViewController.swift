//
//  ViewController.swift
//  UICountdownTimerExample
//
//  Created by Rodion Negov on 5/30/18.
//  Copyright © 2018 Rodion Negov. All rights reserved.
//

import UIKit
import UICountdownTimer

class ViewController: UIViewController {

    @IBOutlet weak var countdownTV: CountdownTimerView!
    var countdownTimer: CountdownTimerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if countdownTV.presenter == nil {
            let presenter  = CountdownTimerPresenter()
            
            countdownTV.presenter = presenter
            presenter.view        = countdownTV
        }
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        if countdownTimer == nil {
            countdownTimer = CountdownTimerView(frame: CGRect(x: 100, y: 100, width: 300, height: 150))
            let presenter  = CountdownTimerPresenter()
            
            countdownTimer.presenter = presenter
            presenter.view           = countdownTimer
            
            view.addSubview(countdownTimer)
        }
    }


}

