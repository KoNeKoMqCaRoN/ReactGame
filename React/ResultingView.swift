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
    
    @Environment(\.dismiss) private var dismiss //ひとつ前に戻る
    
    var body: some View {
        VStack{
            if isFail {
                Text("フライング！")
                
            } else if let time = reactionTime {
                Text(String(format: "%.7f秒", time))
            }
            
            Button{
                
                
                
            } label: {
                Text("ランキングに載せる！")
            }
            
            Button{
                onRetry()
            } label: {
                Text("もう一回")
            }
            
            Button{
                dismiss()
                dismiss()
            } label: {
                Text("ホームに戻る")
            }
            
        }
    }
}
