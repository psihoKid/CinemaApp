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
    var body: some View{
        NavigationView{
            ZStack{
                Image("signUpIn").resizable().aspectRatio(contentMode: .fill).frame(minWidth: 0, maxWidth: .infinity).edgesIgnoringSafeArea(.all)
                VStack{
                    HStack{
                        Image(systemName: "person").foregroundColor(.gray)
                        TextField("Enter your name", text: $userName)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                    HStack{
                        Image(systemName: "person").foregroundColor(.gray)
                        TextField("Enter your last name", text: $userLastName)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                    HStack{
                        Image(systemName: "person").foregroundColor(.gray)
                        TextField("Enter your login", text: $userLogin)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                    HStack{
                        Image(systemName: "person").foregroundColor(.gray)
                        TextField("Enter your password", text: $userPassword)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                    HStack{
                        Image(systemName: "person").foregroundColor(.gray)
                        TextField("Repeat your password", text: $userRetryPassword)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                    HStack{
                        Image(systemName: "person").foregroundColor(.gray)
                        TextField("Repeat your e-mail", text: $userEmail)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                    Button("Creat account"){
                        
                        for item in Emails{
                            if userEmail.contains(item){
                                RightMail = true
                            }
                        }
                        
                        if userPassword == userRetryPassword{
                            if userPassword.count>=6{
                                if userName.count>=3{
                                    if RightMail{
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
                                            RightMail = false
                                        }catch{
                                            print(error)
                                        }
                                    }
                                }
                            }
                        }
                    }
                    
                    NavigationLink(destination: SignIn(), label:{
                        Text("Sign In")
                    })
                    NavigationLink(destination: AdminPanel(), label:{
                        Text("User Panel")
                    })
                }.navigationTitle(Text("Registration form"))
            }
        }.navigationBarBackButtonHidden(true)
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
                Image("signUpIn").resizable().aspectRatio(contentMode: .fill).frame(minWidth: 0, maxWidth: .infinity).edgesIgnoringSafeArea(.all)
                VStack{
                    HStack{
                        Image(systemName: "person").foregroundColor(.gray)
                        TextField("Enter your login", text: $userLogin)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                    HStack{
                        Image(systemName: "person").foregroundColor(.gray)
                        TextField("Enter your password", text: $userPassword)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                    //NavigationLink(destination: mainMenu(), isActive: $mm){EmptyView()}
                    NavigationLink(destination: Home(), isActive: $mm){EmptyView()}
                    Button("Sign In"){
                        for user in users{
                            if user.login==userLogin && user.password == userPassword{
                                mm = true
                                //NavigationLink(destination: mainMenu(), isActive: $mm){EmptyView()}
                                //NavigationLink(destination: MainMenuAssorti(), isActive: $mm){EmptyView()}
                                print("Ok")
                            }
                            else{
                                print("No")
                            }
                        }
                    }
                }
                .navigationTitle("Sign In")
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

