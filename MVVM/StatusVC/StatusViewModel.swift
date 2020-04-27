//
//  StatusViewModel.swift
//  MVVM
//
//  Created by Mac on 26/04/20.
//  Copyright © 2020 Mac. All rights reserved.
//

import Foundation



struct StatesListingViewModel
{
    
    var statelist : [States]
    
    
    var numberOfRows : Int
    {
        return statelist.count
    }
    
    func cellforRow(index:Int) -> StatesViewModel
    {
        let state = statelist[index]
        return StatesViewModel(state)
    }
}


struct StatesViewModel
{
    var state : States
    
    var loc : String
    {
        return state.loc
    }
    
    
    var totalConfirmed : Int
    {
        return state.totalConfirmed
    }
    
    
    var deaths : Int
    {
        return state.deaths
    }
    
    var discharged : Int
    {
        return state.discharged
    }
    
    var confirmedCasesForeign : Int
    {
        return state.confirmedCasesForeign
    }
    
    
    init(_ state:States)
    {
        self.state = state
    }
    
}


