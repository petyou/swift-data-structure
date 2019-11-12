//
//  main.swift
//  dataStructure
//
//  Created by SGQ on 2019/11/10.
//  Copyright © 2019 shigaoqiang. All rights reserved.
//

import Foundation

let link: MyLinkList = MyLinkList<Int>()
link.add(e: 1)
link.add(e: 2)
link.add(e: 3)


do {

    try link.add(e: 99, index: 3)

} catch let e {
    print(e)
}

print(link)
