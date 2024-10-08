//
//  PriorityQueue.swift
//  SwiftDataSturcture
//
//  Created by 이명진 on 8/18/24.
//

import Foundation

public struct PriorityQueue<T: Comparable> {
    
    // MARK: - Properties
    
    private var heap: Heap<T>
    private let sortFunction: (T, T) -> Bool
    
    /// O(1)
    public var isEmpty: Bool {
        self.heap.isEmpty
    }
    
    /// O(1)
    public var count: Int {
        self.heap.count
    }
    
    /// O(1)
    public var peek: T? {
        self.heap.peek
    }
    
    // MARK: - initialization
    
    public init(sortFunction: @escaping (T, T) -> Bool) {
        self.sortFunction = sortFunction
        self.heap = Heap<T>(sortFunction: sortFunction)
    }
    
    // MARK: - Methods
    
    /// O(logN)
    public mutating func enqueue(_ item: T) {
        heap.insert(item)
    }
    
    /// O(logN)
    @discardableResult
    public mutating func dequeue() -> T? {
        return heap.remove()
    }
}
