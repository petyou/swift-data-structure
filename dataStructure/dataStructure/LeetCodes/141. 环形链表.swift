//
//  141. 环形链表.swift
//  dataStructure
//
//  Created by SGQ on 2019/11/12.
//  Copyright © 2019 shigaoqiang. All rights reserved.
//

import Foundation


class LeetCode141 {
    static func test(){
        let node3 =  ListNode.init(next: nil, val: 3)
        let node2 =  ListNode.init(next: node3, val: 2)
        let node1 =  ListNode.init(next: node2, val: 1)
        let head =  ListNode.init(next: node1, val: 0)
        node3.next = head
        print(hasCycle(head: head))
    }
    
    static func hasCycle(head: ListNode?) -> Bool{
        guard let head = head else { return false }
        var fast = head.next
        var slow = fast?.next
        
        while fast != nil && slow != nil {
            if (fast!.val == slow!.val) {
                return true
            }
            
            fast = fast!.next
            slow = slow!.next?.next
            
        }
        
        return false
    }
}
