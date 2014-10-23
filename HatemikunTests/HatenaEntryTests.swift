import Quick
import Nimble

class HatenaEntryTests: QuickSpec {
    override func spec() {
        describe("a hatena entry") {
            var hatena: HatenaEntry!
            
            let data: [String: AnyObject] = [
                "count": "3",
                "url": "http://www.hatena.ne.jp/",
                "eid": "47545",
                "title": "はてな",
                "screenshot": "http://screenshot.hatena.ne.jp/images/200x150/5/b/b/8/2/a368186d27026de0a24f6b034f525371a4d.jpg",
                "entry_url": "http://b.hatena.ne.jp/entry/www.hatena.ne.jp",
                "bookmarks":[
                    [
                        "timestamp": "2008/11/02 21:48:37",
                        "comment": "comment or title",
                        "user": "a1c",
                        "tags": ["google", "net"]
                    ],
                    [
                        "timestamp": "2006/02/18 11:40:37",
                        "comment": "hatena",
                        "user": "gooooooogle",
                        "tags": []
                    ],
                    [
                        "timestamp": "2006/01/17 10:33:41",
                        "comment": "",
                        "user": "iwaim",
                        "tags": []
                    ]
                ]
            ]
            
            beforeEach { hatena = HatenaEntry(dict: data) }
            
            describe("with simple data") {
                it("returns title") {
                    expect(hatena.title).to(equal(data["title"] as String!))
                }
                
                it("has number of bookmarks as count") {
                    expect(hatena.bookmarks.count).to(equal( (data["count"] as String!).toInt()!))
                }
            }
        }
    }
}
