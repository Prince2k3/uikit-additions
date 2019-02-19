import UIKit
import AVKit
import AVFoundation

class PlayerView: UIView {
    private var playerLayer: AVPlayerLayer {
        guard
            let layer = self.layer as? AVPlayerLayer
            else { fatalError("Layer is not of type AVPlayerLayer") }
        return layer
    }
    
    var player: AVPlayer? {
        get { return self.playerLayer.player }
        set {
            self.playerLayer.player = newValue
            self.playerLayer.videoGravity = self.videoGravity
            self.isRepeating = self.isRepeating ? true : false
            self.isAmbient  = self.isAmbient ? true : false
        }
    }
    
    var isAmbient: Bool = false {
        didSet {
            do {
                if self.isAmbient {
                    try AVAudioSession.sharedInstance().setCategory(.ambient, mode: .default, options: [])
                    
                } else {
                    try AVAudioSession.sharedInstance().setCategory(.soloAmbient, mode: .default, options: [])
                }
            } catch { debugPrint("Cannot set Audio Session") }
        }
    }
    
    var isRepeating: Bool = false {
        didSet {
            removeNotifications()
            
            if !self.isRepeating {
                return
            }
            
            addNotifications()
        }
    }
    
    var videoGravity: AVLayerVideoGravity = .resizeAspectFill {
        didSet {
            self.playerLayer.videoGravity = self.videoGravity
        }
    }
    
    override static var layerClass: AnyClass {
        return AVPlayerLayer.self
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    convenience init(player: AVPlayer) {
        self.init(frame: .zero)
        self.player = player
    }
    
    convenience init(url: URL) {
        self.init(player: AVPlayer(url: url))
    }
}


extension PlayerView {
    func removeNotifications() {
        NotificationCenter.default.removeObserver(self, name: .AVPlayerItemDidPlayToEndTime, object: nil)
        NotificationCenter.default.removeObserver(self, name: UIApplication.willEnterForegroundNotification, object: nil)
        NotificationCenter.default.removeObserver(self, name: UIApplication.didEnterBackgroundNotification, object: nil)

    }
    
    func addNotifications() {
        NotificationCenter.default.addObserver(self, selector: #selector(playerItemDidPlayToEndTime), name: .AVPlayerItemDidPlayToEndTime)
        NotificationCenter.default.addObserver(self, selector: #selector(applicationDidEnterBackground), name: UIApplication.didEnterBackgroundNotification)
        NotificationCenter.default.addObserver(self, selector: #selector(applicationWillEnterForeground), name: UIApplication.willEnterForegroundNotification)
    }
    
    @objc func playerItemDidPlayToEndTime(_ notification: Notification) {
        DispatchQueue.main.async {
            self.player?.seek(to: .zero)
            self.player?.play()
        }
        
    }
    
    @objc func applicationDidEnterBackground(_ notification: Notification) {
        DispatchQueue.main.async {
            self.player?.pause()
        }
    }
    
    @objc func applicationWillEnterForeground(_ notification: Notification) {
        DispatchQueue.main.async {
            self.player?.play()
        }
    }
}
