//
//  MyZstack.swift
//  SwiftUI_Stacks_tutorial
//
//  Created by 김유진 on 2020/09/04.
//  Copyright © 2020 yujin. All rights reserved.
//

import SwiftUI

struct MyZstack: View{
    var body: some View{
        ZStack{
            Rectangle()
                .frame(width: 100, height: 100)
        }
    }
}

struct MyZstack_Previews: PreviewProvider {
    static var previews: some View {
        MyZstack()
    }
}
