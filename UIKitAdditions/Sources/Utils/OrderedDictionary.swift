//
//  OrderedDictionary.swift
//  Toolkit
//
//  Created by Prince Ugwuh on 3/4/18.
//  Copyright © 2018 Silvercar Inc. All rights reserved.
//

struct OrderedDictionary<Key: Hashable, Value> {
    private(set) var keys: [Key] = []
    private(set) var values: [Key: Value] = [:]
    
    var count: Int {
        assert(self.keys.count == self.values.count, "Internal count does not match")
        return self.keys.count
    }
    
    subscript(index: Int) -> Value? {
        get {
            let key = self.keys[index]
            return self.values[key]
        }
        
        set {
            let key = self.keys[index]
            if newValue != nil {
                self.values[key] = newValue
            } else {
                self.values.removeValue(forKey: key)
                self.keys.remove(at: index)
            }
        }
    }
    
    subscript(key: Key) -> Value? {
        get {
            return self.values[key]
        }
        
        set {
            if let newValue = newValue {
                let oldValue = self.values.updateValue(newValue, forKey: key)
                if oldValue == nil {
                    self.keys.append(key)
                }
            } else {
                self.values.removeValue(forKey: key)
                self.keys = self.keys.filter { $0 != key }
            }
        }
    }
    
    init() {
        
    }
}

extension OrderedDictionary {
    init(keysAndValues: [(Key, Value)]) {
        self.init()
        for (key, value) in keysAndValues {
            self[key] = value
        }
    }
}

extension OrderedDictionary: CustomStringConvertible {
    var description: String {
        let content = (0..<self.count).map {
            if let value = self[$0] {
                return "[\($0)]: \(self.keys[$0]) => \(value)"
            } else {
                return "[\($0)]: \(self.keys[$0]) => null"
            }
        }
        .joined(separator: "\n")
        return "{\n\(content)\n}"
    }
}

extension OrderedDictionary: ExpressibleByDictionaryLiteral {
    init(dictionaryLiteral elements: (Key, Value)...) {
        self.init()
        for (key, value) in elements {
            self[key] = value
        }
    }
}

extension OrderedDictionary: Sequence {
    typealias Element = (Key, Value)
    typealias Iterator = IndexingIterator<[Element]>
    typealias SubSequence = AnySequence<Element>
    
    private var sortedKeysAndValues: [(Key, Value)] {
        return self.self.keys.map { ($0, self.values[$0]!) }
    }
    
    public func makeIterator() -> OrderedDictionary.Iterator {
        return self.sortedKeysAndValues.makeIterator()
    }
}
