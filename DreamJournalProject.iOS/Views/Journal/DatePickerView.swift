//
//  DatePickerView.swift
//  DreamJournalProject.iOS
//
//  Created by Dmitriy Dmitriy on 25.04.2020.
//  Copyright © 2020 Dmitrii Zverev. All rights reserved.
//

import SwiftUI

struct DatePickerView: View {
    
    @State var isSelected: Bool
    @State var text: String
    
    var body: some View {
        ZStack {
            if isSelected {
                HStack {
                    Text(text)
                        .font(.system(size: 11, weight: .bold, design: .default))
                }
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
                .background(Color(red: 108/255, green: 110/255, blue: 165/255))
                .cornerRadius(24)
            } else {
                HStack {
                    Text(text)
                        .font(.system(size: 11, weight: .bold, design: .default))
                }
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
                .background(Color(red: 200/255, green: 201/255, blue: 224/255))
                .cornerRadius(24)
            }
        }
        
    }
}

struct DatePickerView_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerView(isSelected: true, text: "2019")
    }
}
