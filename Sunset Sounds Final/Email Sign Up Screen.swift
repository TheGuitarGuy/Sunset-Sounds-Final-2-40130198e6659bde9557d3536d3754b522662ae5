//
//  Email Login Screen.swift
//  Sunset Sounds Final
//
//  Created by Kennion Gubler on 6/24/21.
//

import SwiftUI

struct Email_Sign_Up_Screen: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    init(){
        UITabBar.appearance().barTintColor = .black
    }
    /*
    
 */
    var body: some View {
        
        TabView {
            //Rectangle 1
            VStack() {
                if horizontalSizeClass == .compact && verticalSizeClass == .regular{
                    
                    ZStack{
                       Image("Sunset Sounds Logo Black")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 200, height: 200)
                        .clipped()
                        .frame(width:200, height: 200)
                        
                        
                        
                        
                    }
                    //Create an Account. Make a ...
                    Text("Create an Account.\nMake a Beat.\nShare to the World.").font(.system(size: 36, weight: .regular, design: .rounded)).multilineTextAlignment(.center)
                    VStack{
                        TextField("Please Enter Name", text: .constant("")).padding(.leading).frame(width: 284, height: 69)        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.init(red:0.3647058606147766, green: 0.45819610357284546, blue: 0.9490196108818054), lineWidth: 1)
                        )
                        TextField("Please Enter Email", text: .constant("")).padding(.leading).frame(width: 284, height: 69)        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.init(red:0.3647058606147766, green: 0.45819610357284546, blue: 0.9490196108818054), lineWidth: 1)
                        )
                        TextField("Please Enter Password", text: .constant("")).padding(.leading).frame(width: 284, height: 69)        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.init(red:0.3647058606147766, green: 0.45819610357284546, blue: 0.9490196108818054), lineWidth: 1)
                        )
                    }
                    .padding(.bottom, 20.0)

                }
                
            }
        }
    }

struct Email_Login_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Email_Sign_Up_Screen()
    }
}
}
