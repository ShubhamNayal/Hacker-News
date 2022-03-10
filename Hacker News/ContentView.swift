//
//  ContentView.swift
//  Hacker News
//
//  Created by Shubham Nayal on 14/11/21.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        
        NavigationView{
            List(networkManager.posts){ post in
                NavigationLink(destination: DetailView(url : post.url)){
                HStack{
                    Text(String(post.points))
                    Text(post.title)
                       
                }
            }
            .navigationTitle("Hacker News")
            .foregroundColor(.green)
            }
        }
        .onAppear{
            self.networkManager.fetchUrl()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

