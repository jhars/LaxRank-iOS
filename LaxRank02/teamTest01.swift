//
//  teamTest01.swift
//  LaxRank02
//
//  Created by JONATHAN HARLAN on 7/16/16.
//  Copyright © 2016 JONATHAN HARLAN. All rights reserved.
//

import Foundation
import Alamofire

class Team: NSObject {
    var teamName:String?
    var natRank:Int?
    var laxid:String?
    
    init(teamName:String, natRank:Int, laxid:String) {
        self.teamName = teamName
        self.natRank = natRank
        self.laxid = laxid
    }
    
    func getAllTeams() {
        let url = "http://localhost:3000/rankings/national?number_of_teams=10"
        Alamofire.request(.GET, url)
            .responseJSON { response in
//                print(response.result.value);
                return response.result.value
                
        }
    }
    
    
}

