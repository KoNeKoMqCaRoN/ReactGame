//
//  ResultingView.swift
//  React
//
//  Created by cmStudent on 2025/10/03.
//

import SwiftUI

struct ResultingView: View {
    
    let reactionTime: Double? // 成功時の反応時間
    let isFail: Bool          //フライング判定
    let onRetry: () -> Void
    
    let scwidth = UIScreen.main.bounds.width
    let scheight = UIScreen.main.bounds.height
    
    @Environment(\.dismiss) private var dismiss //ひとつ前に戻る
    
    var body: some View {
        
        ZStack{
            Image("home")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            VStack{
                Text("リザルト")
                    .font(.system(size: 50))

                    
                
                if isFail {
                    Text("押すの早すぎ！")
                        //.padding(.top, 80)
                    
                } else if let time = reactionTime {
                    Text(String(format: "%.7f秒", time))
                        .padding(.top, 80)
                    
                    Button{
                        
                        
                        
                    } label: {
                        Text("ランキングに載せる！")
                    }
                }
                Spacer()
            }
            .frame(maxWidth: scwidth * 0.8, maxHeight: scheight * 0.5)
            .background(Color.white.opacity(0.75))
            .cornerRadius(20)
        }
    }
}


