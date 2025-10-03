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
        List {
            ForEach(results, id: \.id) { result in
                Text("\(result.name): \(result.reactTime)秒")
                    .font(.title)
            }
        }
    }
}

#Preview {
    RankingView()
}
