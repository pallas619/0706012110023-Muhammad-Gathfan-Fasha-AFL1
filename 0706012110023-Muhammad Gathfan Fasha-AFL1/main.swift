//
//  main.swift
//  0706012110023-Muhammad Gathfan Fasha-AFL1
//
//  Created by MacBook Pro on 03/03/23.
//


import Foundation


var pilmen1: String = ""
var pilnaskun: String = ""
var pilmentuk: String = ""

var tuktuk = ["Nasi Kuning" : 20000,
              "Cangkul" : 27000,
              "Air Putih" : 3000,
              "Teh Pucuk" : 4000,
              "Nasi Ayam" : 28000]
var Gotri = ["Nasi Teriyaki" : 21000,
             "Es Teh" : 5000,
             "Air Putih" : 3000,
             "Teh Ocha" : 4000,
             "Nasi Bebek" : 28000]
var MadamLie = ["Nasi ayam enak" : 21000,
             "Es Teh" : 5000,
             "Air Putih" : 3000,
             "Nasi Bebek" : 30000,
             "Nasi Uduk" : 17000]
var kopte = ["Americano" : 15000,
             "Es Teh" : 5000,
             "Espresso" : 20000,
             "Cookies" : 9000,
             "Barongsai" : 17000]



welcomeScreen()

func welcomeScreen (){
    print("""
        Welcome to UC-WALK Cafeteria!
        Please choose Cafeterria :
        [1] Tuku - Tuku
        [2] Gotri
        [3] Madam Lie
        [4] Kopte
        -
        [S]hopping Cart
        [Q]uit
        Your cafetaria choice ?
        """)
    pilmen1 = readLine()!
    switch pilmen1 {
    case "1" : tuku_tuku()
    case "2" : break
    case "3" : break
    case "4" : break
    case "s" : break
    case "q" :
        exit(0)
    default: welcomeScreen()
}
    
}
func tuku_tuku (){
    print("""
           Welcome to Tuku Tuku Cafeteria!
           What Would Like to Order :
           [1] Nasi Kuning
           [2] Cangkul
           [3] Air Putih
           [4] Air Hitam
           [5] Kucin Garong
           -
           [B]ack to menu
           Your Menu choice ?
           """)
    pilmentuk = readLine()!
   switch pilmentuk {
    case "1": print("""
                    Nasi Kuning @20.000
                    How Many Nasi Kuning do you want to buy?
                    """)
       pilnaskun = readLine()!
       print("""
             Thankyou for Ordering !
             """)
       
       welcomeScreen()
   case "2": print("""
                   Cangkul @22.000
                   How Many Cangkul do you want to buy?
                   """)
      pilnaskun = readLine()!
      print("""
            Thankyou for Ordering !
            """)
       
      welcomeScreen()
   case "3": print("""
                   Air Putih @4.000
                   How Many Air Putih do you want to buy?
                   """)
      pilnaskun = readLine()!
      print("""
            Thankyou for Ordering !
            """)
       
      welcomeScreen()
       
   default: tuku_tuku()
   }
    
}


