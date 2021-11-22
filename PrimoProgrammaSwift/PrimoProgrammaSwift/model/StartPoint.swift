//
//  StartPoint.swift
//  PrimoProgrammaSwift
//
//  Created by Federico D'Armini on 21/11/21.
//

import Foundation

class StartPoint : ITComponent {
    
    private let generator : ColorsGenerator
    private var packet:Packet
    
    override init(){
        generator=ColorsGenerator()
        self.packet = Packet()
        super.init()
    }
    
    func sendPacket(){
        self.packet.setColor(newData: generator.getRandomColor())
        let port = self.packet.getColor().1
        print("Sent packet \(self.packet.getColor().0) number \(self.packet.getTotalSent())")
        self.dest[port].addPacket(packet: self.packet)
        self.packet = Packet()
    }
    
    func startStream(){
        var r1 = Int.random(in: 0..<20)
        var r2 = Int.random(in: 0..<20)
        while r1 != r2 {
            sendPacket()
            usleep(10000) // 1000000 -> 1 second
            r1 = Int.random(in: 0..<20)
            r2 = Int.random(in: 0..<20)
        }
        self.packet.printTotalSent()
    }
    
}
