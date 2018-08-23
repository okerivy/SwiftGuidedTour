//
//  TestSwift.swift
//  SwiftGuidedTour
//
//  Created by LUYA on 2018/8/23.
//  Copyright © 2018年 LUYA. All rights reserved.
//

import Foundation




private protocol ExampleProtocol {
    var simpleDescription: String { get }
    mutating func adjust()
}

private class SimpleClass: ExampleProtocol {
    var simpleDescription: String = "A very simple class."
    var anotherProperty: Int = 69105
    func adjust() {
        simpleDescription += "  Now 100% adjusted."
    }
}

private struct SimpleStructure: ExampleProtocol {
    var simpleDescription: String = "A simple structure"
    mutating func adjust() {
        simpleDescription += " (adjusted)"
    }
}


func TestSwift() {
    
    let a = SimpleClass()
    
    a.adjust()
    let aDescription = a.simpleDescription
    print(aDescription)
    
    var b = SimpleStructure()
    b.adjust()
    let bDescription = b.simpleDescription
    print(bDescription)
    
    debugPrint(bDescription)
    print(bDescription)

    
    
}
