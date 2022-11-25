//
//  CommentTodo.swift
//  
//
//  Created by Alfonzo on 2021/6/3.
//

import Foundation

struct CommentTodo: Decodable,Encodable{
    var Text: String
    var UserName: String
    var ArticleID: String
    var LikeCount: Int
}

struct UpdateComment: Decodable,Encodable {
    var CommentID: UUID
    var Text: String
    var LikeCount: Int
}
