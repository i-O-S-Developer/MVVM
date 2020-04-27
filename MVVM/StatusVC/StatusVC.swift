//
//  StatusVC.swift
//  MVVM
//
//  Created by Mac on 26/04/20.
//  Copyright © 2020 Mac. All rights reserved.
//

import UIKit

class StatusVC: UIViewController,UITableViewDelegate,UITableViewDataSource
{
    var StateListing : StatesListingViewModel!
    
    @IBOutlet weak var tble_Data: UITableView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        let WebAPIObj = WebAPI()
        WebAPIObj.GetApiResponse(Str_url: "")
        { (result) in
            
            if(result.count > 0)
            {
                self.StateListing = StatesListingViewModel(statelist: result)
                DispatchQueue.main.async
                    {
                        self.tble_Data.reloadData()
                }
            }
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return StateListing == nil ? 0 :  StateListing.numberOfRows
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        let item = StateListing.cellforRow(index: indexPath.row)
        cell.textLabel?.numberOfLines = 0
        cell.textLabel?.text = "Location : " + "\(item.loc)" +
            " \n Total : " + "\(item.totalConfirmed)" +
            " Death : " + "\(item.deaths)" +
            " Discharged : " + "\(item.discharged)" +
            " confirmedCasesForeign : " + "\(item.confirmedCasesForeign)"
        
        return cell
    }
    
    
    
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
