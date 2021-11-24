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
    private var stream:Bool
    
    override init(){
        generator=ColorsGenerator()
        self.packet = Packet()
        self.stream=false
        super.init()
    }
    
    func sendPacket(){
        self.packet.setColor(newData: generator.getRandomColor())
        let port = self.packet.getColor().1
        print("Sent packet \(self.packet.getColor().0) number \(self.packet.getTotalSent())")
        self.dest[port].addPacket(packet: self.packet)
        self.packet = Packet()
    }
    
    func startStream () async {
        self.stream=true
        while self.stream {
            sendPacket()
            usleep(1000) // 1000000 -> 1 second
        }
    }
    
    func stopStream() {
        self.stream=false;
    }
    
}
