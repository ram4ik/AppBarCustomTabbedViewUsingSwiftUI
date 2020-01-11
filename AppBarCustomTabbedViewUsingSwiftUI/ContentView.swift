//
//  ContentView.swift
//  AppBarCustomTabbedViewUsingSwiftUI
//
//  Created by Ramill Ibragimov on 11.01.2020.
//  Copyright © 2020 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var selected = 0
    
    var body: some View {
        VStack {
            TopBar(selected: $selected)
            GeometryReader {_ in
                VStack {
                    if self.selected == 0 {
                        Text("Chats")
                    } else if self.selected == 1 {
                        Text("Group")
                    } else if self.selected == 2 {
                        Text("Status")
                    } else {
                        Text("Active")
                    }
                }
            }
        }.edgesIgnoringSafeArea(.top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

class Host: UIHostingController<ContentView> {
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}

struct TopBar: View {
    @Binding var selected: Int
    
    var body: some View {
        VStack(spacing: 20) {
            HStack {
                Text("WhatsApp")
                    .font(.system(size: 20))
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                Spacer()
                Button(action: {
                    
                }) {
                    Image(systemName: "plus")
                        .font(.headline)
                        .foregroundColor(.white)
                }
            }
            
            HStack {
                Button(action: {
                    self.selected = 0
                }) {
                    Text("Chats")
                        .fontWeight(.semibold)
                        .foregroundColor(self.selected == 0 ? .white : Color.white.opacity(0.5))
                }
                Spacer(minLength: 8)
                
                Button(action: {
                    self.selected = 1
                }) {
                    Text("Group")
                        .fontWeight(.semibold)
                        .foregroundColor(self.selected == 1 ? .white : Color.white.opacity(0.5))
                }
                Spacer(minLength: 8)
                
                Button(action: {
                    self.selected = 2
                }) {
                    Text("Status")
                        .fontWeight(.semibold)
                        .foregroundColor(self.selected == 2 ? .white : Color.white.opacity(0.5))
                }
                Spacer(minLength: 8)
                
                Button(action: {
                    self.selected = 3
                }) {
                    Text("Active")
                        .fontWeight(.semibold)
                        .foregroundColor(self.selected == 3 ? .white : Color.white.opacity(0.5))
                }
            }.padding(.top)
        }
        .padding()
        .padding(.top, (UIApplication.shared.windows.last?.safeAreaInsets.top)! + 10)
        .background(Color("Color"))
    }
}
