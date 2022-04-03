//
//  Home.swift
//  bookingTable
//
//  Created by Admin on 13.03.2022.
//

import SwiftUI

struct Home: View {
    var body: some View {
        ZStack{
            Image("bg").resizable().aspectRatio(contentMode: .fill).frame(minWidth: 0, maxWidth: .infinity).edgesIgnoringSafeArea(.all)
            ScrollView(.vertical, showsIndicators: false,
                       content: {
                LazyVStack(spacing: 15, pinnedViews: [.sectionFooters], content: {
                    Section(footer: TicketsButton(), content: {
                        HStack{
//                            Button(action: {}, label: {
//                                Image(systemName: "chevron.left")
//                                    .font(.title2)
//                            })
                            
                            Spacer()
                            
                            Button(action: {}, label: {
                                Image(systemName: "bookmark")
                                    .font(.title2)
                            })
                        }
                        .overlay(
                            Text("Детали аниме")
                                .font(.title2)
                                .fontWeight(.semibold)
                        )
                        .padding()
                        .foregroundColor(.white)
                        ZStack{
                            RoundedRectangle(cornerRadius: 15)
                                .fill(Color.white.opacity(0.2))
                                .padding(.horizontal)
                                .offset(y: 12)
                             
                            
                            Image("posterBunnySempaiGirl")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .cornerRadius(15)
                        }
                        .frame(width: getRect().width / 1.5, height: getRect().height / 2)
                        .padding(.top,20)
                        
                        VStack(alignment: .leading, spacing: 15,
                               content: {
                            Text("Этот глупый свин не понимает мечту девочки-зайки")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                            Text("Хадзимэ Камосида | 7.9")
                                .foregroundColor(.white)
                                .overlay(
                                    Image(systemName: "star.fill")
                                        .foregroundColor(.yellow)
                                        .offset(x: 35, y: -2)
                                    ,alignment: .trailing
                                )
                            LazyVGrid(columns: [GridItem(.adaptive(minimum: 80))],alignment: .leading , content: {
                                ForEach(genreBunnySenpaiGirl,id: \.self){ genterText in
                                    Text(genterText)
                                        .font(.caption)
                                        .padding(.vertical, 10)
                                        .frame(maxWidth: .infinity)
                                        .foregroundColor(.white)
                                        .background(Color.white.opacity(0.08))
                                        .clipShape(Capsule())
                                    
                                }
                                
                            })
                                .padding(.top,20)
                            Text("Описание")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding(.vertical)
                            Text(SynopsisBunnySenpaiGirl)
                                .foregroundColor(.white)
                        })
                            .padding(.top,55)
                            .padding(.horizontal)
                            .padding(.leading,10)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    })
                })
                
            })
        }
    }
}


struct GodFather: View {
    var body: some View {
        ZStack{
            Image("bg").resizable().aspectRatio(contentMode: .fill).frame(minWidth: 0, maxWidth: .infinity).edgesIgnoringSafeArea(.all)
            ScrollView(.vertical, showsIndicators: false,
                       content: {
                LazyVStack(spacing: 15, pinnedViews: [.sectionFooters], content: {
                    Section(footer: TicketsButton(), content: {
                        HStack{
//                            Button(action: {}, label: {
//                                Image(systemName: "chevron.left")
//                                    .font(.title2)
//                            })
                            
                            Spacer()
                            
                            Button(action: {}, label: {
                                Image(systemName: "bookmark")
                                    .font(.title2)
                            })
                        }
                        .overlay(
                            Text("Детали фильма")
                                .font(.title2)
                                .fontWeight(.semibold)
                        )
                        .padding()
                        .foregroundColor(.white)
                        ZStack{
                            RoundedRectangle(cornerRadius: 15)
                                .fill(Color.white.opacity(0.2))
                                .padding(.horizontal)
                                .offset(y: 12)
                             
                            
                            Image("posterGodFather")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .cornerRadius(15)
                        }
                        .frame(width: getRect().width / 1.5, height: getRect().height / 2)
                        .padding(.top,20)
                        
                        VStack(alignment: .leading, spacing: 15,
                               content: {
                            Text("Крестный отец")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                            Text("Фрэнсис Форд Коппола | 9.2")
                                .foregroundColor(.white)
                                .overlay(
                                    Image(systemName: "star.fill")
                                        .foregroundColor(.yellow)
                                        .offset(x: 35, y: -2)
                                    ,alignment: .trailing
                                )
                            LazyVGrid(columns: [GridItem(.adaptive(minimum: 80))],alignment: .leading , content: {
                                ForEach(genreGodFather,id: \.self){ genterText in
                                    Text(genterText)
                                        .font(.caption)
                                        .padding(.vertical, 10)
                                        .frame(maxWidth: .infinity)
                                        .foregroundColor(.white)
                                        .background(Color.white.opacity(0.08))
                                        .clipShape(Capsule())
                                    
                                }
                                
                            })
                                .padding(.top,20)
                            Text("Описание")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding(.vertical)
                            Text(SynopsisGodFather)
                                .foregroundColor(.white)
                        })
                            .padding(.top,55)
                            .padding(.horizontal)
                            .padding(.leading,10)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    })
                })
                
            })
        }
    }
}

