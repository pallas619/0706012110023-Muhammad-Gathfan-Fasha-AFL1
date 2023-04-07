//
//  keranjang.swift
//  0706012110023_Muhammad Gathfan Fasha_AFL1
//
//  Created by MacBook Pro on 06/04/23.
//

import Foundation

protocol useKeranjang{
    func tambahBarang (_ item: inherlist)
}

class keranjang: useKeranjang{
    var listKeranjang: [inherlist] = []
    var totalSemua: Int = 0
    
    init(){}
    init(_ listKeranjang: [inherlist],_ totalSemua: Int) {
        self.listKeranjang = listKeranjang
        self.totalSemua = totalSemua
    }
    
    func totalBayar () -> Int {
            var totalPesanan: Int = 0
            
            for item in listKeranjang {
                totalPesanan += item.banyak * item.harga
            }
            
            return totalPesanan
        }
    
    func tambahBarang(_ item: inherlist) {
        listKeranjang.append(item)
    }
    
    
    
    func cekBarang()->Bool{
        if listKeranjang.isEmpty{
            return true
        }else{
            return false
        }
    }
    
    func showBarang() {
        if listKeranjang.isEmpty{
            print("Your cart is Empty")
            print("")
        }else{
            
            var storeKeranjang : [String: [String:Int]] = [:]
            for ambil in listKeranjang {
                if storeKeranjang[ambil.namaruko] == nil {
                    storeKeranjang[ambil.namaruko] = [ambil.listname: ambil.banyak]
                }
                else if storeKeranjang[ambil.namaruko]![ambil.listname] == nil{
                    storeKeranjang[ambil.namaruko]![ambil.listname] = ambil.banyak
                }
                else{
                    storeKeranjang[ambil.namaruko]![ambil.listname]! += ambil.banyak
                }
            }
            
            for (nametoko,simpans) in storeKeranjang{
                print()
                print("your order from \(nametoko) : ")
                for(menu , banyak ) in simpans {
                    print("- \(menu) x \(banyak)")
                }
            }
            
            print("")
            print("""
                    Press [B] to go Back
                    Press [P] to pay/checkout
                """)
            print("your choice : ")
            if let userInputBuy = readLine(), let milih = String?(userInputBuy){
        
                if milih == "B" || milih.lowercased() == "b"{
                    
                }
                else if milih == "P" || milih.lowercased() == "p"{
                    var tes = true
                    repeat{
                        print("Your Total Order : \(totalBayar())")
                        print("Enter the amount of your money : ")
                            
                        if  let enter = readLine(){
                            if let enter = Int(enter){
                                if enter == 0{
                                            print("Payment can't be Zero")
                                            tes = true
                                }
                                else if enter < 0{
                                            print("Please Enter a Valid Amount!!")
                                            tes = true
                                }
                                else if enter < totalBayar(){
                                            print("Not Enough Money Dek!!")
                                            tes = true
                    
                                }
                                else {
                                    
                                    // perbayaran
                                    print("Your total order: \(totalBayar()) " )
                                    print("You pay: \(enter) Change:  \(enter - totalBayar())" )
                                    print("")
                                    print("Enjoy your meals!")
                                    print()
                                    listKeranjang.removeAll()
                                    tes = false
                                    break
                
                                }
                                } else if enter.trimmingCharacters(in: .whitespaces).isEmpty{
                                    print("Please Enter Your Payment.")
                                        }
                                                    }
                                }while true
                }
            }
        }
    }
}
