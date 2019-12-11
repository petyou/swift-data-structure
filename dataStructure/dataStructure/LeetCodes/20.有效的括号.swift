//
//  20有效的括号.swift
//  dataStructure
//
//  Created by SGQ on 2019/12/11.
//  Copyright © 2019 shigaoqiang. All rights reserved.
//

import Foundation


class LeetCode20 {
    static func test(){
        print(isValid("(){}[]"))
        print(isValid("(){}["))
        print(isValid("){}[]"))
        print(isValid("()}[]"))
    }
    
    static func isValid(_ s: String) -> Bool {
        var right = [Character]()
        for character in s {
            if character == "(" {
                right.append(")")
            } else if character == "[" {
                right.append("]")
            } else if character == "{" {
                right.append("}")
            } else {
                if right.popLast() != character {
                    return false
                }
            }
        }
        return right.count == 0
    }
}