struct FightClub: View {
    var body: some View {
        ZStack{
            Image("bg").resizable().aspectRatio(contentMode: .fill).frame(minWidth: 0, maxWidth: .infinity).edgesIgnoringSafeArea(.all)
            ScrollView(.vertical, showsIndicators: false,
                       content: {
                LazyVStack(spacing: 15, pinnedViews: [.sectionFooters], content: {
                    Section(footer: TicketsButton(), content: {
                        HStack{
//                            Button(action: {}, label: {
//                                Image(systemName: "chevron.left")
//                                    .font(.title2)
//                            })
                            
                            Spacer()
                            
                            Button(action: {}, label: {
                                Image(systemName: "bookmark")
                                    .font(.title2)
                            })
                        }
                        .overlay(
                            Text("Детали фильма")
                                .font(.title2)
                                .fontWeight(.semibold)
                        )
                        .padding()
                        .foregroundColor(.white)
                        ZStack{
                            RoundedRectangle(cornerRadius: 15)
                                .fill(Color.white.opacity(0.2))
                                .padding(.horizontal)
                                .offset(y: 12)
                             
                            
                            Image("posterFightClub")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .cornerRadius(15)
                        }
                        .frame(width: getRect().width / 1.5, height: getRect().height / 2)
                        .padding(.top,20)
                        
                        VStack(alignment: .leading, spacing: 15,
                               content: {
                            Text("Бойцовкский клуб")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                            Text("Дэвид Финчер | 8.8")
                                .foregroundColor(.white)
                                .overlay(
                                    Image(systemName: "star.fill")
                                        .foregroundColor(.yellow)
                                        .offset(x: 35, y: -2)
                                    ,alignment: .trailing
                                )
                            LazyVGrid(columns: [GridItem(.adaptive(minimum: 80))],alignment: .leading , content: {
                                ForEach(genreFightClub,id: \.self){ genterText in
                                    Text(genterText)
                                        .font(.caption)
                                        .padding(.vertical, 10)
                                        .frame(maxWidth: .infinity)
                                        .foregroundColor(.white)
                                        .background(Color.white.opacity(0.08))
                                        .clipShape(Capsule())
                                    
                                }
                                
                            })
                                .padding(.top,20)
                            Text("Описание")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding(.vertical)
                            Text(SynopsisFightClub)
                                .foregroundColor(.white)
                        })
                            .padding(.top,55)
                            .padding(.horizontal)
                            .padding(.leading,10)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    })
                })
                
            })
        }
    }
}

struct Batman: View {
    var body: some View {
        ZStack{
            Image("bg").resizable().aspectRatio(contentMode: .fill).frame(minWidth: 0, maxWidth: .infinity).edgesIgnoringSafeArea(.all)
            ScrollView(.vertical, showsIndicators: false,
                       content: {
                LazyVStack(spacing: 15, pinnedViews: [.sectionFooters], content: {
                    Section(footer: TicketsButton(), content: {
                        HStack{
//                            Button(action: {}, label: {
//                                Image(systemName: "chevron.left")
//                                    .font(.title2)
//                            })
                            
                            Spacer()
                            
                            Button(action: {}, label: {
                                Image(systemName: "bookmark")
                                    .font(.title2)
                            })
                        }
                        .overlay(
                            Text("Детали фильма")
                                .font(.title2)
                                .fontWeight(.semibold)
                        )
                        .padding()
                        .foregroundColor(.white)
                        ZStack{
                            RoundedRectangle(cornerRadius: 15)
                                .fill(Color.white.opacity(0.2))
                                .padding(.horizontal)
                                .offset(y: 12)
                             
                            
                            Image("posterBatmen")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .cornerRadius(15)
                        }
                        .frame(width: getRect().width / 1.5, height: getRect().height / 2)
                        .padding(.top,20)
                        
                        VStack(alignment: .leading, spacing: 15,
                               content: {
                            Text("Бэтмен")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                            Text("Мэтт Ривз | 7.9")
                                .foregroundColor(.white)
                                .overlay(
                                    Image(systemName: "star.fill")
                                        .foregroundColor(.yellow)
                                        .offset(x: 35, y: -2)
                                    ,alignment: .trailing
                                )
                            LazyVGrid(columns: [GridItem(.adaptive(minimum: 80))],alignment: .leading , content: {
                                ForEach(genreBatMan,id: \.self){ genterText in
                                    Text(genterText)
                                        .font(.caption)
                                        .padding(.vertical, 10)
                                        .frame(maxWidth: .infinity)
                                        .foregroundColor(.white)
                                        .background(Color.white.opacity(0.08))
                                        .clipShape(Capsule())
                                    
                                }
                                
                            })
                                .padding(.top,20)
                            Text("Описание")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding(.vertical)
                            Text(SynopsisBatMan)
                                .foregroundColor(.white)
                        })
                            .padding(.top,55)
                            .padding(.horizontal)
                            .padding(.leading,10)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    })
                })
                
            })
        }
    }
}

