//
//  DreamNote.swift
//  DreamJournalProject.iOS
//
//  Created by Dmitriy Dmitriy on 10.05.2020.
//  Copyright © 2020 Dmitrii Zverev. All rights reserved.
//

import Foundation


struct DreamNote {
    var id: Int
    var dateCreate: Date
    var dateUpdate: Date
    var isLucidDream: Bool
    
    var audio: AudioFile?
    var image: ImageFile?
    
    var text: String
}

