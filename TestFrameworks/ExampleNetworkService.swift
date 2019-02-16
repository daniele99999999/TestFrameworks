//
//  ExampleNetworkServiceProtocol.swift
//
//
//  Created by Daniele Salvioni on 15/02/19.
//  Copyright © 2019 Daniele Salvioni. All rights reserved.
//

import Foundation
import Alamofire
import NetworkManager
import NetworkManagerObjectMapper


protocol ExampleNetworkServiceProtocol: class
{
    func exampleServiceCodable(activityIndicator: ActivityIndicatorProtocol?,
                               successBlock:@escaping (_ response: CodableResponse) -> Void,
                               errorBlock:@escaping (_ error: Error, _ validResponse: Bool) -> Void)
    
    func exampleServiceObjectMapper(activityIndicator: ActivityIndicatorProtocol?,
                                    successBlock:@escaping (_ response: ObjectMapperResponse) -> Void,
                                    errorBlock:@escaping (_ error: Error, _ validResponse: Bool) -> Void)
}



class ExampleNetworkService : AbstractNetworkService, ExampleNetworkServiceProtocol
{
    
// MARK: - Initializers
    init()
    {
        super.init(baseAddress: "http://echo.jsontest.com")
    }
    
    
// MARK: - Services
    func exampleServiceCodable(activityIndicator: ActivityIndicatorProtocol?,
                               successBlock: @escaping (CodableResponse) -> Void,
                               errorBlock: @escaping (Error, Bool) -> Void)
    {
        
        self.performRestOperation(.GET,
                                  pathUrl: "/id/1/title/titolo/parser/decodable",
                                  savedAuthType: NetworkServiceAuthType.None,
                                  activityIndicator: activityIndicator,
                                  successBlock: successBlock,
                                  errorBlock: errorBlock)
    }

    func exampleServiceObjectMapper(activityIndicator: ActivityIndicatorProtocol?,
                                    successBlock: @escaping (ObjectMapperResponse) -> Void,
                                    errorBlock: @escaping (Error, Bool) -> Void) {
        
        self.performRestOperation(.GET,
                                  pathUrl: "/id/1/title/titolo/parser/objectmapper",
                                  savedAuthType: NetworkServiceAuthType.None,
                                  activityIndicator: activityIndicator,
                                  successBlock: successBlock,
                                  errorBlock: errorBlock)
    }
}
