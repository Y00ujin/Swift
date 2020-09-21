//
//  MyProfileView.swift
//  SwiftUI_stack_ex_tutorial
//
//  Created by 김유진 on 2020/09/05.
//  Copyright © 2020 yujin. All rights reserved.
//

import SwiftUI

struct MyProfileView: View {
    
    @Binding var isNavigationBarHidden: Bool
    
    init(isNavigationBarHidden: Binding<Bool> = .constant(false)) {
        
        _isNavigationBarHidden = isNavigationBarHidden
        
    }
    
    var body: some View {
        ScrollView{
            VStack{
                
                CircleImageView()
                    .padding(.vertical,20)
                
                Text("YUJIN")
                    .font(.system(size:30))
                    .fontWeight(.black)

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
                .padding(20)
                Spacer()
            }
            
        }
        .navigationBarTitle("My Profile")
        .navigationBarItems(trailing:
            NavigationLink(destination:
                Text("설정화면")
                    .font(.largeTitle)
                    .fontWeight(.black)
            ){
                Image(systemName: "gear")
                    .font(.largeTitle)
                    .foregroundColor((Color.black))
            }
        )
        .onAppear{
            self.isNavigationBarHidden = false
        }
    }
}

struct MyProfileView_Previews: PreviewProvider {
    static var previews: some View {
        MyProfileView()
    }
}

