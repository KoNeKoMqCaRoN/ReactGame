//
//  PlayingView.swift
//  React
//
//  Created by cmStudent on 2025/10/01.
//

import SwiftUI

struct PlayingView: View {
   let results: [Result] = getResults()
   
   var body: some View {
      VStack {
         List {
            ForEach(results, id: \.id) { result in
               Text("\(result.name): \(result.reactTime)")
                  .font(.title2)
            }
         }
      }
   }
}

#Preview {
   PlayingView()
}
