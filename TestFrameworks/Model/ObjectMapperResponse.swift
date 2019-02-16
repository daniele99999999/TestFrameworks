//
//  ObjectMapperResponse.swift
//
//
//  Created by Daniele Salvioni on 15/02/19.
//  Copyright © 2019 Daniele Salvioni. All rights reserved.
//

import Foundation
import ObjectMapper

class ObjectMapperResponse: Mappable, CustomStringConvertible
{
    var id: String?
    var title: String?
    var parser: String?
    
    required init?(map: Map)
    {
        
    }
    
    func mapping(map: Map)
    {
        id    <- map["id"]
        title    <- map["title"]
        parser    <- map["parser"]
    }
}
