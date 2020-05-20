//
//  DreamNote.swift
//  DreamJournalProject.iOS
//
//  Created by Dmitriy Dmitriy on 19.05.2020.
//  Copyright © 2020 Dmitrii Zverev. All rights reserved.
//

import SwiftUI

struct DreamNoteView: View {
    
    var index: Int
    
    @State var isEditing = false
    @State var text = "test"
    
    var body: some View {
        GeometryReader { geometry in
                   
           Image("background_image")
               .resizable()
               .aspectRatio(contentMode: .fill)
               .background(Color("dj.background"))
               .edgesIgnoringSafeArea([.top, .bottom])
            
            VStack {
                //Navigation Bar
                NoteNavBar(isEditing: self.isEditing)
                
                ScrollView {
                    VStack(alignment: .leading) {
                    Text("Sunday")
                        .font(.system(size: 34, weight: .bold, design: .default))
                        .foregroundColor(Color.white)
                        .padding(.bottom, 4)
                    Text("2019 December, 15")
                        .font(.system(size: 17, weight: .regular, design: .default))
                        .foregroundColor(Color(red: 129/255, green: 131/255, blue: 186/255))
                    
                    Text("\(self.index)")
                
                
                Spacer()
                
                
                    TextField("", text: self.$text)
                    }
                }
            }
            
        }
        .edgesIgnoringSafeArea([.top, .bottom])
    }
}

#if DEBUG

struct DreamNote_Previews: PreviewProvider {
    static var previews: some View {
        DreamNoteView(index: 0)
    }
}

#endif
