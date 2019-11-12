//
//  206.反转链表.swift
//  dataStructure
//
//  Created by SGQ on 2019/11/12.
//  Copyright © 2019 shigaoqiang. All rights reserved.
// https://leetcode-cn.com/problems/reverse-linked-list/

import Foundation


class LeetCode206 {
    static func test(){
        let node3 =  ListNode.init(next: nil, val: 3)
        let node2 =  ListNode.init(next: node3, val: 2)
        let node1 =  ListNode.init(next: node2, val: 1)
        let head =  ListNode.init(next: node1, val: 0)
        print(head)
        let newHead = reverseList1(head: head)
        print(newHead!)
    }
    
    /// 递归
    static func reverseList(head: ListNode?) -> ListNode? {
        if head == nil || head!.next == nil {
            return head
        }
        let newHead = reverseList(head: head!.next!)
        head!.next!.next = head
        head!.next = nil
        return newHead
    }
    
    /// 遍历
    static func reverseList1(head: ListNode? ) -> ListNode? {
        if head == nil ||  head!.next == nil {
            return head
        }
        
        var pre: ListNode? = nil
        var ipHead: ListNode? = head
        var next = ipHead?.next
        
        while ipHead != nil {
            ipHead!.next = pre
            
            pre = ipHead
            ipHead = next
            next = ipHead?.next
        }
        return pre!
    }
}
