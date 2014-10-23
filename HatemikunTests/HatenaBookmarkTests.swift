import Quick
import Nimble

class HatenaBookmarkTests: QuickSpec {
    override func spec() {
        describe("a bookmark") {
            var bookmark: HatenaBookmark!
            
            let data: [String: AnyObject] = [
                "timestamp": "2008/11/02 21:48:37",
                "comment": "comment or title",
                "user": "a1c",
                "tags": ["google", "net"]
            ]
            
            beforeEach { bookmark = HatenaBookmark(dict: data)}
            
            describe("with simple data") {
                it("has comment") {
                    expect(bookmark.comment).to(equal(data["comment"] as String!))
                }
                
                it("has tags array") {
                    expect(bookmark.tags).to(equal(data["tags"] as Array!))
                }
                
                it("has timestamp by NSDate") {
                    let getdf = { () -> NSDateFormatter in
                        var df = NSDateFormatter()
                        df.locale = NSLocale(localeIdentifier: "ja_JP")
                        df.dateFromString("yyyy/MM/dd HH:mm:ss")
                        df.timeStyle = .MediumStyle
                        df.dateStyle = .MediumStyle
                        return df;
                    }
                    
                    expect(getdf().stringFromDate(bookmark.timestamp)).to(equal(data["timestamp"] as String!))
                }
            }
        }
    }
}