struct TokyoGhoul: View {
    var body: some View {
        ZStack{
            Image("bg").resizable().aspectRatio(contentMode: .fill).frame(minWidth: 0, maxWidth: .infinity).edgesIgnoringSafeArea(.all)
            ScrollView(.vertical, showsIndicators: false,
                       content: {
                LazyVStack(spacing: 15, pinnedViews: [.sectionFooters], content: {
                    Section(footer: TicketsButton(), content: {
                        HStack{
//                            Button(action: {}, label: {
//                                Image(systemName: "chevron.left")
//                                    .font(.title2)
//                            })
                            
                            Spacer()
                            
                            Button(action: {}, label: {
                                Image(systemName: "bookmark")
                                    .font(.title2)
                            })
                        }
                        .overlay(
                            Text("Детали аниме")
                                .font(.title2)
                                .fontWeight(.semibold)
                        )
                        .padding()
                        .foregroundColor(.white)
                        ZStack{
                            RoundedRectangle(cornerRadius: 15)
                                .fill(Color.white.opacity(0.2))
                                .padding(.horizontal)
                                .offset(y: 12)
                             
                            
                            Image("posterTokyoGhoul")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .cornerRadius(15)
                        }
                        .frame(width: getRect().width / 1.5, height: getRect().height / 2)
                        .padding(.top,20)
                        
                        VStack(alignment: .leading, spacing: 15,
                               content: {
                            Text("Токийский гуль")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                            Text("Сюхэй Морита | 7.2")
                                .foregroundColor(.white)
                                .overlay(
                                    Image(systemName: "star.fill")
                                        .foregroundColor(.yellow)
                                        .offset(x: 35, y: -2)
                                    ,alignment: .trailing
                                )
                            LazyVGrid(columns: [GridItem(.adaptive(minimum: 80))],alignment: .leading , content: {
                                ForEach(genreTokyoGhoul,id: \.self){ genterText in
                                    Text(genterText)
                                        .font(.caption)
                                        .padding(.vertical, 10)
                                        .frame(maxWidth: .infinity)
                                        .foregroundColor(.white)
                                        .background(Color.white.opacity(0.08))
                                        .clipShape(Capsule())
                                    
                                }
                                
                            })
                                .padding(.top,20)
                            Text("Описание")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding(.vertical)
                            Text(SynopsisTokyoGhoul)
                                .foregroundColor(.white)
                        })
                            .padding(.top,55)
                            .padding(.horizontal)
                            .padding(.leading,10)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    })
                })
                
            })
        }
    }
}

struct Duna: View {
    var body: some View {
        ZStack{
            Image("bg").resizable().aspectRatio(contentMode: .fill).frame(minWidth: 0, maxWidth: .infinity).edgesIgnoringSafeArea(.all)
            ScrollView(.vertical, showsIndicators: false,
                       content: {
                LazyVStack(spacing: 15, pinnedViews: [.sectionFooters], content: {
                    Section(footer: TicketsButton(), content: {
                        HStack{
//                            Button(action: {}, label: {
//                                Image(systemName: "chevron.left")
//                                    .font(.title2)
//                            })
                            
                            Spacer()
                            
                            Button(action: {}, label: {
                                Image(systemName: "bookmark")
                                    .font(.title2)
                            })
                        }
                        .overlay(
                            Text("Детали фильма")
                                .font(.title2)
                                .fontWeight(.semibold)
                        )
                        .padding()
                        .foregroundColor(.white)
                        ZStack{
                            RoundedRectangle(cornerRadius: 15)
                                .fill(Color.white.opacity(0.2))
                                .padding(.horizontal)
                                .offset(y: 12)
                             
                            
                            Image("posterDuna")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .cornerRadius(15)
                        }
                        .frame(width: getRect().width / 1.5, height: getRect().height / 2)
                        .padding(.top,20)
                        
                        VStack(alignment: .leading, spacing: 15,
                               content: {
                            Text("Дюна")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                            Text("Дени Вильнёв | 7.5")
                                .foregroundColor(.white)
                                .overlay(
                                    Image(systemName: "star.fill")
                                        .foregroundColor(.yellow)
                                        .offset(x: 35, y: -2)
                                    ,alignment: .trailing
                                )
                            LazyVGrid(columns: [GridItem(.adaptive(minimum: 80))],alignment: .leading , content: {
                                ForEach(genreDuna,id: \.self){ genterText in
                                    Text(genterText)
                                        .font(.caption)
                                        .padding(.vertical, 10)
                                        .frame(maxWidth: .infinity)
                                        .foregroundColor(.white)
                                        .background(Color.white.opacity(0.08))
                                        .clipShape(Capsule())
                                    
                                }
                                
                            })
                                .padding(.top,20)
                            Text("Описание")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding(.vertical)
                            Text(SynopsisDuna)
                                .foregroundColor(.white)
                        })
                            .padding(.top,55)
                            .padding(.horizontal)
                            .padding(.leading,10)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    })
                })
                
            })
        }
    }
}

