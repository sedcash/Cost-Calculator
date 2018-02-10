//
//  Wage.swift
//  Cost Calculator
//
//  Created by Sedrick Cashaw Jr on 2/10/18.
//  Copyright © 2018 Sedrick Cashaw Jr. All rights reserved.
//

import Foundation
class Wage{
    class func getHours(forwage wage: Double, andPrice price: Double) -> Int{
        return Int(ceil(price/wage))
    }
}
