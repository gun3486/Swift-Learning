//
//  ViewController.swift
//  usePapago
//
//  Created by GSM04 on 2021/07/13.
//

import UIKit
import Alamofire
import AlamofireObjectMapper

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var url = "https://openapi.naver.com/v1/papago/n2mt"
        var params = ["source":"ko",
                     "target":"en",
                     "text":"만나서 반갑습니다."]
        var header = ["Content-Type":"application/x-www-form-urlencoded; charset=UTF-8",
                      "X-Naver-Client-Id":"XFMBsaK0sLbVegx0nIJd",
                      "X-Naver-Client-Secret":"akhMj3Rfbn"]
        
        Alamofire.request(url, method: .post, parameters: params, encoding: URLEncoding.default, headers: header).responseJSON { (response) in
            print(response.result.value)
        }
    }


}