struct TheBeatlesGetBack: View {
    var body: some View {
        ZStack{
            Image("bg").resizable().aspectRatio(contentMode: .fill).frame(minWidth: 0, maxWidth: .infinity).edgesIgnoringSafeArea(.all)
            ScrollView(.vertical, showsIndicators: false,
                       content: {
                LazyVStack(spacing: 15, pinnedViews: [.sectionFooters], content: {
                    Section(footer: TicketsButton(), content: {
                        HStack{
//                            Button(action: {}, label: {
//                                Image(systemName: "chevron.left")
//                                    .font(.title2)
//                            })
                            
                            Spacer()
                            
                            Button(action: {}, label: {
                                Image(systemName: "bookmark")
                                    .font(.title2)
                            })
                        }
                        .overlay(
                            Text("Детали фильма")
                                .font(.title2)
                                .fontWeight(.semibold)
                        )
                        .padding()
                        .foregroundColor(.white)
                        ZStack{
                            RoundedRectangle(cornerRadius: 15)
                                .fill(Color.white.opacity(0.2))
                                .padding(.horizontal)
                                .offset(y: 12)
                             
                            
                            Image("posterTheBeatles:GetBack")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .cornerRadius(15)
                        }
                        .frame(width: getRect().width / 1.5, height: getRect().height / 2)
                        .padding(.top,20)
                        
                        VStack(alignment: .leading, spacing: 15,
                               content: {
                            Text("The Beatles: Get Back — Концерт на крыше ")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                            Text("Питер Джексон | 8.9")
                                .foregroundColor(.white)
                                .overlay(
                                    Image(systemName: "star.fill")
                                        .foregroundColor(.yellow)
                                        .offset(x: 35, y: -2)
                                    ,alignment: .trailing
                                )
                            LazyVGrid(columns: [GridItem(.adaptive(minimum: 80))],alignment: .leading , content: {
                                ForEach(genreTheBeatlesGetBack,id: \.self){ genterText in
                                    Text(genterText)
                                        .font(.caption)
                                        .padding(.vertical, 10)
                                        .frame(maxWidth: .infinity)
                                        .foregroundColor(.white)
                                        .background(Color.white.opacity(0.08))
                                        .clipShape(Capsule())
                                    
                                }
                                
                            })
                                .padding(.top,20)
                            Text("Описание")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding(.vertical)
                            Text(SynopsisTheBeatlesGetBack)
                                .foregroundColor(.white)
                        })
                            .padding(.top,55)
                            .padding(.horizontal)
                            .padding(.leading,10)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    })
                })
                
            })
        }
    }
}

struct HarryPotter20thAnniversary: View {
    var body: some View {
        ZStack{
            Image("bg").resizable().aspectRatio(contentMode: .fill).frame(minWidth: 0, maxWidth: .infinity).edgesIgnoringSafeArea(.all)
            ScrollView(.vertical, showsIndicators: false,
                       content: {
                LazyVStack(spacing: 15, pinnedViews: [.sectionFooters], content: {
                    Section(footer: TicketsButton(), content: {
                        HStack{
//                            Button(action: {}, label: {
//                                Image(systemName: "chevron.left")
//                                    .font(.title2)
//                            })
                            
                            Spacer()
                            
                            Button(action: {}, label: {
                                Image(systemName: "bookmark")
                                    .font(.title2)
                            })
                        }
                        .overlay(
                            Text("Детали фильма")
                                .font(.title2)
                                .fontWeight(.semibold)
                        )
                        .padding()
                        .foregroundColor(.white)
                        ZStack{
                            RoundedRectangle(cornerRadius: 15)
                                .fill(Color.white.opacity(0.2))
                                .padding(.horizontal)
                                .offset(y: 12)
                             
                            
                            Image("PosterHarryPotter20thAnniversary")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .cornerRadius(15)
                        }
                        .frame(width: getRect().width / 1.5, height: getRect().height / 2)
                        .padding(.top,20)
                        
                        VStack(alignment: .leading, spacing: 15,
                               content: {
                            Text("Гарри Поттер 20 лет спустя: Возвращение в Хогвартс")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                            Text("Кэйси Паттерсон | 8.1")
                                .foregroundColor(.white)
                                .overlay(
                                    Image(systemName: "star.fill")
                                        .foregroundColor(.yellow)
                                        .offset(x: 35, y: -2)
                                    ,alignment: .trailing
                                )
                            LazyVGrid(columns: [GridItem(.adaptive(minimum: 80))],alignment: .leading , content: {
                                ForEach(genreHarryPotter20thAnniversary,id: \.self){ genterText in
                                    Text(genterText)
                                        .font(.caption)
                                        .padding(.vertical, 10)
                                        .frame(maxWidth: .infinity)
                                        .foregroundColor(.white)
                                        .background(Color.white.opacity(0.08))
                                        .clipShape(Capsule())
                                    
                                }
                                
                            })
                                .padding(.top,20)
                            Text("Описание")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding(.vertical)
                            Text(SynopsisHarryPotter20thAnniversary)
                                .foregroundColor(.white)
                        })
                            .padding(.top,55)
                            .padding(.horizontal)
                            .padding(.leading,10)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    })
                })
                
            })
        }
    }
}

struct AndJustLikeThat: View {
    var body: some View {
        ZStack{
            Image("bg").resizable().aspectRatio(contentMode: .fill).frame(minWidth: 0, maxWidth: .infinity).edgesIgnoringSafeArea(.all)
            ScrollView(.vertical, showsIndicators: false,
                       content: {
                LazyVStack(spacing: 15, pinnedViews: [.sectionFooters], content: {
                    Section(footer: TicketsButton(), content: {
                        HStack{
//                            Button(action: {}, label: {
//                                Image(systemName: "chevron.left")
//                                    .font(.title2)
//                            })
                            
                            Spacer()
                            
                            Button(action: {}, label: {
                                Image(systemName: "bookmark")
                                    .font(.title2)
                            })
                        }
                        .overlay(
                            Text("Детали фильма")
                                .font(.title2)
                                .fontWeight(.semibold)
                        )
                        .padding()
                        .foregroundColor(.white)
                        ZStack{
                            RoundedRectangle(cornerRadius: 15)
                                .fill(Color.white.opacity(0.2))
                                .padding(.horizontal)
                                .offset(y: 12)
                             
                            
                            Image("PosterAndJustLikeThat...")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .cornerRadius(15)
                        }
                        .frame(width: getRect().width / 1.5, height: getRect().height / 2)
                        .padding(.top,20)
                        
                        VStack(alignment: .leading, spacing: 15,
                               content: {
                            Text("И просто так... Документальный фильм")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                            Text("Фабьен Констант | 7.6")
                                .foregroundColor(.white)
                                .overlay(
                                    Image(systemName: "star.fill")
                                        .foregroundColor(.yellow)
                                        .offset(x: 35, y: -2)
                                    ,alignment: .trailing
                                )
                            LazyVGrid(columns: [GridItem(.adaptive(minimum: 80))],alignment: .leading , content: {
                                ForEach(genreAndJustLikeThat,id: \.self){ genterText in
                                    Text(genterText)
                                        .font(.caption)
                                        .padding(.vertical, 10)
                                        .frame(maxWidth: .infinity)
                                        .foregroundColor(.white)
                                        .background(Color.white.opacity(0.08))
                                        .clipShape(Capsule())
                                    
                                }
                                
                            })
                                .padding(.top,20)
                            Text("Описание")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding(.vertical)
                            Text(SynopsisAndJustLikeThat)
                                .foregroundColor(.white)
                        })
                            .padding(.top,55)
                            .padding(.horizontal)
                            .padding(.leading,10)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    })
                })
                
            })
        }
    }
}

