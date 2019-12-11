//
//  Node.swift
//  dataStructure
//
//  Created by SGQ on 2019/11/12.
//  Copyright © 2019 shigaoqiang. All rights reserved.
//

import Foundation

class ListNode: CustomStringConvertible {
    var next: ListNode?
    var val: Int
    
    init(next: ListNode?, val: Int) {
        self.next = next
        self.val = val
    }
    
    var description: String {
        var result = ""
        var ipNode: ListNode? = self
        while ipNode != nil {
            result.append("\(ipNode!.val)-")
            ipNode = ipNode!.next
        }
        return result
    }
}
