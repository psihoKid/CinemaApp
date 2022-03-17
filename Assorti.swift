//
//  Assorti.swift
//  bookingTable
//
//  Created by Admin on 06.03.2022.
//

import Foundation
import SwiftUI

struct MainMenuAssorti : View{
    var boxesAssorti = [
        BoxAssorti(id: 0, imageUrl:"Assorti1"),
        BoxAssorti(id: 1, imageUrl:"Assorti2"),
        BoxAssorti(id: 2, imageUrl:"Assorti3"),
        BoxAssorti(id: 3, imageUrl:"Assorti4"),
        BoxAssorti(id: 4, imageUrl:"Assorti")
    ]
    var body: some View{
//        NavigationView{
//            ScrollView(.horizontal, showsIndicators: false){
//                Text("Наши фотографии")
//                HStack{
//                    ForEach(boxesAssorti, id: \.id) { boxAss in
//                        BoxView(box: boxAss)
//                    }
//                }
//            }
//
//                .navigationTitle(Text("Assorti"))
//        }.navigationBarBackButtonHidden(true)
//    }
}


struct BoxAssorti{
    var id: Int
    let imageUrl: String
}

struct BoxViewAssorti: View{
    let boxAss: BoxAssorti
    
    var body: some View{
        VStack{
            Image("\(boxAss.imageUrl)").resizable().cornerRadius(12).frame(width: 80, height: 80)
        }
    }
}
