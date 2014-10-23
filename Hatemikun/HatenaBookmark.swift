//
//  HatenaBookmark.swift
//  Hatemikun
//
//  Created by matsu_chara on 2014/10/24.
//  Copyright (c) 2014年 matsu_chara. All rights reserved.
//

import Foundation

class HatenaBookmark {
    let tags: Array<String>
    let comment: String
    let timestamp: NSDate
    
    internal init(dict d: Dictionary<String, AnyObject>) {
        comment = d["comment"] as String!
        tags = d["tags"] as Array<String>!
        
        let getdf = { () -> NSDateFormatter in
            var df = NSDateFormatter()
            df.locale = NSLocale(localeIdentifier: "ja_JP")
            df.dateFromString("yyyy/MM/dd HH:mm:ss")
            df.timeStyle = .MediumStyle
            df.dateStyle = .MediumStyle
            return df;
        }
        timestamp = getdf().dateFromString(d["timestamp"] as String!)!
    }
}
