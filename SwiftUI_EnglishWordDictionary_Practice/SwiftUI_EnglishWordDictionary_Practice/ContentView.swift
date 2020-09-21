//
//  ContentView.swift
//  SwiftUI_EnglishWordDictionary_Practice
//
//  Created by 김유진 on 2020/09/09.
//  Copyright © 2020 yujin. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var isNavigationBarHidden: Bool = true
    
    var body: some View {
        NavigationView{
            ScrollView{
                ZStack(alignment: .bottomTrailing){
                    VStack{
                        HStack{
                            NavigationLink(destination: circleImageView()){
                                Image(systemName: "person.circle")
                                    .font(.system(size:40))
                                    .foregroundColor(Color.black)
                                .padding()
                            }
                            
                            NavigationLink(destination: circleImageView()){
                                Spacer()
                                Image(systemName: "line.horizontal.3")
                                    .font(.system(size:40))
                                    .foregroundColor(Color.black)
                                    .padding()
                            }
                        }
                        VStack(alignment: .center){
                            
                            Text("WORD LIST")
                                .font(.system(size:30))
                                .fontWeight(.heavy)
                                .multilineTextAlignment(.center)
                            
                            Group{
                                
                                MyEnglishWordCard(icon: "checkmark", mean: "지원자", title: "applicant", examplesentence: "Yesterday, I ate apple.")
                                MyEnglishWordCard(icon: "checkmark", mean: "걱정하는", title: "apprehensive", examplesentence: "Yesterday, I ate apple.")
                                MyEnglishWordCard(icon: "checkmark", mean: "종합적인", title: "Comprehensive", examplesentence: "Yesterday, I ate apple.")
                                MyEnglishWordCard(icon: "checkmark", mean: "환영회", title: "Reception", examplesentence: "Yesterday, I ate apple.")
                                MyEnglishWordCard(icon: "checkmark", mean: "지원자", title: "applicant", examplesentence: "Yesterday, I ate apple.")
                                MyEnglishWordCard(icon: "checkmark", mean: "걱정하는", title: "apprehensive", examplesentence: "Yesterday, I ate apple.")
                                MyEnglishWordCard(icon: "checkmark", mean: "종합적인", title: "Comprehensive", examplesentence: "Yesterday, I ate apple.")
                                MyEnglishWordCard(icon: "checkmark", mean: "환영회", title: "Reception", examplesentence: "Yesterday, I ate apple.")
                                MyEnglishWordCard(icon: "checkmark", mean: "지원자", title: "applicant", examplesentence: "Yesterday, I ate apple.")
                                MyEnglishWordCard(icon: "checkmark", mean: "걱정하는", title: "apprehensive", examplesentence: "Yesterday, I ate apple.")
                            }
                            
                            Group{
                                
                                MyEnglishWordCard(icon: "checkmark", mean: "지원자", title: "applicant", examplesentence: "Yesterday, I ate apple.")
                                MyEnglishWordCard(icon: "checkmark", mean: "걱정하는", title: "apprehensive", examplesentence: "Yesterday, I ate apple.")
                                MyEnglishWordCard(icon: "checkmark", mean: "종합적인", title: "Comprehensive", examplesentence: "Yesterday, I ate apple.")
                                MyEnglishWordCard(icon: "checkmark", mean: "환영회", title: "Reception", examplesentence: "Yesterday, I ate apple.")
                                MyEnglishWordCard(icon: "checkmark", mean: "지원자", title: "applicant", examplesentence: "Yesterday, I ate apple.")
                                MyEnglishWordCard(icon: "checkmark", mean: "걱정하는", title: "apprehensive", examplesentence: "Yesterday, I ate apple.")
                                MyEnglishWordCard(icon: "checkmark", mean: "종합적인", title: "Comprehensive", examplesentence: "Yesterday, I ate apple.")
                                MyEnglishWordCard(icon: "checkmark", mean: "환영회", title: "Reception", examplesentence: "Yesterday, I ate apple.")
                                MyEnglishWordCard(icon: "checkmark", mean: "지원자", title: "applicant", examplesentence: "Yesterday, I ate apple.")
                                MyEnglishWordCard(icon: "checkmark", mean: "걱정하는", title: "apprehensive", examplesentence: "Yesterday, I ate apple.")
                            }

                            Spacer()
                            
                        }.padding(10)
                    }
                    Spacer()
                    Circle()
                        .foregroundColor(Color.black)
                        .frame(width: 65, height: 65)
                        .shadow(radius: 10)
                        .overlay(
                            Image(systemName: "plus")
                                .font(.system(size: 30))
                                .foregroundColor(.white)
                        ).padding(24)
                    }
                }
            }
            .navigationBarTitle("Hidden Title")
            .navigationBarHidden(self.isNavigationBarHidden)
            .onAppear {
                self.isNavigationBarHidden = true
            }
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
