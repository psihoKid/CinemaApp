//
//  MainMenu.swift
//  bookingTable
//
//  Created by Admin on 31.03.2022.
//

import SwiftUI

struct MainMenu: View {
    var body: some View {
        ZStack{
            Image("bg").resizable().aspectRatio(contentMode: .fill).frame(minWidth: 0, maxWidth: .infinity).edgesIgnoringSafeArea(.all)
            ScrollView(.vertical, showsIndicators: false,
                       content: {
                HStack{
                    Text("Смотрят сейчас")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                }
                ScrollView(.horizontal) {
                            LazyHStack {
                                ForEach(0...50, id: \.self) { index in
                                    Text(String(index))
                                        .onAppear {
                                            print(index)
                                        }
                                }
                            }
                        }
                
            })
        }
    }
}
                       
                       
                       
                       struct MainMenu_Previews: PreviewProvider {
                static var previews: some View {
                    MainMenu()
                }
            }
