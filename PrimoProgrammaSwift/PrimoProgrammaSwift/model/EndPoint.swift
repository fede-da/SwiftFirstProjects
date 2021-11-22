//
//  ESPoint.swift
//  PrimoProgrammaSwift
//
//  Created by Federico D'Armini on 21/11/21.
//

import Foundation

class EndPoint : ITComponent {
    
    private let color : String
    private var packetsReceived : Int
    private var packetsDiscarded : Int
    
    init(colore:String){
        self.color=colore
        self.packetsReceived=0
        self.packetsDiscarded=0
    }
    
    override func addPacket(packet: Packet) {
        if packet.getColor().0 == self.color {
        self.packetsReceived+=1
        print("Received packet \(packet.getColor().0)")
        } else {
            print("Discarded packet \(packet.getColor().0)")
            self.packetsDiscarded+=1
        }
    }
    
    func printStats()->Void{
        print("Received \(self.packetsReceived) \(self.color), lost \(self.packetsDiscarded) ")
    }
    
}
