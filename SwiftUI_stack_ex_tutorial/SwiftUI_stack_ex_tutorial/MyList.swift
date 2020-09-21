//
//  MyList.swift
//  SwiftUI_stack_ex_tutorial
//
//  Created by 김유진 on 2020/09/04.
//  Copyright © 2020 yujin. All rights reserved.
//

import SwiftUI

struct MyList :View{
    
    @Binding var isNavigationBarHidden: Bool
    
    init(isNavigationBarHidden: Binding<Bool> = .constant(false)) {
        if #available(iOS 14.0, *){
            
        } else {
            UITableView.appearance().tableFooterView = UIView()
        }
        
        // list의 줄 삭제 코드
        UITableView.appearance().separatorStyle = .none
        
        _isNavigationBarHidden = isNavigationBarHidden
        
    }
    
    var body: some View{
        List{
            
            Section(
                header: Text("What to do today").font(.headline)
            ){
                MyCard(icon: "book.fill", title: "Reading a book", start: "10 PM", end: "12 PM", bgColor: Color.green)
                MyCard(icon: "bolt.circle", title: "Take a rest", start: "8 PM", end: "9 PM", bgColor: Color.red)
                MyCard(icon: "tray.fill", title: "Clean the room", start:"10 AM", end: "11 AM", bgColor: Color.yellow)
            }
            Section(header: Text("What to do tomorrow").font(.headline)){
                MyCard(icon: "book.fill", title: "Reading a book", start: "10 PM", end: "12 PM", bgColor: Color.pink)
                MyCard(icon: "bolt.circle", title: "Take a rest", start: "8 PM", end: "9 PM", bgColor: Color.blue)

            }
            Section(header: Text("What to do in the day after tomorrow").font(.headline)){
                MyCard(icon: "book.fill", title: "Reading a book", start: "10 PM", end: "12 PM", bgColor: Color.yellow)
                MyCard(icon: "bolt.circle", title: "Take a rest", start: "8 PM", end: "9 PM", bgColor: Color.green)
                MyCard(icon: "tray.fill", title: "Clean the room", start:"10 AM", end: "11 AM", bgColor: Color.orange)
                MyCard(icon: "book.fill", title: "Reading a book", start: "10 PM", end: "12 PM", bgColor: Color.red)
                MyCard(icon: "bolt.circle", title: "Take a rest", start: "8 PM", end: "9 PM", bgColor: Color.pink)
            }
        }
    .listStyle(GroupedListStyle())
    .navigationBarTitle("MY LIST")
        .navigationBarHidden(self.isNavigationBarHidden)
        .onAppear{
            self.isNavigationBarHidden = false
        }
    }
}


struct MyList_Previews: PreviewProvider {
    static var previews: some View {
        MyList()
    }
}
