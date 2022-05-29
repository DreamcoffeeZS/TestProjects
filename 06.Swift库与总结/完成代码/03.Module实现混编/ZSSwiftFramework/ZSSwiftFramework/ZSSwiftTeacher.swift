//
//  ZSSwiftTeacher.swift
//  ZSSwiftFramework
//
//  Created by zhoushuai on 2022/5/27.
//
import Foundation

public class ZSSwiftTeacher: NSObject {
    @objc public func talk() {
        print("teacher talk")

        // Swift调用OC：需要配置ZSSwiftFramework.modulemap
        let s = ZSOCStudent()
        s.listen()
    }

    @objc public func reply() {
        print("teacher replay")
    }
}
