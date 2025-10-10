import SwiftUI

struct PlayingView: View {
    @State private var isShining = false        // 光ったかどうか
    @State private var startTime: Date?         // 光り始めた時刻
    @State private var reactionTime: Double?    // 成功時の反応時間
    @State private var isFail = false           // フライング判定
    @State private var showResult = false       // 結果画面表示
<<<<<<< HEAD
    @State private var workFailSoundItem : DispatchWorkItem? 
   
   let sp = SoundPlayer()
   
=======
    @State private var workFailSoundWork : DispatchWorkItem?
    
    let sp = SoundPlayer()

>>>>>>> 11763d22fde39614450fe5e0bb4e0da292166ee5
    var body: some View {
        ZStack {
            if showResult {
                // 結果画面をそのまま重ねて表示
                ResultingView(
                    reactionTime: reactionTime,
                    isFail: isFail,
                    onRetry: resetGame
                )
                .transition(.opacity) // フェード切り替え
            } else {
                // 通常のプレイ画面
                ZStack {
                    (isShining ? Image(.shining) : Image(.waiting))
                        .resizable()
                        .scaledToFill()
                        .ignoresSafeArea()
                    
                    Text(isShining ? "今だ！！" : "集中…")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                }
                .transition(.opacity)
                .onAppear { startWaiting() }
                .onTapGesture { handleTap() }
            }
        }
        .animation(.easeInOut(duration: 0.2), value: showResult) // スムーズな切替
    }

    // ランダムで光る
    func startWaiting() {
        isShining = false
        reactionTime = nil
        isFail = false
        showResult = false
        

        let delay = Double.random(in: 5...7)
        DispatchQueue.main.asyncAfter(deadline: .now() + delay) {
<<<<<<< HEAD
           sp.soundThunder()
=======
            sp.soundThunder()
>>>>>>> 11763d22fde39614450fe5e0bb4e0da292166ee5
            isShining = true
            startTime = Date()
        }
    }

    // タップ処理
    func handleTap() {
        if isShining, let start = startTime {
            reactionTime = Date().timeIntervalSince(start)
            isFail = false
        } else {
            reactionTime = nil
            isFail = true
            
            sp.soundFail()
        }
        withAnimation {
            showResult = true
        }
    }

    // リセット
    func resetGame() {
        withAnimation {
            startWaiting()
        }
    }
}

#Preview {
    PlayingView()
}
