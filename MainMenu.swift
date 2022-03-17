//
//  MainMenu.swift
//  bookingTable
//
//  Created by Admin on 27.02.2022.
//

import Foundation
import SwiftUI

struct mainMenu: View{
    var boxes = [
        Box(id: 0, title:"ZUMA", imageUrl:"Zuma"),
        Box(id: 1, title:"DODO", imageUrl:"Dodo"),
        Box(id: 2, title:"Palermo", imageUrl:"Palermo"),
        Box(id: 3, title:"LOFT&GRILL", imageUrl:"LoftGrill"),
        Box(id: 4, title:"Assorti", imageUrl:"Assorti")
    ]
    
    var body: some View{
        NavigationView{
            
            ScrollView(.horizontal, showsIndicators: false){
                HStack{
                    ForEach(boxes, id: \.id) { box in
                        BoxView(box: box)
                    }
                }
            }
            .navigationBarTitle(Text("Рестораны"))
        }.navigationBarBackButtonHidden(true)
        
    }
}
struct Box{
    var id: Int
    let title, imageUrl: String
}

struct BoxView: View{
    let box: Box
    
    var body: some View{
        VStack{
            Image("\(box.imageUrl)").resizable().cornerRadius(12).frame(width: 80, height: 80)
            Text(box.title).font(.subheadline).fontWeight(.bold)
        }
    }
}
