//
//  MyTimer.swift
//  PrimoProgrammaSwift
//
//  Created by Federico D'Armini on 21/11/21.
//

import Foundation

class MyTimer {
    var timer = Timer()
    var tempo = 1.0
    
    func start(){
        timer = Timer.scheduledTimer(timeInterval: tempo, target: self, selector: #selector(timerAction), userInfo: nil, repeats: true)
        sleep(UInt32(tempo))
    }
    
    @objc func timerAction() {
            print("Timer scaduto dopo \(tempo) secondi ")
        }

}
