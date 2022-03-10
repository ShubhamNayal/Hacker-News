//
//  NetworkManager.swift
//  Hacker News
//
//  Created by Shubham Nayal on 14/11/21.
//

import Foundation

class NetworkManager: ObservableObject{
    @Published  var posts = [Post]()
    func fetchUrl(){
        if let url = URL(string: "http://hn.algolia.com/api/v1/search?tags=front_page"){
            let session = URLSession(configuration: .default )
            let task = session.dataTask(with: url) { (data, responce, error) in
                if  error == nil{
                    let decoder = JSONDecoder()
                    if  let safeData = data{
                        do{
                            let result  =  try  decoder.decode(Result.self, from: safeData)
                            DispatchQueue.main.async {
                                self.posts = result.hits
                            }
                            
                        }catch{
                            print(error)
                        }
                        
                    }
                }
            }
            task.resume()
        }
        
    }
    
}
