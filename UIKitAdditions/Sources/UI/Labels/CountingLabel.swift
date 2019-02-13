import UIKit

public class CountingLabel: UILabel {
    private(set) var fromValue: CGFloat = 0
    private(set) var toValue: CGFloat = 0
    private var progress: TimeInterval = 0
    private var lastUpdated: TimeInterval = 0
    private var totalTime: TimeInterval = 0
    private var timer: Timer = Timer()

    public var formatValue: ((CGFloat) -> String)?
    public var value: CGFloat {
        if self.progress >= self.totalTime {
            return self.toValue
        }

        let value: CGFloat = CGFloat(self.progress / self.totalTime)
        return self.fromValue + value * (self.toValue - self.fromValue)
    }

    public func count(from value: CGFloat, to otherValue: CGFloat, duration: TimeInterval) {
        self.fromValue = value
        self.toValue = otherValue

        self.timer.invalidate()

        if duration > 0.0 {
            self.progress = 0
            self.totalTime = duration
            self.lastUpdated = Date.timeIntervalSinceReferenceDate

            let timer = Timer(timeInterval: (1.0 / 30.0), target: self, selector: #selector(update(_:)), userInfo: nil, repeats: true)
            RunLoop.main.add(timer, forMode: .default)
            RunLoop.main.add(timer, forMode: .tracking)
            self.timer = timer
        } else {
            self.text = String(format: "%.0lf", otherValue)
        }
    }

    @objc
    private func update(_ timer: Timer) {
        let now = Date.timeIntervalSinceReferenceDate

        self.progress += now - self.lastUpdated
        self.lastUpdated = now

        if self.progress >= self.totalTime {
            self.timer.invalidate()
            self.progress = self.totalTime
        }
        self.text = self.formatValue?(self.value) ?? String(format: "%.02f", self.value)
    }
}