struct TheBadGuys: View {
    var body: some View {
        ZStack{
            Image("bg").resizable().aspectRatio(contentMode: .fill).frame(minWidth: 0, maxWidth: .infinity).edgesIgnoringSafeArea(.all)
            ScrollView(.vertical, showsIndicators: false,
                       content: {
                LazyVStack(spacing: 15, pinnedViews: [.sectionFooters], content: {
                    Section(footer: TicketsButton(), content: {
                        HStack{
//                            Button(action: {}, label: {
//                                Image(systemName: "chevron.left")
//                                    .font(.title2)
//                            })
                            
                            Spacer()
                            
                            Button(action: {}, label: {
                                Image(systemName: "bookmark")
                                    .font(.title2)
                            })
                        }
                        .overlay(
                            Text("Детали мультфильма")
                                .font(.title2)
                                .fontWeight(.semibold)
                        )
                        .padding()
                        .foregroundColor(.white)
                        ZStack{
                            RoundedRectangle(cornerRadius: 15)
                                .fill(Color.white.opacity(0.2))
                                .padding(.horizontal)
                                .offset(y: 12)
                             
                            
                            Image("PosterBadBoys")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .cornerRadius(15)
                        }
                        .frame(width: getRect().width / 1.5, height: getRect().height / 2)
                        .padding(.top,20)
                        
                        VStack(alignment: .leading, spacing: 15,
                               content: {
                            Text("Плохие парни")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                            Text("Пьер Перифел | 7.5")
                                .foregroundColor(.white)
                                .overlay(
                                    Image(systemName: "star.fill")
                                        .foregroundColor(.yellow)
                                        .offset(x: 35, y: -2)
                                    ,alignment: .trailing
                                )
                            LazyVGrid(columns: [GridItem(.adaptive(minimum: 80))],alignment: .leading , content: {
                                ForEach(genreTheBadGuys,id: \.self){ genterText in
                                    Text(genterText)
                                        .font(.caption)
                                        .padding(.vertical, 10)
                                        .frame(maxWidth: .infinity)
                                        .foregroundColor(.white)
                                        .background(Color.white.opacity(0.08))
                                        .clipShape(Capsule())
                                    
                                }
                                
                            })
                                .padding(.top,20)
                            Text("Описание")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding(.vertical)
                            Text(SynopsisTheBadGuys)
                                .foregroundColor(.white)
                        })
                            .padding(.top,55)
                            .padding(.horizontal)
                            .padding(.leading,10)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    })
                })
                
            })
        }
    }
}

struct TheHouse: View {
    var body: some View {
        ZStack{
            Image("bg").resizable().aspectRatio(contentMode: .fill).frame(minWidth: 0, maxWidth: .infinity).edgesIgnoringSafeArea(.all)
            ScrollView(.vertical, showsIndicators: false,
                       content: {
                LazyVStack(spacing: 15, pinnedViews: [.sectionFooters], content: {
                    Section(footer: TicketsButton(), content: {
                        HStack{
//                            Button(action: {}, label: {
//                                Image(systemName: "chevron.left")
//                                    .font(.title2)
//                            })
                            
                            Spacer()
                            
                            Button(action: {}, label: {
                                Image(systemName: "bookmark")
                                    .font(.title2)
                            })
                        }
                        .overlay(
                            Text("Детали мультфильма")
                                .font(.title2)
                                .fontWeight(.semibold)
                        )
                        .padding()
                        .foregroundColor(.white)
                        ZStack{
                            RoundedRectangle(cornerRadius: 15)
                                .fill(Color.white.opacity(0.2))
                                .padding(.horizontal)
                                .offset(y: 12)
                             
                            
                            Image("posterTheHouse")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .cornerRadius(15)
                        }
                        .frame(width: getRect().width / 1.5, height: getRect().height / 2)
                        .padding(.top,20)
                        
                        VStack(alignment: .leading, spacing: 15,
                               content: {
                            Text("Этот дом")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                            Text("Палома Баэза | 7.3")
                                .foregroundColor(.white)
                                .overlay(
                                    Image(systemName: "star.fill")
                                        .foregroundColor(.yellow)
                                        .offset(x: 35, y: -2)
                                    ,alignment: .trailing
                                )
                            LazyVGrid(columns: [GridItem(.adaptive(minimum: 80))],alignment: .leading , content: {
                                ForEach(genreTheHouse,id: \.self){ genterText in
                                    Text(genterText)
                                        .font(.caption)
                                        .padding(.vertical, 10)
                                        .frame(maxWidth: .infinity)
                                        .foregroundColor(.white)
                                        .background(Color.white.opacity(0.08))
                                        .clipShape(Capsule())
                                    
                                }
                                
                            })
                                .padding(.top,20)
                            Text("Описание")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding(.vertical)
                            Text(SynopsisTheHouse)
                                .foregroundColor(.white)
                        })
                            .padding(.top,55)
                            .padding(.horizontal)
                            .padding(.leading,10)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    })
                })
                
            })
        }
    }
}

