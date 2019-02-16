//
//  CodableResponse.swift
//
//
//  Created by Daniele Salvioni on 15/02/19.
//  Copyright © 2019 Daniele Salvioni. All rights reserved.
//

import Foundation

class CodableResponse: Codable, CustomStringConvertible
{
    var id: String?
    var title: String?
    var parser: String?
}
