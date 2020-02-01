import UIKit

extension UIControl {
    func add (events: UIControl.Event, for handler: @escaping () -> Void) {
        let handler = HandlerWrapper(handler)
        addTarget(handler, action: #selector(HandlerWrapper.invoke), for: events)
        objc_setAssociatedObject(self, String(ObjectIdentifier(self).hashValue) + String(events.rawValue), handler, .OBJC_ASSOCIATION_RETAIN)
    }
}

class HandlerWrapper {
    let handler: () -> Void

    init (_ handler: @escaping () -> Void) {
        self.handler = handler
    }

    @objc func invoke () {
        handler()
    }
}
