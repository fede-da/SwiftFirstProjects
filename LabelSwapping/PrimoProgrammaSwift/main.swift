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

source1.startStream()

for ep in endPoints {
    ep.printStats()
}

