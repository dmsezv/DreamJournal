//
//  MockedData.swift
//  DreamJournalProject.iOS
//
//  Created by Dmitriy Dmitriy on 10.05.2020.
//  Copyright © 2020 Dmitrii Zverev. All rights reserved.
//

import Foundation

#if DEBUG

extension DreamNote {
    static let mockedData: [DreamNote] = [
        DreamNote(id: 1, dateCreate: Date(), dateUpdate: Date(), isLucidDream: true, audio: nil, image: nil, text: ###"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum"###),
        
        DreamNote(id: 2, dateCreate: Date(), dateUpdate: Date(), isLucidDream: true, audio: nil, image: nil, text: ###"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum"###),
        
        DreamNote(id: 3, dateCreate: Date(), dateUpdate: Date(), isLucidDream: true, audio: nil, image: nil, text: ###"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum"###),
        
        DreamNote(id: 4, dateCreate: Date(), dateUpdate: Date(), isLucidDream: false, audio: nil, image: nil, text: ###"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum"###),
        
        DreamNote(id: 5, dateCreate: Date(), dateUpdate: Date(), isLucidDream: false, audio: nil, image: nil, text: ###"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum"###)
    ]
}

#endif
