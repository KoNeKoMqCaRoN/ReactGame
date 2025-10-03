//
//  RankingView.swift
//  React
//
//  Created by cmStudent on 2025/10/01.
//

import SwiftUI

struct RankingView: View {
   
   let results: [Result] = getResults()
   
    var body: some View {
       ForEach(results, id: \.id) { result in
          Text(result.name)
       }
    }
}

#Preview {
    RankingView()
}
