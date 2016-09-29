//
//Cart.swift
//  swift-shopping-cart
//
//  Created by James Campagno on 9/26/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Cart {
    var items = [Item]()
    
    func totalPriceInCents() -> Int {
        var totalPrice = 0
        for item in items {
            totalPrice += item.priceInCents
        }
        return totalPrice
    }
    
    func add(item: Item){
        items.append(item)
    }
    
    func remove(item: Item){
        for (index, value) in items.enumerated() {
            if value == item {
                items.remove(at: index)
            }
            
        }
    }
    
    func items(withName name: String) -> [Item]{
        var finalArray = [Item]()
        
        for item in items {
            if item.name == name {
                finalArray.append(item)
            }
        }
        return finalArray
    }
    
    func items(withMinPrice price:Int)-> [Item]{
        var finalArray = [Item]()
        
        for item in items {
            if item.priceInCents >= price {
                finalArray.append(item)
            }
        }
        return finalArray
    }

    func items(withMaxPrice price:Int)-> [Item]{
        var finalArray = [Item]()
        
        for item in items {
            if item.priceInCents <= price {
                finalArray.append(item)
            }
        }
        return finalArray
    }

}
    

