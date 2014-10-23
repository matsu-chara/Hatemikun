//
//  ViewController.swift
//  Hatemikun
//
//  Created by matsu_chara on 2014/10/24.
//  Copyright (c) 2014年 matsu_chara. All rights reserved.
//

import UIKit
import alamofire

class ViewController: UIViewController {
    var hatena: HatenaEntry! {
        didSet {
            //table.reload()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.fetchData()
    }
    
    func fetchData() {
        Alamofire.request(.GET, "http://b.hatena.ne.jp/entry/jsonlite/?url=http://www.hatena.ne.jp")
            .responseJSON( {  (request, response, data, error) in
                self.hatena = HatenaEntry(dict: data! as [String: AnyObject])
            })
    }
}

