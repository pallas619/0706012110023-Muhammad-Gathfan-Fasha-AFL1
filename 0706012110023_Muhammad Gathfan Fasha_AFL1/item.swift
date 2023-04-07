//
//  item.swift
//  0706012110023_Muhammad Gathfan Fasha_AFL1
//
//  Created by MacBook Pro on 07/04/23.
//

import Foundation


class item: list{
    var qty : Int
    
    init(_ name: String, price: Int, ruko: String, bonus qty: Int) {
        self.qty = qty
        super.init(namaruko: ruko, listname: name, harga: price )
    }
}