struct BobbyendeGeestenjagers: View {
    var body: some View {
        ZStack{
            Image("bg").resizable().aspectRatio(contentMode: .fill).frame(minWidth: 0, maxWidth: .infinity).edgesIgnoringSafeArea(.all)
            ScrollView(.vertical, showsIndicators: false,
                       content: {
                LazyVStack(spacing: 15, pinnedViews: [.sectionFooters], content: {
                    Section(footer: TicketsButton(), content: {
                        HStack{
//                            Button(action: {}, label: {
//                                Image(systemName: "chevron.left")
//                                    .font(.title2)
//                            })
                            
                            Spacer()
                            
                            Button(action: {}, label: {
                                Image(systemName: "bookmark")
                                    .font(.title2)
                            })
                        }
                        .overlay(
                            Text("Детали фильма")
                                .font(.title2)
                                .fontWeight(.semibold)
                        )
                        .padding()
                        .foregroundColor(.white)
                        ZStack{
                            RoundedRectangle(cornerRadius: 15)
                                .fill(Color.white.opacity(0.2))
                                .padding(.horizontal)
                                .offset(y: 12)
                             
                            
                            Image("posterBobbyendeGeestenjagers")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .cornerRadius(15)
                        }
                        .frame(width: getRect().width / 1.5, height: getRect().height / 2)
                        .padding(.top,20)
                        
                        VStack(alignment: .leading, spacing: 15,
                               content: {
                            Text("Бобби и охотники за привидениями ")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                            Text("Мартин Лагесте | 8.7")
                                .foregroundColor(.white)
                                .overlay(
                                    Image(systemName: "star.fill")
                                        .foregroundColor(.yellow)
                                        .offset(x: 35, y: -2)
                                    ,alignment: .trailing
                                )
                            LazyVGrid(columns: [GridItem(.adaptive(minimum: 80))],alignment: .leading , content: {
                                ForEach(genreBobbyendeGeestenjagers,id: \.self){ genterText in
                                    Text(genterText)
                                        .font(.caption)
                                        .padding(.vertical, 10)
                                        .frame(maxWidth: .infinity)
                                        .foregroundColor(.white)
                                        .background(Color.white.opacity(0.08))
                                        .clipShape(Capsule())
                                    
                                }
                                
                            })
                                .padding(.top,20)
                            Text("Описание")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding(.vertical)
                            Text(SynopsisBobbyendeGeestenjagers)
                                .foregroundColor(.white)
                        })
                            .padding(.top,55)
                            .padding(.horizontal)
                            .padding(.leading,10)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    })
                })
                
            })
        }
    }
}

struct Briefgeheim: View {
    var body: some View {
        ZStack{
            Image("bg").resizable().aspectRatio(contentMode: .fill).frame(minWidth: 0, maxWidth: .infinity).edgesIgnoringSafeArea(.all)
            ScrollView(.vertical, showsIndicators: false,
                       content: {
                LazyVStack(spacing: 15, pinnedViews: [.sectionFooters], content: {
                    Section(footer: TicketsButton(), content: {
                        HStack{
//                            Button(action: {}, label: {
//                                Image(systemName: "chevron.left")
//                                    .font(.title2)
//                            })
                            
                            Spacer()
                            
                            Button(action: {}, label: {
                                Image(systemName: "bookmark")
                                    .font(.title2)
                            })
                        }
                        .overlay(
                            Text("Детали фильма")
                                .font(.title2)
                                .fontWeight(.semibold)
                        )
                        .padding()
                        .foregroundColor(.white)
                        ZStack{
                            RoundedRectangle(cornerRadius: 15)
                                .fill(Color.white.opacity(0.2))
                                .padding(.horizontal)
                                .offset(y: 12)
                             
                            
                            Image("posterBriefgeheim")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .cornerRadius(15)
                        }
                        .frame(width: getRect().width / 1.5, height: getRect().height / 2)
                        .padding(.top,20)
                        
                        VStack(alignment: .leading, spacing: 15,
                               content: {
                            Text("Секретное письмо")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                            Text("Симон ван Дюссельдорп | 8.5")
                                .foregroundColor(.white)
                                .overlay(
                                    Image(systemName: "star.fill")
                                        .foregroundColor(.yellow)
                                        .offset(x: 35, y: -2)
                                    ,alignment: .trailing
                                )
                            LazyVGrid(columns: [GridItem(.adaptive(minimum: 80))],alignment: .leading , content: {
                                ForEach(genreBriefgeheim,id: \.self){ genterText in
                                    Text(genterText)
                                        .font(.caption)
                                        .padding(.vertical, 10)
                                        .frame(maxWidth: .infinity)
                                        .foregroundColor(.white)
                                        .background(Color.white.opacity(0.08))
                                        .clipShape(Capsule())
                                    
                                }
                                
                            })
                                .padding(.top,20)
                            Text("Описание")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding(.vertical)
                            Text(SynopsisBriefgeheim)
                                .foregroundColor(.white)
                        })
                            .padding(.top,55)
                            .padding(.horizontal)
                            .padding(.leading,10)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    })
                })
                
            })
        }
    }
}

