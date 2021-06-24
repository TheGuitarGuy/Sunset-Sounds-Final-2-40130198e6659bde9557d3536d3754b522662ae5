//
//  Login Screen.swift
//  Sunset Sounds Final
//
//  Created by Kennion Gubler on 5/4/21.
//


import SwiftUI
import AVFoundation

struct Login_Screen: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    init(){
        UITabBar.appearance().barTintColor = .black
    }
    var body: some View {
        
        TabView {
            //Rectangle 1
            VStack() {
                if horizontalSizeClass == .compact && verticalSizeClass == .regular{
                    
                    ZStack{
                        Color(red: 23 / 255, green: 30 / 255, blue: 45 / 255).edgesIgnoringSafeArea(.all)
                        VStack(){
                            //Sign Up
                                    
                            //Rectangle 1
                            Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                                ZStack(){
                                    RoundedRectangle(cornerRadius: 30)
                                        
                                        .fill(Color(#colorLiteral(red: 0.9490196108818054, green: 0.6352941393852234, blue: 0.364705890417099, alpha: 1)))
                                        .frame(width: 303, height: 79)
                                        .shadow(color: Color(#colorLiteral(red: 0.2541666626930237, green: 0.23298610746860504, blue: 0.23298610746860504, alpha: 0.25)), radius: 1, x: 3, y: 3)
                                        Text("Sign Up").font(.system(size: 20, weight: .medium, design: .rounded)).foregroundColor(Color(.white))
                                }
                                    
                            }
                            .buttonStyle(ButtonAnimation())
                            HStack{
                                //Have an Account? Sign In
                                Text("Have an Account? ").font(.system(size: 14, weight: .regular, design: .rounded)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    
                                Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                                    //Sign In
                                    Text("Sign In").font(.system(size: 14, weight: .regular, design: .rounded)).foregroundColor(Color(#colorLiteral(red: 0, green: 0.54, blue: 0.95, alpha: 1)))
                                }
                                .frame(width: 45, height: 25)
                            }
                
                            
                        }
                        .offset(x:0, y: 175)

                    }
                }
                
                    
            }
            

            
            
            
                .tabItem{
                    
                    Image(systemName: "ellipsis")
                    Text("More!")
                    
                       
                }
            
        }
}
    struct Login_Screen_Previews: PreviewProvider {
        static var previews: some View {
            Login_Screen()
                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.orange/*@END_MENU_TOKEN@*/)
        }
    }
}
