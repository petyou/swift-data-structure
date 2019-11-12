//
//  MyLinkList.swift
//  dataStructure
//
//  Created by SGQ on 2019/11/12.
//  Copyright © 2019 shigaoqiang. All rights reserved.
//  实现了一个单向链表式的数组

import Foundation

let ElementNotFound = -1

enum MyError: Error {
    case OutOfBounds
}

class MyLinkList<Element>: CustomStringConvertible where Element : Equatable {
    typealias E = Element
    
    class Node : Equatable {
        var next: Node?
        var value: Element
        
        init(next: Node?, value: Element) {
            self.next = next
            self.value = value
        }
        
        static func == (lhs: MyLinkList<Element>.Node, rhs: MyLinkList<Element>.Node) -> Bool {
            return lhs.value == rhs.value
        }
    }
    
    private var firstNode: Node?
    private var size: Int = 0
    
    ///  清空元素
    func clear() {
        firstNode = nil
        size = 0
    }
    
    /// 元素的数量
    func length() -> Int {
        return size
    }
    
    /// 是否为空
    func isEmpty() -> Bool {
        return size == 0
    }
    
    /// 是否包含某个元素
    func contains(e: Element) -> Bool {
        return indexOf(e: e) != ElementNotFound
    }
    
    /// 添加元素到尾部
    func add(e: Element) {
        try! add(e: e, index: size)
    }
    
    /// 添加元素到指定位置（不能大于总长度）
    func add(e: Element, index: Int) throws {
        try rangeCheckForAdd(index: index)
        
        if index == 0 {
            firstNode = Node.init(next: firstNode, value: e)
        } else {
            let preNode = try! node(index: index - 1)
            preNode.next =  Node.init(next: preNode.next, value: e)
        }
        size += 1
    }
    
    func get(index: Int) throws -> Element {
        try rangeCheck(index: index)
        return try node(index: index).value
    }
    
    func set(e: Element, index: Int) throws {
        try rangeCheck(index: index)
        let indexNode = try node(index: index)
        indexNode.value = e
    }
    
    @discardableResult func remove(index: Int) throws -> Element {
        try rangeCheck(index: index)
        
        var indexNode = firstNode
        if index == 0 {
            firstNode = firstNode!.next
        } else {
            let preNode = try! node(index: index - 1)
            indexNode = preNode.next
            preNode.next = indexNode?.next
        }
        size -= 1
        return indexNode!.value
    }
    
    func indexOf(e: Element) -> Int {
        var ipNode = firstNode
        var count = 0
        while ipNode != nil {
            if ipNode!.value == e {
                return count
            }
            
            count += 1
            ipNode = ipNode!.next
        }
        return ElementNotFound
    }
    
    
    var description: String {
        var des = "size=\(size) "
        var ipNode = firstNode
        
        des.append("[")
        while ipNode != nil {
            des.append("\(ipNode!.value),")
            ipNode = ipNode!.next
        }
        des.append("]")
        return des
    }
    
    /// 查询指定位置的node
    ///
    /// - Parameter index: 索引
    /// - Returns: 指定位置的节点
    /// - Throws: 如果index超出边界，则抛出异常
    private func node(index: Int) throws -> Node {
        try rangeCheck(index: index)
        
        var ipNode = firstNode!
        for i in 0...index {
            if i == index {
                break
            }
            ipNode = ipNode.next!
        }
        
        return ipNode
    }
    
    private func rangeCheck(index: Int) throws {
        if index >= size || index < 0 {
            throw MyError.OutOfBounds
        }
    }
    
    private func rangeCheckForAdd(index: Int) throws {
        if index > size || index < 0 {
            throw MyError.OutOfBounds
        }
    }
}
