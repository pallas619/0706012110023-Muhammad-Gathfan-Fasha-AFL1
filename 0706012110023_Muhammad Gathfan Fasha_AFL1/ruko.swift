//
//  ruko.swift
//  0706012110023_Muhammad Gathfan Fasha_AFL1
//
//  Created by MacBook Pro on 06/04/23.
//

import Foundation
class ruko {
    let listing : [list]
    let name : String
   
    
    init(name: String, listing: [list]) {
        self.name = name
        self.listing = listing
    }
    
    
    func printMenu(){
        for (i,namacafe) in self.listing.enumerated(){
            print("[\(i+1)] \(namacafe.listname) - Rp. \(namacafe.harga)")
        }
        print("[B]ack to Menu")
        
    }
    
    func pesanMenu() {
        printMenu()
        print("your menu choose : ")
        let input = readLine()
        if let nomorMenu = Int(input ?? "0") {
                if nomorMenu < 1 || nomorMenu > listing.count {
                    print("Menu tidak tersedia")
                } else {
                    let menuTerpilih = listing[nomorMenu - 1]
                    var namaToko = menuTerpilih.namaruko
                    var namaMenu = menuTerpilih.listname
                    var hargaa = menuTerpilih.harga
                    print("Anda memesan \(menuTerpilih.listname) seharga \(menuTerpilih.harga)")
                    print("how many \(namaMenu) do you want to buy?")
                    if let buy = readLine(), let total = Int(buy){
                        shop.tambahBarang(inherlist(namaruko: namaToko, namamenu: namaMenu, harga: hargaa, banyak: Int(total)))
                        print("Thanks you for ordering")
                        print("")
                    }
                }
        } else if input?.lowercased() == "b" || input == "B"{
                ShowMenu()
                print("Kembali ke menu utama")
            } else {
                print("Input tidak valid")
            }
        }
    
}

