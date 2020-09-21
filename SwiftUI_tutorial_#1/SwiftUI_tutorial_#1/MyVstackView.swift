//
//  MyVstackView.swift
//  SwiftUI_tutorial_#1
//
//  Created by 김유진 on 2020/09/02.
//  Copyright © 2020 yujin. All rights reserved.
//

import SwiftUI

struct MyVstackView:View {
    
    // 데이터를 연동시킨다
    @Binding var isActivated: Bool;
    
    // 생성자
    init(isActivated: Binding<Bool> = .constant(false)){ // 불에 대한 기본값을 false
        _isActivated = isActivated
    }
    
    var body:some View{
        VStack{
            Text("1!").fontWeight(.bold).font(.system(size : 40))
            Text("2!").fontWeight(.bold).font(.system(size : 40))
            Text("3!").fontWeight(.bold).font(.system(size : 40))
        }.background(self.isActivated ? Color.green : Color.red)
            .padding(self.isActivated ? 10 : 0)
    }
}

struct MyVstackView_Previews: PreviewProvider {
    static var previews: some View {
        MyVstackView()
    }
}
