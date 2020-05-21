//
//  LucidDreamToggle.swift
//  DreamJournalProject.iOS
//
//  Created by Dmitriy Dmitriy on 21.05.2020.
//  Copyright © 2020 Dmitrii Zverev. All rights reserved.
//

import SwiftUI

struct LucidDreamToggle: View {
    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(Color("dj.purpule"))
                .frame(width: 18, height: 18, alignment: .center)
            Circle()
                .foregroundColor(Color(red: 76/255, green: 60/255, blue: 118/255))
                .frame(width: 16, height: 16, alignment: .center)
            Circle()
                .foregroundColor(Color.white)
                .frame(width: 6, height: 6, alignment: .center)
        }
    }
}

struct LucidDreamToggle_Previews: PreviewProvider {
    static var previews: some View {
        LucidDreamToggle()
            .previewLayout(.fixed(width: 50, height: 50))
    }
}
