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
   let fail = NSDataAsset(name: "tapFail")!.data
   let thunder = NSDataAsset(name: "dropThunder")!.data
   
   // 音源プレイヤーの変数
   var BtnPlayPlayer: AVAudioPlayer!
   var BtnRankingPlayer: AVAudioPlayer!
   var failPlayer: AVAudioPlayer!
   var thunderPlayer: AVAudioPlayer!
   
   // 音源呼び出しメソッド
   func soundTapPlay() {
      do {
         BtnPlayPlayer = try AVAudioPlayer(data: BtnPlay)
         BtnPlayPlayer.play()
      } catch {
         print("playボタン音でエラー")
      }
   }
   func soundTapRanking() {
      do {
         BtnRankingPlayer = try AVAudioPlayer(data: BtnRanking)
         BtnRankingPlayer.play()
      } catch {
         print("rankingボタン音でエラー")
      }
   }
   func soundFail() {
      do {
         failPlayer = try AVAudioPlayer(data: fail)
         failPlayer.play()
      } catch {
         print("Fail音エラー")
      }
   }
   func soundThunder() {
      do {
         thunderPlayer = try AVAudioPlayer(data: thunder)
         thunderPlayer.play()
      } catch {
         
      }
   }
   
}
