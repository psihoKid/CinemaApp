////
////  aaaa.swift
////  bookingTable
////
////  Created by Admin on 01.04.2022.
////
//
//import SwiftUI
//struct aaaa: View{
//var WatchingNowList = [
//    WatchingNow(id: 0, title:"Bunny", imageUrl:"posterBunnySempaiGirl"),
//        
//    ]
//
//    var body: some View{
//        NavigationView{
//
//            ScrollView(.horizontal, showsIndicators: false){
//                HStack{
//                    ForEach(WatchingNowList, id: \.id) { WatchingNow in
//                        BoxView(box: WatchingNow)
//                    }
//                }
//            }
//            
//        }.navigationBarBackButtonHidden(true)
//
//    }
//}
//
//struct WatchingNow{
//    var id: Int
//    let title, imageUrl: String
//}
//
//struct BoxView: View{
//    let box: WatchingNow
//
//    var body: some View{
//        VStack{
//            Image("\(box.imageUrl)").resizable().cornerRadius(12).frame(width: 80, height: 80)
//            Text(box.title).font(.subheadline).fontWeight(.bold)
//        }
//    }
//}
//
//struct aaaa_Previews: PreviewProvider {
//    static var previews: some View {
//        aaaa()
//    }
//}
