//
//  ListMovie.swift
//  
//
//  Created by Alfonzo on 2021/9/19.
//

import Foundation

//--------------------------------（POST)----------------------------------------//
struct NewListMovie: Encodable{
    var listTitle : String
    var UserName : String
    var movieID : Int
    var movietitle : String
    var posterPath : String
    var feeling : String
    var ratetext : Int

}

//--------------------------------（PUT)----------------------------------------//

struct UpdateListMovie: Encodable{      
    var ListDetailID : UUID
    var feeling : String
    var ratetext : Int
}

