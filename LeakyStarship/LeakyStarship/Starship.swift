//
//  Starship.swift
//  LeakyStarship
//
//  Created by Thomas Vandegriff on 1/27/19.
//  Copyright © 2019 Make School. All rights reserved.
//

import Foundation

class Starship
{
    let name: String
    let captain: String
    let crewMembers: [String]
    
    init(name:String, captain:String, crewMembers:[String] = [])
    {
        self.name = name
        self.captain = captain
        self.crewMembers = crewMembers
        
        print("Starship \(name) instance allocated.\n")
    }
    
    lazy var roster: () -> String = { [unowned self] in
        var list = ""
        for crewMember in self.crewMembers
        {
            list += crewMember + " "
        }
        return list + "\n"
    }
    
    deinit
    {
        print("Starship \(name) instance deallocated.\n")
    }
}
