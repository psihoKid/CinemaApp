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
                            Button(action: {}, label: {
                                Image(systemName: "chevron.left")
                                    .font(.title2)
                            })
                            
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
                            Text("Хадзимэ Камосида | 5")
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

struct TicketsButton: View{
    
    var body: some View{
        NavigationLink(destination: Text("Destination"), label: {
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
        Home()
    }
}
