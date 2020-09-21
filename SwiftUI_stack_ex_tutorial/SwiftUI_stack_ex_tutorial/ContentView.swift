//
//  ContentView.swift
//  SwiftUI_stack_ex_tutorial
//
//  Created by 김유진 on 2020/09/04.
//  Copyright © 2020 yujin. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var AddListCount: Int = 0
    
    @State var icon = ""
    @State var title = ""
    @State var start = ""
    @State var end = ""
    @State var bgColor = ""
    
    @State var isNavigationBarHidden: Bool = false
    
    var body: some View {
        
        NavigationView{
            ZStack(alignment: .bottomTrailing){ // 아래의 오른쪽
                
                VStack(alignment: .leading, spacing: 10){
                    
                    HStack{
                        
                        NavigationLink(destination: MyList(isNavigationBarHidden: self.$isNavigationBarHidden)){
                            
                            Image(systemName: "line.horizontal.3")
                                .font(.largeTitle)
                                .foregroundColor(Color.black)
                        }
                        
                        Spacer()
                        
                        NavigationLink(destination:
                            MyProfileView(isNavigationBarHidden: self.$isNavigationBarHidden)
                        ){
                            Image(systemName: "person.crop.circle.fill")
                                .font(.largeTitle)
                                .foregroundColor(Color.black)
                        }
                        
                    }.padding(20)
                    
                    Text("TO DO LIST")
                        .font(.system(size:40))
                        .fontWeight(.black)
                        .padding(.horizontal,30)
                    
                    ScrollView{
                        VStack{
                            MyProjectCard()
                            MyCard(icon: "tray.fill", title: "Clean the room", start:"10 AM", end: "11 AM", bgColor: Color.blue)
                            MyCard(icon: "book.fill", title: "Reading a book", start: "10 PM", end: "12 PM", bgColor: Color.green)
                            MyCard(icon: "book.fill", title: "Reading a book", start: "10 PM", end: "12 PM", bgColor: Color.green)
                            MyCard(icon: "checkmark", title: title, start: start, end: end, bgColor: Color.green)
                            }
                        }
                        .padding(.horizontal,10) // 스크롤과 겹침 방지
                    }
                }
                .padding(.top, 0)
                .padding(.horizontal, 10)
                
                Circle()
                    .foregroundColor(Color.yellow)
                    .frame(width: 65, height: 65)
                .overlay(
                    NavigationLink(destination: MyListAddView(bgColor: Color.red)) {
                        Image(systemName: "plus")
                            .font(.system(size: 30))
                            .foregroundColor(.white)
                            .onAppear{
                                self.isNavigationBarHidden = false
                            }
                    }
                )
                .padding(10)
                .shadow(radius: 10)
            }
        .navigationBarTitle("TO DO LIST")
            .onAppear{
                self.isNavigationBarHidden = false
            }
            .navigationBarHidden(self.isNavigationBarHidden)
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
