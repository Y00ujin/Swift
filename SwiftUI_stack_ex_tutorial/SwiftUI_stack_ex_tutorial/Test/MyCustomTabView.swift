//
//  MyCustomTabView.swift
//  SwiftUI_stack_ex_tutorial
//
//  Created by 김유진 on 2020/09/06.
//  Copyright © 2020 yujin. All rights reserved.
//

import SwiftUI

enum TabIndex{
    case home
    case cart
    case profile
}

struct MyCustomTabView : View{
    
    @State var tabIndex : TabIndex
    
    @State var LargerScale : CGFloat = 1.2
    
    func changeMyView(tabIndex: TabIndex)-> MyView {
        switch tabIndex{
        case .home:
            return MyView(title: "홈", bgColor: Color.green)
        case .cart:
            return MyView(title: "장바구니", bgColor: Color.purple)
        case .profile:
            return MyView(title: "프로필", bgColor: Color.blue)
        default:
            return MyView(title: "홈", bgColor: Color.green)
        }
    }
    
    func changeIconColor(tabIndex: TabIndex)-> Color{
        switch tabIndex{
        case .home:
            return Color.green
        case .cart:
            return Color.purple
        case .profile:
            return Color.blue
        default:
            return Color.green
        }
    }
    
    func calcCircleBGPositon(tabIndex: TabIndex, geometry: GeometryProxy) -> CGFloat{
        switch tabIndex{
        case .home:
            return -(geometry.size.width / 3)
        case .cart:
            return 0
        case .profile:
            return geometry.size.width / 3
        default:
            return -(geometry.size.width / 3)
        }
    }
    
    var body : some View{
        
        GeometryReader{ geometry in
            ZStack(alignment: .bottom){
                
                self.changeMyView(tabIndex: self.tabIndex)
                
                Circle()
                    .frame(width: 90, height: 90)
                    .foregroundColor(.white)
                    .offset(x: self.calcCircleBGPositon(tabIndex: self.tabIndex, geometry: geometry),y: UIApplication.shared.windows.first?.safeAreaInsets.bottom == 0 ? 15 : -5)
                // iphone 구 기종이면 동그라미를 좀 더 내리고 신 기종이면 좀 더 올린다
                
                VStack(spacing: 0){
                    HStack(spacing: 0){
                        Button(action: {
                            print("home click")
                            withAnimation{
                                self.tabIndex = .home
                            }
                        }){
                            Image(systemName: "house.fill")
                                .font(.system(size: 25))
                                .scaleEffect(self.tabIndex == .home ? self.LargerScale : 1.0) //  클릭했을 때에 스케일이 커지는 코드 self.tabIndex가 홈이면 1.3 커짐 아니면 1.0
                                .foregroundColor(self.tabIndex == .home ? self.changeIconColor(tabIndex: self.tabIndex) : Color.gray)
                                .frame(width: geometry.size.width / 3, height: 50)
                                .offset(y: self.tabIndex == .home ? -10 : 0)
                        }.background(Color.white)
                        
                        Button(action: {
                            print("cart click")
                            withAnimation{
                                self.tabIndex = .cart
                                
                            }
                        }){
                            Image(systemName: "cart.fill")
                                .font(.system(size: 25))
                                .scaleEffect(self.tabIndex == .cart ? self.LargerScale : 1.0) //  클릭했을 때에 스케일이 커지는 코드 self.tabIndex가 cart이면 1.3 커짐 아니면 1.0
                                .foregroundColor(self.tabIndex == .cart ? self.changeIconColor(tabIndex: self.tabIndex) : Color.gray)
                                .frame(width: geometry.size.width / 3, height: 50)
                                .offset(y: self.tabIndex == .cart ? -10 : 0)
                        }.background(Color.white)
                        
                        Button(action: {
                            print("profile click")
                            withAnimation{
                                self.tabIndex = .profile
                                
                            }
                        }){
                            Image(systemName: "person.circle.fill")
                                .font(.system(size: 25))
                                .scaleEffect(self.tabIndex == .profile ? self.LargerScale : 1.0) //  클릭했을 때에 스케일이 커지는 코드 self.tabIndex가 프로필이면 1.3 커짐 아니면 1.0
                                .foregroundColor(self.tabIndex == .profile ? self.changeIconColor(tabIndex: self.tabIndex) : Color.gray)
                                .frame(width: geometry.size.width / 3, height: 50)
                                .offset(y: self.tabIndex == .profile ? -10 : 0)
                        }.background(Color.white)
                    }
                    Rectangle()
                        .foregroundColor(.white)
                        .frame(height: UIApplication.shared.windows.first?.safeAreaInsets.bottom == 0 ? 0 : 20)
                        // iphone 구기종이면(UIApplication.shared.windows.first?.safeAreaInsets.bottom == 0) bottom height 를 0으로 하고, 아니면 20
                }
            }
        }.edgesIgnoringSafeArea(.all)
    }
}

struct MyCustomTabView_Previews: PreviewProvider {
    static var previews: some View {
        MyCustomTabView(tabIndex: .home)
    }
}
