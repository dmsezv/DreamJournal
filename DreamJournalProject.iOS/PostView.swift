//
//  PostView.swift
//  DreamJournalProject.iOS
//
//  Created by Dmitriy Dmitriy on 22.04.2020.
//  Copyright © 2020 Dmitrii Zverev. All rights reserved.
//

import SwiftUI

struct PostView: View {
    var body: some View {
        HStack(alignment: .center, spacing: 17) {
            VStack(alignment: .trailing, spacing: 0) {
                VStack(alignment: .center, spacing: 8) {
                    VStack(alignment: .center, spacing: 0) {
                        Text("24")
                            .foregroundColor(Color(red: 201/255, green: 202/255, blue: 224/255))
                            .font(.system(size: 24))
                            
                        Text("dec")
                            .foregroundColor(Color(red: 201/255, green: 202/255, blue: 224/255))
                            .font(.system(size: 11))
                    }
                    
                    Circle()
                        .fill(Color(red: 179/255, green: 122/255, blue: 243/255))
                        .frame(width: 4, height: 4)
                }
            }
            .padding(.leading, 15)
            
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum")
            .foregroundColor(Color(red: 119/255, green: 108/255, blue: 150/255))
            .lineLimit(3)
            .font(.system(size: 15))
                .padding(.trailing, 22)
        }
        .frame(width: CGFloat(360), height: CGFloat(92), alignment: .center)
        .background(Color(red: 44/255, green: 33/255, blue: 57/255))
        .cornerRadius(16)
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView()
    }
}
