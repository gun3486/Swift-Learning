//
//  PapagoDTO.swift
//  usePapago
//
//  Created by GSM04 on 2021/07/14.
//

import UIKit
import ObjectMapper

class PapagoDTO: Mappable {
    var message: Message?
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        message <- map["message"]
    }
    
    
    class Message: Mappable {
        var result: Result?
        
        required init?(map: Map) {
            
        }
        
        func mapping(map: Map) {
            result <- map["result"]
        }
        
        
        class Result: Mappable {
            var translandetText: String?
            
            required init?(map: Map) {
                
            }
            
            func mapping(map: Map) {
                translandetText <- map["translandetText"]
            }
        }
    }
}
