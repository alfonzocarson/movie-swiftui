//
//  metadata.swift
//  
//
//  Created by Alfonzo on 10/11/2022.
//

import Foundation

//MARK: For pagnation API
struct MetaData : Decodable {
    let total_pages : Int
    let total_results : Int
    var page : Int
}
