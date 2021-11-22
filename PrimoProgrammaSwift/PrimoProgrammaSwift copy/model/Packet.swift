//
//  Package.swift
//  PrimoProgrammaSwift
//
//  Created by Federico D'Armini on 21/11/21.
//

import Foundation

class Packet {
    
    private static var class_id : Int = 0
    private var data: (String,Int) = ("",0)
    private var id : Int
    init (){
        id = Packet.class_id
        Packet.class_id+=1
        
    }
    
    func getColor()->(String,Int){
        return self.data
    }
    
    func setColor(newData : (String,Int))->Void{
        self.data = newData
    }
    
    func getId()->Int{
        return self.id
    }
    
    func getTotalSent()->Int{
        return Packet.class_id
    }
    
}
