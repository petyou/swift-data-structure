//
//  Node.swift
//  dataStructure
//
//  Created by SGQ on 2019/11/12.
//  Copyright © 2019 shigaoqiang. All rights reserved.
//

import Foundation

class Node<Element> : Equatable, CustomStringConvertible where Element: Equatable {
    var description: String {
        var result = ""
        var ipNode: Node? = self
        while ipNode != nil {
            result.append("\(ipNode!.value)-")
            ipNode = ipNode!.next
        }
        return result
    }
    
    static func == (lhs: Node<Element>, rhs: Node<Element>) -> Bool {
        return lhs.value == rhs.value
    }
    
    var next: Node?
    var value: Element
    
    init(next: Node?, value: Element) {
        self.next = next
        self.value = value
    }
    
    
   
}
