//
//  main.swift
//  PrimoProgrammaSwift
//
//  Created by Federico D'Armini on 19/11/21.
//

//-----Vedi appunti-----
import Foundation

var source1 = StartPoint()
var router1 = Router()
var router2 = Router()

var endPoints = [EndPoint(colore: 0),EndPoint(colore:1),EndPoint(colore:2),EndPoint(colore:3),EndPoint(colore:4),EndPoint(colore:5),EndPoint(colore:6),EndPoint(colore:7)]

var ports1 = [router1,router1,router1,router1,router1,router1,router1]
var ports2 = [router2,router2,router2,router2,router2,router2,router2]

router2.setDest(lista: endPoints)
router1.setDest(lista: ports2)
source1.setDest(lista: ports1)


source1.startStream()
/*
func stopStream(){
    DispatchQueue.main.async {
        self.thread.cancel()
    }
    print("Sent : \(self.packet.getTotalSent()) packets")
}

func startStreamFor(time:UInt32){
    thread=DispatchWorkItem{
        DispatchQueue.main.async {
            while true {
                self.sendPacket()
                usleep(100000) // 1000000 -> 1 second
            }
        }
    }
    DispatchQueue.global().async(execute: thread)
    sleep(time)
    self.stopStream()
}
*/
