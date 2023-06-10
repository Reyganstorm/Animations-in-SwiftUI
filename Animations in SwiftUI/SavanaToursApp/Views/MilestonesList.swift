//
//  MilestonesList.swift
//  Animations in SwiftUI
//
//  Created by Руслан Штыбаев on 02.06.2023.
//

import SwiftUI

struct MilestonesList: View {
  var body: some View {
    List((0...4), id: \.self) { num in
      VStack(alignment: .leading) {
        Text("Milestone #\(num + 1)")
          .font(.title)
        HStack(alignment: .lastTextBaseline) {
          Text("Savanna National Park (\(num * 12 + 5)km)")
            .font(.subheadline)
          Image(systemName: "pin")
          Spacer()
          Text("South Africa")
            .font(.subheadline)
        }
      }
      .padding()
    }
  }
}


struct MilestonesList_Previews: PreviewProvider {
    static var previews: some View {
        MilestonesList()
    }
}
