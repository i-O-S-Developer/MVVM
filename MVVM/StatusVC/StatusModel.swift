//
//  StatusModel.swift
//  MVVM
//
//  Created by Mac on 26/04/20.
//  Copyright © 2020 Mac. All rights reserved.
//

import UIKit
 


 
struct ResponseBody: Decodable
{
    var lastRefreshed: String
    var data: ParentDataContent
    var lastOriginUpdate: String
    
    var success :Bool
    
    
    enum CodingKeys: String, CodingKey
    {
        case lastRefreshed = "lastRefreshed"
        case data = "data"
        case lastOriginUpdate = "lastOriginUpdate"
        case success = "success"
    }
}



struct ParentDataContent: Decodable
{
    var regional: [States]
 
    init(regional: [States]) {
        self.regional = regional
     }
    
    enum CodingKeys: String, CodingKey {
        case regional
    }
}



struct States : Decodable
{
    var loc = String()
    var confirmedCasesIndian = Int()
    var discharged = Int()
    var deaths = Int()
    var confirmedCasesForeign = Int()
    var totalConfirmed = Int()

    
    enum MyStructKeys: String, CodingKey
    { // declaring our keys
      case loc = "loc"
      case confirmedCasesIndian = "confirmedCasesIndian"
      case discharged = "discharged"
      case deaths = "deaths"
      case confirmedCasesForeign = "confirmedCasesForeign"
      case totalConfirmed = "totalConfirmed"
    }
    
    /*
     
    // Advanced Methods if required for you

    init(from decoder: Decoder) throws
    {
        let container = try decoder.container(keyedBy: MyStructKeys.self) // defining our (keyed) container
        let loc: String = try container.decode(String.self, forKey: .loc) // extracting the data
        let confirmedCasesIndian: Int = try container.decode(Int.self, forKey: .confirmedCasesIndian)
        let discharged: Int = try container.decode(Int.self, forKey: .discharged)
        let deaths: Int = try container.decode(Int.self, forKey: .deaths)
        let confirmedCasesForeign: Int = try container.decode(Int.self, forKey: .confirmedCasesForeign)
        let totalConfirmed: Int = try container.decode(Int.self, forKey: .totalConfirmed)
         
        
        self.init(loc: loc, confirmedCasesIndian: confirmedCasesIndian , discharged: discharged , deaths: deaths, confirmedCasesForeign: confirmedCasesForeign,totalConfirmed:totalConfirmed)
        
    }
     
     
     
     init(loc: String, confirmedCasesIndian: Int , discharged: Int , deaths: Int, confirmedCasesForeign: Int,totalConfirmed:Int)
     { // default struct initializer
         self.loc = loc
         self.confirmedCasesIndian = confirmedCasesIndian
         self.discharged = discharged
         self.deaths = deaths
         self.confirmedCasesForeign = confirmedCasesForeign
         self.totalConfirmed = totalConfirmed
     }
      */
}
 
/*
  This is the response that we are parsing.
 {
     "success": true,
     "data": {
         "summary": {
             "total": 26917,
             "confirmedCasesIndian": 26494,
             "confirmedCasesForeign": 111,
             "discharged": 5914,
             "deaths": 826,
             "confirmedButLocationUnidentified": 312
         },
         "unofficial-summary": [{
             "source": "covid19india.org",
             "total": 27551,
             "recovered": 6399,
             "deaths": 875,
             "active": 20277
         }],
         "regional": [{
                 "loc": "Andaman and Nicobar Islands",
                 "confirmedCasesIndian": 33,
                 "discharged": 11,
                 "deaths": 0,
                 "confirmedCasesForeign": 0,
                 "totalConfirmed": 33
             },
             {
                 "loc": "Andhra Pradesh",
                 "confirmedCasesIndian": 1097,
                 "discharged": 231,
                 "deaths": 31,
                 "confirmedCasesForeign": 0,
                 "totalConfirmed": 1097
             }
         ]
     },
     "lastRefreshed": "2020-04-26T16:30:01.940Z",
     "lastOriginUpdate": "2020-04-26T11:30:00.000Z"
 }
 */



/*
struct Person : Decodable
{
     var first_name = String()
     var last_name = String()
     var age = Int()
    
     enum CodingKeys: String, CodingKey
     { // declaring our keys
       case first_name = "first_name"
       case last_name = "last_name"
       case age = "age"
     }
    
/*
     // Advanced Methods if required for you
     
     init(from decoder: Decoder) throws
     {
       let container = try decoder.container(keyedBy: CodingKeys.self) // defining our (keyed) container
       let first_name: String = try container.decode(String.self, forKey: .first_name) // extracting the data
       let last_name: String = try container.decode(String.self, forKey: .last_name) // extracting the data
       let age: Int = try container.decode(Int.self, forKey: .age) // extracting the data
       self.init(first_name: first_name, last_name: last_name , age: age) // initializing our struct
     }
 
    init(first_name: String, last_name: String , age: Int)
    { // default struct initializer
       self.first_name = first_name
       self.last_name = last_name
       self.age = age
    }
*/
}
*/
