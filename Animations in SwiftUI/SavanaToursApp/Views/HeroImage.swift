//
//  HeroImage.swift
//  Animations in SwiftUI
//
//  Created by Руслан Штыбаев on 02.06.2023.
//

import SwiftUI

struct HeroImage: View {
  let name: String

  var body: some View {
    Image(name)
      .resizable()
      .edgesIgnoringSafeArea(.top)
      .frame(height: 300)
  }
}

struct HeroImage_Previews: PreviewProvider {
    static var previews: some View {
        HeroImage(name: "savana")
    }
}
