//
//  WebAPI.swift
//  MVVM
//
//  Created by Mac on 27/04/20.
//  Copyright © 2020 Mac. All rights reserved.
//

import Foundation

class WebAPI: NSObject
{
    
    func GetApiResponse(Str_url: String, completion: @escaping (_ result: [States]) -> Void)
    {
        
      //  let Str_url2 = "https://learnappmaking.com/ex/users.json"
           let Str_url2    = "https://api.rootnet.in/covid19-in/stats/latest"
        let url = URL(string: Str_url2)!
        
        
        let session = URLSession.shared.dataTask(with: url)
        { data,task,error in
            
            if let data = data
            {
                print(data)
                
                //                let Personlisting = try? JSONDecoder().decode([Person].self, from: data)
                //                print(Personlisting)
                
                let Response = try? JSONDecoder().decode(ResponseBody.self, from: data)
                print(Response)
                if let response = Response
                {
                    completion(Response?.data.regional ?? [])
                }
                else
                {
                    completion([])
                }
            }
            else
            {
                completion([])
            }
            
        }.resume()
        
        //let request = URLRequest(url:fileURL)
        
    }
    
}
