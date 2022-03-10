//
//  WebViews.swift
//  Hacker News
//
//  Created by Shubham Nayal on 15/11/21.
//

import Foundation
import SwiftUI
import WebKit


struct WebView : UIViewRepresentable{
    let urlString : String?
    func makeUIView(context: Context) -> WebView.UIViewType {
        return WKWebView()
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString{
            if let url = URL(string: safeString){
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
    
}

