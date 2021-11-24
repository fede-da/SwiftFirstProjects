//
//  Data.swift
//  PrimoiSwift
//
//  Created by Federico D'Armini on 21/11/21.
//

import Foundation

class ColorsGenerator{

    private let colors : [(String,Int)] =  [("red",0),("orange",1),("yellow",2),("green",3),("blue",4),("indigo",5),("violet",6)]
    
    func getRandomColor()-> (String,Int){
        let i = Int.random(in: 0..<7)
       return  colors[i] //This is Packet data, first element of the tuple is the color, second one is port destination
    }
    
}
