//
//  main.swift
//  07067012110023_Muhammad Gathfan Fasha_AFL 1
//
//  Created by MacBook Pro on 28/02/23.
//

import Foundation

func ShowMenu(){
    print("""
        Welcome to UC-Walk Cafetaria
        Please choose cafetaria :
        ============================
        ----------------------------
        ============================
        [1] Tuku - tuku
        [2] Raburi
        [3] Madam Lie
        [4] Kopte
        [5] Gisoe
        =============================
        [S]hopping Cart
        [Q]uit
        Input:
    
    """, terminator: "")
}




var TukuTuku =
ruko(name: "Tuku Tuku",listing: [
    list(namaruko: "Tuku - Tuku", listname: "Tahu Isi", harga: 3000),
    list(namaruko: "Tuku - Tuku", listname: "Nasi Kuning", harga: 20000),
    list(namaruko: "Tuku - Tuku", listname: "Nasi Campur", harga: 25000),
    list(namaruko: "Tuku - Tuku", listname: "Air Mineral", harga: 5000)
        ]
)


var Raburi =
ruko(name: "Gotri",listing: [
    list(namaruko: "Gotri", listname: "Fruit Tea", harga: 7000),
    list(namaruko: "Gotri", listname: "Marimas Mangga", harga: 5000),
    list(namaruko: "Gotri", listname: "Marimas Jeruk", harga: 5000),
    list(namaruko: "Gotri", listname: "Teh Jus", harga: 3000)
    ]
)


var MadamLie =
ruko(name: "Madam Lie",listing: [
    list(namaruko: "Madam Lie", listname: "Nasi Ayam Goreng", harga: 25000),
    list(namaruko: "Madam Lie", listname: "Nasi Ayam Bakar", harga: 30000),
    list(namaruko: "Madam Lie", listname: "Indomie", harga: 10000),
    list(namaruko: "Madam Lie", listname: "Es Teh", harga: 5000)
    ]
)


var Kopte =
ruko(name: "Kopte",listing: [
    list(namaruko: "Kopte", listname: "Kopi Hitam", harga: 15000),
    list(namaruko: "Kopte", listname: "Kopi Susu", harga: 20000),
    list(namaruko: "Kopte", listname: "Cappuchino", harga: 20000),
    list(namaruko: "Kopte", listname: "Susu", harga: 15000)
    ]
)


var Gisoe = ruko(name: "Gisoe",listing: [
    list(namaruko: "Gisoe", listname: "Americano", harga: 15000),
    list(namaruko: "Gisoe", listname: "Exspreso", harga:20000),
    list(namaruko: "Gisoe", listname: "Jahe", harga: 10000),
    list(namaruko: "Gisoe", listname: "Susu Jahe", harga: 15000)
    ]
)


//var userInput: String = ""


//var pilmen : String = ""
//var menuRes : String = ""
//var inputMenu: String = ""
//var hargaMenu : Int
//var totalOrder: Int
//var subTotal : Int
//var total : Int
//var bayar : Int = 0
//var bl : Bool = true
//var test : Bool = true
//typealias cart = (shopName: String, listname: String, harga: Int, qty:Int)
//var cartList : [cart] = []

var tuku = TukuTuku
var raburi = Raburi
var madam = MadamLie
var kopte = Kopte
var gisoe = Gisoe
var shop = keranjang()
var loop = true


repeat{
ShowMenu()
let choose = readLine()


    if let option = choose, let choice = Int(option) {
        switch choice {
        case 1:
            tuku.pesanMenu()
            print()
        case 2:
            raburi.pesanMenu()
            print()
        case 3:
            madam.pesanMenu()
            print()
        case 4:
            kopte.pesanMenu()
            print()
        case 5:
            gisoe.pesanMenu()
            print()
        default:
            print("Invalid option")
        }
        loop; false
    } else if let option = choose?.lowercased(), option == "s" || option == "S" {
        shop.showBarang()
        print()
    } else if let option = choose?.lowercased(), option == "q" || option == "Q" {
        exit(1)
    }else{
        print("Invalid input")
    }
}while loop
