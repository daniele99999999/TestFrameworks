//
//  ViewController.swift
//  TestFrameworks
//
//  Created by Daniele Salvioni on 15/02/19.
//  Copyright © 2019 Daniele Salvioni. All rights reserved.
//

import UIKit
import Utils

class ViewController: UIViewController
{
    let service = ExampleNetworkService()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
    }
    
    @IBAction func codablePressed()
    {
        self.service.exampleServiceCodable(activityIndicator: nil,
                                           successBlock:
        { (response) in
            print("Codable success:\n\(response)")
            SystemUtils.showGenericMessage(response.description)
        })
        { (error, validResponse) in
            print("Codable error: \(error)")
            SystemUtils.showGenericMessage("\(error)")
        }
    }
    
    @IBAction func objectMapperPressed()
    {
        self.service.exampleServiceObjectMapper(activityIndicator: nil,
                                                successBlock:
        { (response) in
            print("ObjectMapper success: \n\(response)")
            SystemUtils.showGenericMessage(response.description)
        })
        { (error, validResponse) in
            print("ObjectMapper error: \(error)")
            SystemUtils.showGenericMessage("\(error)")
        }
        
        
    }
}

