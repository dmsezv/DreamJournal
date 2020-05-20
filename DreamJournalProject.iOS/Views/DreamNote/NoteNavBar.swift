//
//  NoteNavBar.swift
//  DreamJournalProject.iOS
//
//  Created by Dmitriy Dmitriy on 20.05.2020.
//  Copyright © 2020 Dmitrii Zverev. All rights reserved.
//

import SwiftUI

struct NoteNavBar: View {
    
    @State var isEditing = false
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }) {
                    HStack {
                        Image("nav.back")
                            .foregroundColor(Color(red: 181/255, green: 129/255, blue: 243/255))
                        .frame(width: 18, height: 29, alignment: .center)
                    }
                }
                
                Spacer()
                
                if !self.isEditing {
                    Image("nav.share")
                    .frame(width: 18, height: 29, alignment: .center)
                        .padding(.trailing, 25)
                    Image("nav.delete")
                    .frame(width: 18, height: 29, alignment: .center)
                } else {
                    Image("nav.share")
                    .frame(width: 18, height: 29, alignment: .center)
                        .padding(.trailing, 25)
                    Image("nav.delete")
                    .frame(width: 18, height: 29, alignment: .center)
                }
            }
            .padding(.top, 30)
            .padding(.bottom, 11)
            .padding([.leading, .trailing], 24)
        }
    }
}

struct NoteNavBar_Previews: PreviewProvider {
    static var previews: some View {
        NoteNavBar()
            .previewLayout(.fixed(width: 500, height: 100))
    }
}
