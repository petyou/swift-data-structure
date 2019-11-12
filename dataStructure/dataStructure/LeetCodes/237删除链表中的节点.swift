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
        let node3 =  Node.init(next: nil, value: 3)
        let node2 =  Node.init(next: node3, value: 2)
        let node1 =  Node.init(next: node2, value: 1)
        let head =  Node.init(next: node1, value: 0)
        print(head)
        deleteNode(node: node3)
        print(head)
        
        
    }
    
    static func deleteNode(node: Node<Int>){
        if let next = node.next {
            node.value = next.value
            node.next = next.next
        } else {
            
        }
    }
}
