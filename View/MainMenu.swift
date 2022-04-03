//
//  MainMenu.swift
//  bookingTable
//
//  Created by Admin on 31.03.2022.
//

import SwiftUI

struct MainMenu: View {
    var WatchingNowList = [
        WatchingNow(id: 0, title:"Этот глупый...", imageUrl:"posterBunnySempaiGirl", nameFilm: AnyView(Home())),
        WatchingNow(id: 1, title: "крестный отец", imageUrl: "posterGodFather", nameFilm: AnyView(GodFather())),
        WatchingNow(id: 2, title: "Байцовский клуб", imageUrl: "posterFightClub", nameFilm: AnyView(FightClub())),
        WatchingNow(id: 3, title: "Бэтмен", imageUrl: "posterBatmen", nameFilm: AnyView(Batman())),
        WatchingNow(id: 4, title: "Токийский гуль", imageUrl: "posterTokyoGhoul", nameFilm: AnyView(TokyoGhoul())),
        WatchingNow(id: 5, title: "Дюна", imageUrl:  "posterDuna", nameFilm: AnyView(Duna()))
    ]
    
    var HotNewFilmsList = [
        HotNewFilms(id: 0, title: "The Beatles...", imageUrl: "posterTheBeatles:GetBack", nameFilm: AnyView(TheBeatlesGetBack())),
        HotNewFilms(id: 1, title: "Гарри Поттер...", imageUrl: "PosterHarryPotter20thAnniversary", nameFilm: AnyView(HarryPotter20thAnniversary())),
        HotNewFilms(id: 2, title: "Бэтмен", imageUrl: "posterBatmen", nameFilm: AnyView(Batman())),
        HotNewFilms(id: 3, title: "И просто так... ", imageUrl: "PosterAndJustLikeThat...", nameFilm: AnyView(AndJustLikeThat())),
        HotNewFilms(id: 4, title: "Плохие парни", imageUrl: "PosterBadBoys", nameFilm: AnyView(TheBadGuys())),
        HotNewFilms(id: 5, title: "Этот дом", imageUrl: "posterTheHouse", nameFilm: AnyView(TheHouse()))
    ]
    
    var ForFamilyViewingList = [
        ForFamilyViewing(id: 0, title: "Бобби и охотни...", imageUrl: "posterBobbyendeGeestenjagers", nameFilm: AnyView(BobbyendeGeestenjagers())),
        ForFamilyViewing(id: 1, title: "Секретное пи...", imageUrl: "posterBriefgeheim", nameFilm: AnyView(Briefgeheim())),
        ForFamilyViewing(id: 2, title: "Зов предков", imageUrl: "posterTheCallOfTheWild", nameFilm: AnyView(TheCallOfTheWild())),
        ForFamilyViewing(id: 3, title: "Искренние лапы", imageUrl: "posterMaeumi", nameFilm: AnyView(Maeumi())),
        ForFamilyViewing(id: 4, title: "Поллианна", imageUrl: "posterPollyanna", nameFilm: AnyView(Pollyanna())),
        ForFamilyViewing(id: 5, title: "Что у Сеньки было", imageUrl: "posterWhatDidSenkaHave", nameFilm: AnyView(WhatDidSenkaHave()))
    ]
    
    var body: some View {
        NavigationView{
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
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack{
                            ForEach(WatchingNowList, id: \.id) { WatchingNow in
                                BoxViewWatchingNow(box: WatchingNow)
                            }
                        }
                    }
                    
                    HStack{
                        Text("Горячие новинки")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                    }.padding()
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack{
                            ForEach(HotNewFilmsList, id: \.id) { HotNewFilms in
                                BoxViewHotNewFilms(box: HotNewFilms)
                            }
                        }
                    }
                    
                    HStack{
                        Text("Для семейного просмотра")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                    }.padding()
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack{
                            ForEach(ForFamilyViewingList, id: \.id) { ForFamilyViewing in
                                BoxViewForFamilyViewing(box: ForFamilyViewing)
                            }
                        }
                    }
                })
            }
        }
    }
}

//Watching Now
struct WatchingNow{
    var id: Int
    let title, imageUrl: String
    var nameFilm: AnyView
}
struct BoxViewWatchingNow: View{
    let box: WatchingNow
    var body: some View{
        VStack{
            NavigationLink(destination: box.nameFilm){
                Image("\(box.imageUrl)").resizable().cornerRadius(12).frame(width: 120,height: 170)
            }
            Text(box.title).foregroundColor(.white)
        }
    }
}


//Hot New Films
struct HotNewFilms{
    var id: Int
    let title, imageUrl: String
    var nameFilm: AnyView
}
struct BoxViewHotNewFilms: View{
    let box: HotNewFilms
    var body: some View{
        VStack{
            NavigationLink(destination: box.nameFilm){
                Image("\(box.imageUrl)").resizable().cornerRadius(12).frame(width: 120,height: 170)
            }
            Text(box.title).foregroundColor(.white)
        }
    }
}

//For family viewing
struct ForFamilyViewing{
    var id: Int
    let title, imageUrl: String
    var nameFilm: AnyView
}
struct BoxViewForFamilyViewing: View{
    let box: ForFamilyViewing
    var body: some View{
        VStack{
            NavigationLink(destination: box.nameFilm){
                Image("\(box.imageUrl)").resizable().cornerRadius(12).frame(width: 120,height: 170)
            }
            Text(box.title).foregroundColor(.white)
        }
    }
}
    
    
    struct MainMenu_Previews: PreviewProvider {
        static var previews: some View {
            MainMenu()
        }
    }
