//
//  PlayingView.swift
//  React
//
//  Created by cmStudent on 2025/10/01.
//

import SwiftUI

struct PlayingView: View {
    @State private var isShining = false        // 光ったかどうか
    @State private var startTime: Date?       // 光り始めた時刻
    @State private var reactionTime: Double?  // 成功時の反応時間
    @State private var isFail = false         // フライング判定
    @State private var showResult = false     // 結果画面表示
    //let watingImage = Image(.wating)

    var body: some View {
        ZStack {
            (isShining ? Image(.shining) : Image(.wating))
                .ignoresSafeArea()
            
            Text(isShining ? "今だ！！" : "集中…")
                .font(.largeTitle)
                .foregroundColor(.white)
        }
        .onAppear {
            startWaiting()
        }
        .onTapGesture {
            handleTap()
        }
        .navigationDestination(isPresented: $showResult) {
            ResultingView()
        }
        
    }

    // 5〜7秒ランダム待ってから光る
    func startWaiting() {
        isShining = false
        reactionTime = nil
        isFail = false
        showResult = false

        let delay = Double.random(in: 5...7)
        DispatchQueue.main.asyncAfter(deadline: .now() + delay) {
            isShining = true
            startTime = Date()
        }
    }

    // タップされた時の処理
    func handleTap() {
        if isShining, let start = startTime {
            // 成功
            reactionTime = Date().timeIntervalSince(start)
            isFail = false
        } else {
            // 失敗（フライング）
            reactionTime = nil
            isFail = true
        }
        showResult = true
    }

    // リセット
    func resetGame() {
        startWaiting()
    }
}

#Preview {
    PlayingView()
}

