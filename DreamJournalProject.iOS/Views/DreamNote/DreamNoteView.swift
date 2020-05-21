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
            
            VStack {
                //Navigation Bar
                NoteNavBar(isEditing: self.isEditing)
                GeometryReader { geometrySV in
                    ScrollView(.vertical) {
                        
                        VStack(alignment: .leading) {
                            VStack(alignment: .leading) {
                                Text("Sunday")
                                    .font(.system(size: 34, weight: .bold, design: .default))
                                    .foregroundColor(Color.white)
                                    .padding(.bottom, 4)
                                Text("2019 December, 15")
                                    .font(.system(size: 17, weight: .regular, design: .default))
                                    .foregroundColor(Color(red: 129/255, green: 131/255, blue: 186/255))
                            }
                            .padding(.leading, 24)
                            
                            
                            
                            
                            HStack {
                                LucidDreamToggle()
                                Text("Lucid dream")
                                    .font(.system(size: 15))
                                    .foregroundColor(Color.white)
                                
                                Spacer()
                                
                                Image("note.add_image")
                                    .padding(.trailing, 17)
                                Image("note.add_audio")
                            }
                            .padding(.top, 30)
                            .padding([.leading, .trailing], 24)
                            
                            
                            VStack (alignment: .leading){
                                NoteAudio()
                                    .padding(.bottom, 25)
                                
                                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum")
                                    .font(.system(size: 17))
                                    .foregroundColor(Color("notesrow.text"))
                                    .padding(.bottom, 24)
                                    
                                Image("test_image")
                                    .resizable()
                                    .scaledToFit()
                                
                                Spacer()
                            }
                            .padding([.top, .leading, .trailing], 25)
                            .frame(width: geometry.size.width, height: geometry.size.height, alignment: .center)
                            .background(Color("dj.purpule.row"))
                            .cornerRadius(42)
                        }
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
