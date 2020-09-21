//
//  CircleImageView.swift
//  SwiftUI_EnglishWordDictionary_Practice
//
//  Created by 김유진 on 2020/09/14.
//  Copyright © 2020 yujin. All rights reserved.
//

import SwiftUI

struct circleImageView : View {
    var body: some View {
        NavigationView{
            VStack{

                
                    HStack{
                        Image(systemName: "person.circle.fill")
                            .resizable()
                            .font(.system(size: 200))
                            .foregroundColor(.white)
                            .frame(width: 120, height: 120)
                            .padding(.horizontal,10)
                            .overlay(
                                Circle().stroke(Color.gray, lineWidth: 1)
                        )
                        
                        VStack(spacing: 0){
                            HStack{
                                Text("김유진")
                                    .fontWeight(.heavy)
                                    .foregroundColor(.black)
                                    .padding(.bottom,40)
                                
                                Spacer()
                                
                            }
                            HStack{
                                Text("상태메세지")
                                    .font(.system(size:14))
                                    .foregroundColor(.black)
                                
                                Spacer()
                            }
                        }
                        .frame(width: 200,height: 100)
                        .padding(10)
                        .background(Color.white)
                        .cornerRadius(20)
                        Spacer()
                    }
                    .frame(width: 380, height: 160)
                    .background(Color.gray)
                .cornerRadius(20)
            }
        .navigationBarTitle("PROFILE")
        }
    }
}

struct CircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        circleImageView()
    }
}
