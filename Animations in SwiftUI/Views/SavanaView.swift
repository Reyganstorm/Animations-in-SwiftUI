//
//  SavanaView.swift
//  Animations in SwiftUI
//
//  Created by Руслан Штыбаев on 02.06.2023.
//

import SwiftUI

struct SavanaView: View {
    
    @State var zoomed = false
    
    var body: some View {
        VStack(spacing: 0) {
            HeroImage(name: "savana")
            
            ZStack {
                HStack {
                    TourTittle(title: "Savana",
                               caption: "15 mile deive followed by an hour long trek")
                    .offset(x: self.zoomed ? 500 : 0, y: -15)
                    .animation(.default, value: self.zoomed)
                    .padding(.leading, 30)
                    Spacer()
                }
                
                Image("coat")
                    .clipShape(RoundedRectangle(cornerRadius: self.zoomed ? 40 : 500)).overlay(
                        Circle()
                            .fill(self.zoomed ? Color.clear : Color(red: 0.1, green: 0.1, blue: 0.1, opacity: 0.4))
                            .scaleEffect(0.8)
                            .saturation(self.zoomed ? 1 : 0)
                    )
                    .position(x: self.zoomed ? 220 : 600, y: 50)
                    .scaleEffect(self.zoomed ? 1.33 : 0.33)
                    .shadow(radius: 10)
                    .animation(.spring(), value: self.zoomed)
                    .onTapGesture {
                        self.zoomed.toggle()
                    }
            }
            .background(Color(red: 0.1, green: 0.1, blue: 0.1))
            
            MilestonesList()
        }
    }
}

struct SavanaView_Previews: PreviewProvider {
    static var previews: some View {
        SavanaView()
    }
}
