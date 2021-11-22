//
//  Router.swift
//  PrimoProgrammaSwift
//
//  Created by Federico D'Armini on 21/11/21.
//

import Foundation

class Router : ITComponent{
    //Ogni router ha 7 porte in uscita (dest)
    //Ogni porta di un router corrisponde ad un colore
    // IL colore della porta dipende dall'indice di quel router in dest
    //I colori definiti in Data rispecchiano l'ordine dei colori sulle porte
    
    private var packets : [Packet]
    
    override init(){
        packets=[]
        super.init()
    }
    
    override func addPacket(packet:Packet)->Void {
        sendPacket(packet: packet)
    }
    
    override func sendPacket(packet:Packet){
        let port = packet.getColor().1
        self.dest[port].addPacket(packet: packet)
    }
    
    func consume(){
        while true {
            consumePacket()
        }
    }
    
    func consumePacket(){
        if !packets.isEmpty {
            sendPacket(packet: packets[0])
        }
    }
    
    
}
