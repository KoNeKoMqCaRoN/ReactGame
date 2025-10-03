//
//  SoundPlayer.swift
//  React
//
//  Created by cmStudent on 2025/10/01.
//

import UIKit
import AVFoundation

class SoundPlayer: NSObject {
   
   // 音源データ読み込み
   let playBtn = NSDataAsset(name: "tapPlay")!.data
   let rankingBtn = NSDataAsset(name: "tapRanking")!.data
   
   // 音源プレイヤーの変数
   var playBtnPlayer: AVAudioPlayer!
   var rankingBtnPlayer: AVAudioPlayer!
   
   func playTapSound() {
      do {
         playBtnPlayer = try AVAudioPlayer(data: playBtn)
         playBtnPlayer.play()
      } catch {
         print("playボタン音でエラー")
      }
   }
   
   func rankingTapSound() {
      do {
         rankingBtnPlayer = try AVAudioPlayer(data: rankingBtn)
         rankingBtnPlayer.play()
      } catch {
         print("rankingボタン音でエラー")
      }
   }
   
}
