//
//  Captain.swift
//  LeakyStarship
//
//  Created by Thomas Vandegriff on 1/27/19.
//  Copyright © 2019 Make School. All rights reserved.
//

import Foundation

class Captain
{
    let name:String
    var crewMembers:[CrewMember]?
    
    init(name: String)
    {
        self.name = name
        print("Captain \(name) instance allocated.\n")
    }
    
    deinit
    {
        print("Captain \(name) instance deallocated.\n")
    }
}
