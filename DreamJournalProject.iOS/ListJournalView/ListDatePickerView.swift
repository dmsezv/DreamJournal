//
//  ListDatePickerView.swift
//  DreamJournalProject.iOS
//
//  Created by Dmitriy Dmitriy on 25.04.2020.
//  Copyright © 2020 Dmitrii Zverev. All rights reserved.
//

import SwiftUI

struct ListDatePickerView: View {
    var body: some View {
        ScrollView (.horizontal, showsIndicators: false) {
             HStack {
                Group {
                     DatePickerView(isSelected: true, text: "Jan")
                        .frame(width: 63)
                        .padding([.top, .bottom], 5)
                        .padding([.leading], 24)
                    
                    DatePickerView(isSelected: false, text: "Feb")
                    .frame(width: 63)
                    .padding([.top, .bottom], 5)
                    
                    DatePickerView(isSelected: false, text: "Mar")
                    .frame(width: 63)
                    .padding([.top, .bottom], 5)
                    
                    DatePickerView(isSelected: false, text: "Apr")
                    .frame(width: 63)
                    .padding([.top, .bottom], 5)
                    
                    DatePickerView(isSelected: false, text: "May")
                    .frame(width: 63)
                    .padding([.top, .bottom], 5)
                    
                    DatePickerView(isSelected: false, text: "Jun")
                    .frame(width: 63)
                    .padding([.top, .bottom], 5)
                }
                
                Group {
                    DatePickerView(isSelected: false, text: "Jui")
                    .frame(width: 63)
                    .padding([.top, .bottom], 5)
                    
                    DatePickerView(isSelected: false, text: "Aug")
                    .frame(width: 63)
                    .padding([.top, .bottom], 5)
                    
                    DatePickerView(isSelected: false, text: "Sep")
                    .frame(width: 63)
                    .padding([.top, .bottom], 5)
                    
                    DatePickerView(isSelected: false, text: "Okt")
                    .frame(width: 63)
                    .padding([.top, .bottom], 5)
                    
                    DatePickerView(isSelected: false, text: "Nov")
                   .frame(width: 63)
                   .padding([.top, .bottom], 5)
                    
                    DatePickerView(isSelected: false, text: "Dec")
                    .frame(width: 63)
                    .padding([.top, .bottom], 5)
                    .padding([.trailing], 24)
                }
             }
        }
        .frame(height: 35)
    }
}

struct ListDatePickerView_Previews: PreviewProvider {
    static var previews: some View {
        ListDatePickerView()
    }
}
