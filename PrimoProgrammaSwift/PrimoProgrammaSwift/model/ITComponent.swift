//
//  ITComponent.swift
//  PrimoProgrammaSwift
//
//  Created by Federico D'Armini on 21/11/21.
//

import Foundation

class ITComponent{
    internal var dest : [ITComponent]
    
    init(){
        dest = []
    }
    
    func addPacket(packet:Packet)->Void{
    }
    
    func sendPacket(packet:Packet)->Void{
    }
    
    func setDest(lista:[ITComponent]){
        self.dest=lista
    }
    
}
