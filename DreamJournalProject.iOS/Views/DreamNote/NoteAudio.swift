//
//  NoteAudio.swift
//  DreamJournalProject.iOS
//
//  Created by Dmitriy Dmitriy on 21.05.2020.
//  Copyright © 2020 Dmitrii Zverev. All rights reserved.
//

import SwiftUI

struct NoteAudio: View {
    var body: some View {
        HStack {
            HStack {
                Button(action:{})
                {
                    ZStack {
                        Circle()
                            .foregroundColor(Color.white)
                        Circle()
                            .foregroundColor(Color("dj.purpule"))
                            .frame(width: 23, height: 23, alignment: .center)
                        Image("note.play_audio")
                            .offset(x: 1.7, y: 0)
                            //.resizable()
                            .foregroundColor(Color.white)
                        
                    }
                }
                .frame(width: 25, height: 25, alignment: .center)
                    
                    
                Image("note.record_image")
            }
            .frame(width: 251, height: 41, alignment: .center)
            .background(Color("dj.purpule"))
            .cornerRadius(21)
            
            
            Text("22 sec")
                .font(.system(size: 13))
                .foregroundColor(Color("notesrow.text"))
                .padding(.leading, 8)
        }
    }
}

struct NoteAudio_Previews: PreviewProvider {
    static var previews: some View {
        NoteAudio()
            .previewLayout(.fixed(width: 600, height: 200))
    }
}
