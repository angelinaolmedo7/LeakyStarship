# LeakyStarship
Swift Memory Leaks Tutorial App

### What change did you make on the CrewMember class to fix the first retain cycle?
I changed "var captain : Captain" to "unowned var captain : Captain". "weak var captain : Captain" would also have worked, but I didn't want to make captain an optional when it was not in the starter code.

### What does your roster variable look like in the Starship class? (copy code here)
```
lazy var roster: () -> String = { [unowned self] in
        var list = ""
        for crewMember in self.crewMembers
        {
            list += crewMember + " "
        }
        return list + "\n"
    }
```
