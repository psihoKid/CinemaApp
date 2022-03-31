//
//  BookingView.swift
//  bookingTable
//
//  Created by Admin on 20.03.2022.
//

import SwiftUI

struct BookingView: View {
    var body: some View {
        ZStack{
            Image("bg").resizable().aspectRatio(contentMode: .fill).frame(minWidth: 0, maxWidth: .infinity).edgesIgnoringSafeArea(.all)
            ScrollView(.vertical, showsIndicators: false, content: {
                HStack{
                    Button(action: {}, label: {
                        Image(systemName: "chevron.left")
                            .font(.title2)
                            .foregroundColor(.white )
                    })
                    Spacer()
                }
                
                .overlay(
                    Text("Выберите места")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                )
                .padding()
                GeometryReader{reader in
                    
                    let width = reader.frame(in: .global).width
                    Path{path in
                        
                        path.move(to: CGPoint(x: 0, y: 50))
                        path.addCurve(to: CGPoint(x: width, y: 50), control1: CGPoint(x: width / 2, y: 0), control2: CGPoint(x: width / 2, y: 0))
                    }
                    .stroke(Color.gray, lineWidth: 1.5)
                     
                }
                .frame(height: 50)
                .padding(.top,20)
                .padding(.horizontal,35)
                
                let totalSeats = 60 + 4
                let leftSide = 0..<totalSeats/2
                let rightSide = totalSeats/2..<totalSeats
                
                HStack(spacing: 30){
                    let columns = Array(repeating: GridItem(.flexible(), spacing: 10), count: 4)
                    LazyVGrid(columns: columns, spacing: 13) {
                        ForEach(leftSide){index in
                            ZStack{
                                Text(String(index))
                                RoundedRectangle(cornerRadius: 6)
                                    .stroke(Color.blue)
                                    .frame(height: 30)
                            }
                         }
                    }
                    LazyVGrid(columns: columns, spacing: 13) {
                        ForEach(leftSide){index in
                            Text("da").foregroundColor(.white)
                         }
                    }
                }
            })
        }
    }
}




struct BookingView_Previews: PreviewProvider {
    static var previews: some View {
        BookingView()
    }
}
