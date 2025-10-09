//
//  ContentView.swift
//  React
//
//  Created by cmStudent on 2025/09/26.
//

import SwiftUI

struct ContentView: View {
   
   @State var isShowingPlayingView = false // ゲーム画面が表示されているか
   @State var isShowingRankingView = false // ランキング画面が表示されているか
   
   let soundPlayer = SoundPlayer() // 音源データ
   
    var body: some View {
        VStack {
           Image(.gameTitle) // ゲームタイトル画像
              .resizable()
              .scaledToFit()
              .padding(.init(top: 10, leading: 0, bottom: 50, trailing: 0))
           
           buttons

           Spacer()
           
        }
        .padding()
    }
   var buttons: some View {
      VStack {
         // Startボタン
         Button {
            soundPlayer.SoundTapPlay()
            isShowingPlayingView = true // View移動をtrue
         } label: {
            VStack {
               Image(systemName: "play.fill")
                  .resizable()
                  .frame(width: 50, height: 50)
                  .scaledToFit()
               Text("Start")
                  .font(.largeTitle)
                  .fontWeight(.bold)
                  .foregroundStyle(.black)
            }
            .frame(maxWidth: .infinity, minHeight: 170)
            .background(Color.gray.opacity(0.25))
            .cornerRadius(20)
         }
         .fullScreenCover(isPresented: $isShowingPlayingView) {
            PlayingView()
         }
         .padding(.horizontal, 80) // Startボタンend
         
         // Rankingボタン
         Button {
            soundPlayer.SoundTapRanking()
            isShowingRankingView = true
            setResult(name: "masuda", reactTime: 0.245)
            setResult(name: "saitou", reactTime: 0.131)
            setResult(name: "hara", reactTime: 0.156)
            setResult(name: "hou", reactTime: 0.189)
            setResult(name: "ogawa", reactTime: 0.445)
            showResult()
            print("========================")
            sortResults()
            showResult()
         } label: {
            VStack {
               Image(systemName: "flag.fill")
                  .resizable()
                  .frame(width: 50, height: 50)
                  .scaledToFit()
               Text("Ranking")
                  .font(.largeTitle)
                  .fontWeight(.bold)
                  .foregroundStyle(.black)
            }
            .frame(maxWidth: .infinity, maxHeight: 170)
            .background(Color.gray.opacity(0.25))
            .cornerRadius(20)
         }
         .fullScreenCover(isPresented: $isShowingRankingView) {
            RankingView()
         }
         .padding(.top, 50)
         .padding(.horizontal, 80)
      }
   }
}

#Preview {
    ContentView()
}
