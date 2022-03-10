//
//  DetailView.swift
//  Hacker News
//
//  Created by Shubham Nayal on 15/11/21.
//

import SwiftUI
import WebKit
struct DetailView: View {
    let url : String?
    var body: some View {
        WebView(urlString: url)
    }
}
struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url : "www.google.com")
    }
}
