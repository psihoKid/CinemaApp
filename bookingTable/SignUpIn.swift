//
//  SignUpIn.swift
//  bookingTable
//
//  Created by Admin on 24.02.2022.
//

import Foundation
import SwiftUI

struct Regestration: View{
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(sortDescriptors: []) var users: FetchedResults<User>
    
    
    @State var userName: String = ""
    @State var userLastName: String = ""
    @State var userLogin: String = ""
    @State var userPassword: String = ""
    @State var userRetryPassword: String = ""
    @State var userEmail: String = ""
    @State var Emails: [String]  = ["@mail.ru","@gmail.com", "@outlook.com", "@yahoo!mail.com","@aol.com"]
    @State var RightMail: Bool = false
    @State var Succ: Bool = false
    var body: some View{
        NavigationView{
            
            ZStack{
                Image("bg").resizable().aspectRatio(contentMode: .fill).frame(minWidth: 0, maxWidth: .infinity).edgesIgnoringSafeArea(.all)
                VStack{
                    HStack{
                        Text("Регестрация")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                    }.padding(1)
                    HStack{
                        Image(systemName: "person").foregroundColor(.gray)
                        TextField("Введите ваше имя", text: $userName)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    }.padding(1)
                    HStack{
                        Image(systemName: "person").foregroundColor(.gray)
                        TextField("Введите вашу фамилию", text: $userLastName)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    }.padding(1)
                    HStack{
                        Image(systemName: "person").foregroundColor(.gray)
                        TextField("Введите ваш логин ", text: $userLogin)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    }.padding(1)
                    HStack{
                        Image(systemName: "person").foregroundColor(.gray)
                        TextField("Введите ваш пороль", text: $userPassword)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    }.padding(1)
                    HStack{
                        Image(systemName: "person").foregroundColor(.gray)
                        TextField("Повторите ваш пороль", text: $userRetryPassword)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    }.padding(1)
                    HStack{
                        Image(systemName: "person").foregroundColor(.gray)
                        TextField("Введите вашу почту", text: $userEmail)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    }.padding(3)
                    Button("Создать аккаунт"){
                        
                        for item in Emails{
                            if userEmail.contains(item){
                                RightMail = true
                            }
                        }
                        
                        if userPassword == userRetryPassword{
                            if userPassword.count>=6{
                                if userName.count>=3{
                                    if RightMail{
//                                        Succ = true
                                        do{
                                            
                                            let user = User(context: moc)
                                            user.id = UUID()
                                            user.name = userName
                                            user.lastName = userLastName
                                            user.login = userLogin
                                            user.role = "Common user"
                                            user.password = userPassword
                                            user.mail = userEmail
                                            try moc.save()
                                            Succ = true
                                            RightMail = false
//                                                .alert(isPresented: $Succ){
//                                                    Alert(
//                                                        title: Text("Успешно"),
//                                                        message: Text("Вы успешно зарегестрировались")
//                                                    )
//                                                }
                                                
                                        }catch{
                                            print(error)
                                        }
                                    }
                                }
                            }
                        }
                    }.padding(3)
                    
                    NavigationLink(destination: SignIn(), label:{
                        Text("Войти")
                    })
                }.navigationBarTitleDisplayMode(.inline)
            }
        }.navigationBarBackButtonHidden(true)
            .alert(isPresented: $Succ){
                Alert(
                    title: Text("Успешно"),
                    message: Text("Вы успешно зарегестрировались")
                )
            }
    }
}


struct SignIn: View{
    @State var mm: Bool = false
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(sortDescriptors: []) var users: FetchedResults<User>
    @State var userLogin: String = ""
    @State var userPassword: String = ""
    
    var body: some View{
        NavigationView{
            ZStack{
                Image("bg").resizable().aspectRatio(contentMode: .fill).frame(minWidth: 0, maxWidth: .infinity).edgesIgnoringSafeArea(.all)
                VStack{
                    HStack{
                        Text("Регестрация")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                    }.padding(1)
                    HStack{
                        Image(systemName: "person").foregroundColor(.gray)
                        TextField("Введите ваш логин", text: $userLogin)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    }.padding(1)
                    HStack{
                        Image(systemName: "person").foregroundColor(.gray)
                        TextField("Введите ваш пороль", text: $userPassword)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    }.padding(1)
                    NavigationLink(destination: MainMenu(), isActive: $mm){EmptyView()}
                    Button("Войти"){
                        for user in users{
                            if user.login==userLogin && user.password == userPassword{
                                mm = true

                            }
                            else{
                                
                            }
                        }
                    }
                }
            }
        }.navigationBarBackButtonHidden(true)
    }
}

struct AdminPanel: View{
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(sortDescriptors: []) var users: FetchedResults<User>
    @State var dellUser: String = ""
    
    var body: some View{
        NavigationView{
            VStack{
                List(users) {user in
                    HStack{
                        Text("Name: \(user.name ?? "Unknow"), LastName: \(user.lastName ?? "Unknow"), Login: \(user.login ?? "Unknow"),Password: \(user.password ?? "Unknow"), Mail: \(user.mail ?? "Unknow") ,Role: \(user.role ?? "Unknow")")
                    }
                }
                TextField("user login for dell or something else", text: $dellUser)
                Button("Delete all"){
                    for user in users{
                        do{
                            if user.login == dellUser || user.name == dellUser || user.lastName == dellUser || user.mail == dellUser{
                                moc.delete(user)
                                try moc.save()
                            }
                        }catch{
                            print(error)
                        }
                    }
                }
                .padding(.horizontal, 24)
            }
        }
    }
}