struct TheCallOfTheWild: View {
    var body: some View {
        ZStack{
            Image("bg").resizable().aspectRatio(contentMode: .fill).frame(minWidth: 0, maxWidth: .infinity).edgesIgnoringSafeArea(.all)
            ScrollView(.vertical, showsIndicators: false,
                       content: {
                LazyVStack(spacing: 15, pinnedViews: [.sectionFooters], content: {
                    Section(footer: TicketsButton(), content: {
                        HStack{
//                            Button(action: {}, label: {
//                                Image(systemName: "chevron.left")
//                                    .font(.title2)
//                            })
                            
                            Spacer()
                            
                            Button(action: {}, label: {
                                Image(systemName: "bookmark")
                                    .font(.title2)
                            })
                        }
                        .overlay(
                            Text("Детали фильма")
                                .font(.title2)
                                .fontWeight(.semibold)
                        )
                        .padding()
                        .foregroundColor(.white)
                        ZStack{
                            RoundedRectangle(cornerRadius: 15)
                                .fill(Color.white.opacity(0.2))
                                .padding(.horizontal)
                                .offset(y: 12)
                             
                            
                            Image("posterTheCallOfTheWild")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .cornerRadius(15)
                        }
                        .frame(width: getRect().width / 1.5, height: getRect().height / 2)
                        .padding(.top,20)
                        
                        VStack(alignment: .leading, spacing: 15,
                               content: {
                            Text("Зов предков")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                            Text("Крис Сандерс | 8.9")
                                .foregroundColor(.white)
                                .overlay(
                                    Image(systemName: "star.fill")
                                        .foregroundColor(.yellow)
                                        .offset(x: 35, y: -2)
                                    ,alignment: .trailing
                                )
                            LazyVGrid(columns: [GridItem(.adaptive(minimum: 80))],alignment: .leading , content: {
                                ForEach(genreTheCallOfTheWild,id: \.self){ genterText in
                                    Text(genterText)
                                        .font(.caption)
                                        .padding(.vertical, 10)
                                        .frame(maxWidth: .infinity)
                                        .foregroundColor(.white)
                                        .background(Color.white.opacity(0.08))
                                        .clipShape(Capsule())
                                    
                                }
                                
                            })
                                .padding(.top,20)
                            Text("Описание")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding(.vertical)
                            Text(SynopsisTheCallOfTheWild)
                                .foregroundColor(.white)
                        })
                            .padding(.top,55)
                            .padding(.horizontal)
                            .padding(.leading,10)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    })
                })
                
            })
        }
    }
}

struct Maeumi: View {
    var body: some View {
        ZStack{
            Image("bg").resizable().aspectRatio(contentMode: .fill).frame(minWidth: 0, maxWidth: .infinity).edgesIgnoringSafeArea(.all)
            ScrollView(.vertical, showsIndicators: false,
                       content: {
                LazyVStack(spacing: 15, pinnedViews: [.sectionFooters], content: {
                    Section(footer: TicketsButton(), content: {
                        HStack{
//                            Button(action: {}, label: {
//                                Image(systemName: "chevron.left")
//                                    .font(.title2)
//                            })
                            
                            Spacer()
                            
                            Button(action: {}, label: {
                                Image(systemName: "bookmark")
                                    .font(.title2)
                            })
                        }
                        .overlay(
                            Text("Детали фильма")
                                .font(.title2)
                                .fontWeight(.semibold)
                        )
                        .padding()
                        .foregroundColor(.white)
                        ZStack{
                            RoundedRectangle(cornerRadius: 15)
                                .fill(Color.white.opacity(0.2))
                                .padding(.horizontal)
                                .offset(y: 12)
                             
                            
                            Image("posterMaeumi")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .cornerRadius(15)
                        }
                        .frame(width: getRect().width / 1.5, height: getRect().height / 2)
                        .padding(.top,20)
                        
                        VStack(alignment: .leading, spacing: 15,
                               content: {
                            Text("Искренние лапы")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                            Text("Пак Ын-хён | 7.3")
                                .foregroundColor(.white)
                                .overlay(
                                    Image(systemName: "star.fill")
                                        .foregroundColor(.yellow)
                                        .offset(x: 35, y: -2)
                                    ,alignment: .trailing
                                )
                            LazyVGrid(columns: [GridItem(.adaptive(minimum: 80))],alignment: .leading , content: {
                                ForEach(genreMaeumi,id: \.self){ genterText in
                                    Text(genterText)
                                        .font(.caption)
                                        .padding(.vertical, 10)
                                        .frame(maxWidth: .infinity)
                                        .foregroundColor(.white)
                                        .background(Color.white.opacity(0.08))
                                        .clipShape(Capsule())
                                    
                                }
                                
                            })
                                .padding(.top,20)
                            Text("Описание")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding(.vertical)
                            Text(SynopsisMaeumi)
                                .foregroundColor(.white)
                        })
                            .padding(.top,55)
                            .padding(.horizontal)
                            .padding(.leading,10)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    })
                })
                
            })
        }
    }
}

