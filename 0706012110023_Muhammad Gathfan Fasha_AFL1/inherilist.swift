//
//  inherilist.swift
//  0706012110023_Muhammad Gathfan Fasha_AFL1
//
//  Created by MacBook Pro on 07/04/23.
//

import Foundation

class inherlist: list {
    var banyak : Int

    init(namaruko: String, namamenu: String, harga: Int, banyak: Int) {
        self.banyak = banyak
        super.init(namaruko: namaruko, listname: namamenu, harga: harga)
       
    }
}

