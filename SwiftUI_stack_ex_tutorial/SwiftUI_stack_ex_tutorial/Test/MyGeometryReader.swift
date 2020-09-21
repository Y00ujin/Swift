//
//  MyGeometryReader.swift
//  SwiftUI_stack_ex_tutorial
//
//  Created by 김유진 on 2020/09/06.
//  Copyright © 2020 yujin. All rights reserved.
//

import SwiftUI

struct MyGeometryReader : View{
    var body: some View{
        
        GeometryReader{ geometryReader in
            
            HStack(spacing: 0){
                Text("1")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .frame(width: geometryReader.size.width / 3)
                    .foregroundColor(.white)
                    .background(Color.red)
                Text("2")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .frame(width: geometryReader.size.width / 3)
                    .foregroundColor(.white)
                    .background(Color.blue)
                Text("3")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .frame(width: geometryReader.size.width / 3)
                    .foregroundColor(.white)
                    .background(Color.green)
//                Text("4")
//                    .font(.largeTitle)
//                    .fontWeight(.black)
//                    .frame(width: 50)
//                    .foregroundColor(.white)
//                    .background(Color.purple)
            }.background(Color.yellow)
        }.background(Color.black)
    }
}

struct MyGeometryReader_Previews: PreviewProvider {
    static var previews: some View {
        MyGeometryReader()
    }
}
