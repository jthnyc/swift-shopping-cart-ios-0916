//
//  Cart.swift
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
    
    func items(name: String) -> [Item]{
        for item in items {
            if item.name == name {
                items.append(item)
            }
        }
        return items
    }
    
    func items(withMinPrice price:Int)-> [Item]{
        for item in items {
            if item.priceInCents >= price {
                items.append(item)
            }
        }
        return items
    }

    func items(withMaxPrice price:Int)-> [Item]{
        for item in items {
            if item.priceInCents <= price {
                items.append(item)
            }
        }
        return items
    }

}
    

