//
//  URLHelper.swift
//  URLHelper
//
//  Created by liujianlin on 16/5/20.
//  Copyright © 2016年 fcgeek. All rights reserved.
//
import Foundation

public class URLHelper: NSObject {
    /**
     get parameters by NSURL
     */
    public static func parseURLParameters(url:NSURL) -> [String:String] {
        var parametersDic = [String:String]()
        guard let queryStr = url.query else {
            return parametersDic
        }
        for param in queryStr.componentsSeparatedByString("&") {
            let elts = param.componentsSeparatedByString("=")
            if elts.count < 2 {
                continue
            }
            parametersDic[elts.first!] = elts.last
        }
        return parametersDic
    }
}
