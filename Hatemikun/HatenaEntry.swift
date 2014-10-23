//
//  hatenaEntry.swift
//  Hatemikun
//
//  Created by matsu_chara on 2014/10/23.
//  Copyright (c) 2014年 matsu_chara. All rights reserved.
//

import Foundation

class HatenaEntry {
    let count: Int
    let url: String
    let eid: String
    let title: String
    let screenshot: String
    let entry: String
    let bookmarks: Array<HatenaBookmark>
    
    internal init(dict d: [String: AnyObject]) {
        count      = (d["count"] as String!).toInt()!
        url        = d["url"] as String!
        eid        = d["eid"] as String!
        title      = d["title"] as String!
        screenshot = d["screenshot"] as String!
        entry      = d["entry_url"] as String!
        bookmarks  = (d["bookmarks"] as Array!).map { (b:[String: AnyObject]) -> HatenaBookmark in return HatenaBookmark(dict:b)}
    }
}
