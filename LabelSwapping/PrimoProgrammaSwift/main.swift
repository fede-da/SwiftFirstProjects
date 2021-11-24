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

var endPoints = [EndPoint(colore:"red"),EndPoint(colore:"orange"),EndPoint(colore:"yellow"),EndPoint(colore:"green"),EndPoint(colore:"blue"),EndPoint(colore:"indigo"),EndPoint(colore:"violet")]

var ports1 = [router1,router1,router1,router1,router1,router1,router1]
var ports2 = [router2,router2,router2,router2,router2,router2,router2]

router2.setDest(lista: endPoints)
router1.setDest(lista: ports2)
source1.setDest(lista: ports1)

let t = Task{
    await source1.startStream()
}

func printStats(){
    var rec = 0
    for ep in endPoints {
        ep.printStats()
        rec += ep.getReceived()
    }
    Packet().printTotalSent()
    print("Checksum, received : \(rec) packets")
}

sleep(6) //This time can be changed as we want

Task{
    source1.stopStream()
    t.cancel()
}
printStats()
