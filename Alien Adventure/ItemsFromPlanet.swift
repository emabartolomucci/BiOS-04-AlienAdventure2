//
//  ItemsFromPlanet.swift
//  Alien Adventure
//
//  Edited by Emanuele Bartolomucci on 2016/08/15.
//

extension Hero {
    
    func itemsFromPlanet(inventory: [UDItem], planet: String) -> [UDItem] {
        
        var itemsFromGlinda = [UDItem]()
        
        for item in inventory {
            if let planetOfOrigins = item.historicalData["PlanetOfOrigin"] {
                
                //needs to be of String type for comparison
                if planetOfOrigins as? String == planet {
                    itemsFromGlinda.append(item)
                }
                
            }
        }
        
        return itemsFromGlinda
    }
    
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 1"