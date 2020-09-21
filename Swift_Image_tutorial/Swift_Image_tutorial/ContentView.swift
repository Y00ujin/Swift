//
//  ContentView.swift
//  Swift_Image_tutorial
//
//  Created by 김유진 on 2020/09/04.
//  Copyright © 2020 yujin. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack{
                
                CircleImageView()
                HStack{
                    NavigationLink(destination:
                        MyWebview(urlToLoad:
                        "https://unsplash.com/s/photos/cat" )
                            .edgesIgnoringSafeArea(.all)
                    ){
                        Text("구독하러 가기")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.orange)
                            .cornerRadius(20)
                            .shadow(color: .gray, radius: 2, x: 0, y: 6)
                    }
                    
                    NavigationLink(destination:
                        MyWebview(urlToLoad:
                        "https://www.facebook.com/" )
                        .edgesIgnoringSafeArea(.all)
                    ){
                        Text("페이스북 가기")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.yellow)
                            .cornerRadius(20)
                            .shadow(color: .gray, radius: 2, x: 0, y: 6)
                    }
                }
                .padding(.top,60)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