struct Pollyanna: View {
    var body: some View {
        ZStack{
            Image("bg").resizable().aspectRatio(contentMode: .fill).frame(minWidth: 0, maxWidth: .infinity).edgesIgnoringSafeArea(.all)
            ScrollView(.vertical, showsIndicators: false,
                       content: {
                LazyVStack(spacing: 15, pinnedViews: [.sectionFooters], content: {
                    Section(footer: TicketsButton(), content: {
                        HStack{
//                            Button(action: {}, label: {
//                                Image(systemName: "chevron.left")
//                                    .font(.title2)
//                            })
                            
                            Spacer()
                            
                            Button(action: {}, label: {
                                Image(systemName: "bookmark")
                                    .font(.title2)
                            })
                        }
                        .overlay(
                            Text("Детали фильма")
                                .font(.title2)
                                .fontWeight(.semibold)
                        )
                        .padding()
                        .foregroundColor(.white)
                        ZStack{
                            RoundedRectangle(cornerRadius: 15)
                                .fill(Color.white.opacity(0.2))
                                .padding(.horizontal)
                                .offset(y: 12)
                             
                            
                            Image("posterPollyanna")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .cornerRadius(15)
                        }
                        .frame(width: getRect().width / 1.5, height: getRect().height / 2)
                        .padding(.top,20)
                        
                        VStack(alignment: .leading, spacing: 15,
                               content: {
                            Text("Поллианна")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                            Text("Сара Хардинг | 8.1")
                                .foregroundColor(.white)
                                .overlay(
                                    Image(systemName: "star.fill")
                                        .foregroundColor(.yellow)
                                        .offset(x: 35, y: -2)
                                    ,alignment: .trailing
                                )
                            LazyVGrid(columns: [GridItem(.adaptive(minimum: 80))],alignment: .leading , content: {
                                ForEach(genrePollyanna,id: \.self){ genterText in
                                    Text(genterText)
                                        .font(.caption)
                                        .padding(.vertical, 10)
                                        .frame(maxWidth: .infinity)
                                        .foregroundColor(.white)
                                        .background(Color.white.opacity(0.08))
                                        .clipShape(Capsule())
                                    
                                }
                                
                            })
                                .padding(.top,20)
                            Text("Описание")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding(.vertical)
                            Text(SynopsisPollyanna)
                                .foregroundColor(.white)
                        })
                            .padding(.top,55)
                            .padding(.horizontal)
                            .padding(.leading,10)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    })
                })
                
            })
        }
    }
}

struct WhatDidSenkaHave: View {
    var body: some View {
        ZStack{
            Image("bg").resizable().aspectRatio(contentMode: .fill).frame(minWidth: 0, maxWidth: .infinity).edgesIgnoringSafeArea(.all)
            ScrollView(.vertical, showsIndicators: false,
                       content: {
                LazyVStack(spacing: 15, pinnedViews: [.sectionFooters], content: {
                    Section(footer: TicketsButton(), content: {
                        HStack{
//                            Button(action: {}, label: {
//                                Image(systemName: "chevron.left")
//                                    .font(.title2)
//                            })
                            
                            Spacer()
                            
                            Button(action: {}, label: {
                                Image(systemName: "bookmark")
                                    .font(.title2)
                            })
                        }
                        .overlay(
                            Text("Детали фильма")
                                .font(.title2)
                                .fontWeight(.semibold)
                        )
                        .padding()
                        .foregroundColor(.white)
                        ZStack{
                            RoundedRectangle(cornerRadius: 15)
                                .fill(Color.white.opacity(0.2))
                                .padding(.horizontal)
                                .offset(y: 12)
                             
                            
                            Image("posterWhatDidSenkaHave")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .cornerRadius(15)
                        }
                        .frame(width: getRect().width / 1.5, height: getRect().height / 2)
                        .padding(.top,20)
                        
                        VStack(alignment: .leading, spacing: 15,
                               content: {
                            Text("Что у Сеньки было")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                            Text("Радомир Василевский | 8.1")
                                .foregroundColor(.white)
                                .overlay(
                                    Image(systemName: "star.fill")
                                        .foregroundColor(.yellow)
                                        .offset(x: 35, y: -2)
                                    ,alignment: .trailing
                                )
                            LazyVGrid(columns: [GridItem(.adaptive(minimum: 80))],alignment: .leading , content: {
                                ForEach(genreWhatDidSenkaHave,id: \.self){ genterText in
                                    Text(genterText)
                                        .font(.caption)
                                        .padding(.vertical, 10)
                                        .frame(maxWidth: .infinity)
                                        .foregroundColor(.white)
                                        .background(Color.white.opacity(0.08))
                                        .clipShape(Capsule())
                                    
                                }
                                
                            })
                                .padding(.top,20)
                            Text("Описание")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding(.vertical)
                            Text(SynopsisWhatDidSenkaHave)
                                .foregroundColor(.white)
                        })
                            .padding(.top,55)
                            .padding(.horizontal)
                            .padding(.leading,10)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    })
                })
                
            })
        }
    }
}

struct TicketsButton: View{
    
    var body: some View{
        NavigationLink(destination: BookingView(), label: {
            Text("Купить билеты")
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding(.vertical)
                .frame(width: getRect().width / 2)
                .background(Image("Button"))
                .cornerRadius(15)
        })
            .shadow(color: Color.white.opacity(0.15), radius: 5, x: 5, y: 5)
            .shadow(color: Color.white.opacity(0.15), radius: 5, x: -5, y: -5)
    }
}

extension View{
    func getRect() -> CGRect{
        return UIScreen.main.bounds
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Duna()
    }
}
