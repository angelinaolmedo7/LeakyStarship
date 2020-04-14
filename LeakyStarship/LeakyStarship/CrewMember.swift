//
//  CrewMember.swift
//  LeakyStarship
//
//  Created by Thomas Vandegriff on 1/27/19.
//  Copyright © 2019 Make School. All rights reserved.
//

import Foundation

class CrewMember
{
    let name:String
    unowned var captain:Captain
    
    init(name: String, captain: Captain)
    {
        self.name = name
        self.captain = captain
        
        print("CrewMember \(name) instance allocated.\n")
    }
    
    deinit
    {
        print("CrewMember \(name) instance deallocated.\n")
    }
}
