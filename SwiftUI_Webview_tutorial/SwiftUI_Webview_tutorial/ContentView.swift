//
//  ContentView.swift
//  SwiftUI_Webview_tutorial
//
//  Created by 김유진 on 2020/09/03.
//  Copyright © 2020 yujin. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView{
            HStack{
                NavigationLink(destination:
                MyWebview(urlToLoad: "https://www.naver.com")
                    .edgesIgnoringSafeArea(.all)
                ){
                    Text("NAVER")
                        .font(.system(size:20))
                        .fontWeight(.bold)
                        .padding(20)
                        .background(Color.green)
                        .foregroundColor(Color.white)
                        .cornerRadius(20)
                }
                NavigationLink(destination:
                    MyWebview(urlToLoad: "https://www.daum.net")
                    .edgesIgnoringSafeArea(.all)
                ){
                    Text("DAUM")
                    .font(.system(size:20))
                    .fontWeight(.bold)
                    .padding(20)
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                    .cornerRadius(20)
                }
                NavigationLink(destination:
                MyWebview(urlToLoad: "https://www.google.com")
                    .edgesIgnoringSafeArea(.all)
                ){
                    Text("GOOGLE")
                    .font(.system(size:20))
                    .fontWeight(.bold)
                    .padding(20)
                    .background(Color.red)
                    .foregroundColor(Color.white)
                    .cornerRadius(20)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
