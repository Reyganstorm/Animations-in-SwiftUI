//
//  TourTittle.swift
//  Animations in SwiftUI
//
//  Created by Руслан Штыбаев on 02.06.2023.
//

import SwiftUI

struct TourTittle: View {
    let title: String
    let caption: String

    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.bold)
                .shadow(radius: 5)
                .foregroundColor(.white)

            Text(caption)
                .font(.caption)
                .foregroundColor(.white)
        }
    }
}

struct TourTittle_Previews: PreviewProvider {
    static var previews: some View {
        TourTittle(title: "Hello", caption: "We are here")
    }
}
