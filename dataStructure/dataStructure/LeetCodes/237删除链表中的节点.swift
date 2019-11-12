//
//  237删除链表中的节点.swift
//  dataStructure
//
//  Created by SGQ on 2019/11/12.
//  Copyright © 2019 shigaoqiang. All rights reserved.
//
/*
 https://leetcode-cn.com/problems/delete-node-in-a-linked-list/
 */
import Foundation

class LeetCode237 {
    static func test(){
        let node3 =  ListNode.init(next: nil, val: 3)
        let node2 =  ListNode.init(next: node3, val: 2)
        let node1 =  ListNode.init(next: node2, val: 1)
        let head =  ListNode.init(next: node1, val: 0)
        print(head)
        deleteNode(node: head)
        print(head)
        
        
    }
    
    static func deleteNode(node: ListNode){
        if let next = node.next {
            node.val = next.val
            node.next = next.next
        } else {
            
        }
    }
}
