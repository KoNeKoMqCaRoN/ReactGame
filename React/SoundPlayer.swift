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
   let BtnPlay = NSDataAsset(name: "tapPlay")!.data
   let BtnRanking = NSDataAsset(name: "tapRanking")!.data
   let BtnFail = NSDataAsset(name: "tapFail")!.data
   
   // 音源プレイヤーの変数
   var BtnPlayPlayer: AVAudioPlayer!
   var BtnRankingPlayer: AVAudioPlayer!
   var BtnFailPlayer: AVAudioPlayer!
   
   // 音源呼び出しメソッド
   func SoundTapPlay() {
      do {
         BtnPlayPlayer = try AVAudioPlayer(data: BtnPlay)
         BtnPlayPlayer.play()
      } catch {
         print("playボタン音でエラー")
      }
   }
   func SoundTapRanking() {
      do {
         BtnRankingPlayer = try AVAudioPlayer(data: BtnRanking)
         BtnRankingPlayer.play()
      } catch {
         print("rankingボタン音でエラー")
      }
   }
   func SoundFail() {
      do {
         BtnFailPlayer = try AVAudioPlayer(data: BtnFail)
         BtnFailPlayer.play()
      } catch {
         print("Fail音エラー")
      }
   }
   
}
