//
//  CustomList.swift
//  
//
//  Created by Alfonzo on 2021/8/1.
//

import Foundation

//--------------------------------（GET)----------------------------------------//
struct CustomList: Decodable, Identifiable{       
    var id: UUID?
    var title: String
    var user: Owner?
    var update_on: String   //db is 'DATE', but here is 'STRING'
}

//struct ListOwner: Decodable, Identifiable{      
//    var id: UUID?
//    var UserName: String
//}

//--------------------------------(GET)-----------------------------------------//
struct ListDetail:Decodable, Identifiable {        
    var id: UUID?
    var movie: Int
    var title: String
    var posterPath: String?
    var ratetext: Int
    var feeling: String
    var list: thisListID?
    
    var posterURL: URL {
        return URL(string: "https://image.tmdb.org/t/p/w500\(posterPath ?? "")")!
    }
    
    
}

struct thisListID: Decodable, Identifiable{      
    var id: UUID
}

//--------------------------------(POST)--------------------------------------//
struct NewList: Decodable, Encodable{
    var UserName: String
    var Title: String
}
struct NewListRes: Decodable, Identifiable{      
    var id: UUID?
    var Title: String
    var user: NewListUser?
    var updatedOn: String   //db is 'DATE', but here is 'STRING'
}
struct NewListUser: Decodable, Identifiable{
    var id: UUID?
}
//--------------------------------（PUT)----------------------------------------//

struct UpdateList: Decodable,Encodable{
    var listID : UUID
    var listTitle : String
}

