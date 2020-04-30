//
//  FaqBannerView.swift
//  DreamJournalProject.iOS
//
//  Created by Dmitriy Dmitriy on 29.04.2020.
//  Copyright © 2020 Dmitrii Zverev. All rights reserved.
//

import SwiftUI

struct FaqBannerView: View {
    var body: some View {
        ZStack {
            Image("faq_banner")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 171)
                .cornerRadius(28)
                .edgesIgnoringSafeArea([.top, .bottom])
            HStack {
                Spacer()
                
                VStack (alignment: .trailing) {
                    Text("Get different badges for the total number of dreams!")
                        .frame(width: 171)
                        .font(.system(size: 13))
                        .foregroundColor(Color("banner.text"))
                        .multilineTextAlignment(.trailing)
                        .padding([.top, .trailing], 24)
                    
                    Text("READ ME")
                        .font(.system(size: 11, weight: .bold, design: .default))
                        .frame(width: 97, height: 31)
                        .background(Color("banner.text"))
                        .cornerRadius(15)
                        .padding(.trailing, 24)
                        .padding(.top, 15)
                    Spacer()
                }
            }
        }
        .frame(height: 171)
    }
}

struct FaqBannerView_Previews: PreviewProvider {
    static var previews: some View {
        FaqBannerView()
    }
}
