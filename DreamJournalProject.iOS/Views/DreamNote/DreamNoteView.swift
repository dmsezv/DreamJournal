//
//  DreamNote.swift
//  DreamJournalProject.iOS
//
//  Created by Dmitriy Dmitriy on 19.05.2020.
//  Copyright © 2020 Dmitrii Zverev. All rights reserved.
//

import SwiftUI

struct DreamNoteView: View {
    
    @State var isEditing = false
    @State var text = "test"
    
    var body: some View {
        VStack {
            VStack (alignment: .leading) {
                
                //Navigation Bar
                HStack {
                    Image("nav.back")
                    
                    Spacer()
                    
                    if !isEditing {
                        Image("nav.share")
                        Image("nav.delete")
                    } else {
                        Image("nav.share")
                        Image("nav.delete")
                    }
                }
                
                Text("Sunday")
                Text("2019 December, 15")
            }
            
            Spacer()
            
            VStack {
                TextField("", text: $text)
            }
        }
    }
}

#if DEBUG

struct DreamNote_Previews: PreviewProvider {
    static var previews: some View {
        DreamNoteView()
            .background(Color.blue)
    }
}

#endif
