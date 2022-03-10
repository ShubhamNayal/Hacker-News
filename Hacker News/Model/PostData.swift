//
//  PostData.swift
//  Hacker News
//
//  Created by Shubham Nayal on 14/11/21.
//

import Foundation
struct Result :Decodable{
    let hits : [Post]
}
struct Post: Decodable , Identifiable{
    var id : String{
        return objectID
    }
    let objectID : String
    let title :String
    let url : String?
    let points : Int
}
