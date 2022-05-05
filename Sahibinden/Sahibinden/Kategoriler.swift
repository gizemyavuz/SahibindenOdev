//
//  Kategoriler.swift
//  Sahibinden
//
//  Created by Gizem Yavuz on 4.05.2022.
//

import Foundation

class Kategoriler{
    var kategoriId:Int?
    var kategoriAdi:String?
    var kategoriResimAdi:String?
    var kategoriAciklama:String?
    
    init(kategoriId:Int,kategoriAdi:String,kategoriResimAdi:String,kategoriAciklama:String){
        self.kategoriId = kategoriId
        self.kategoriAdi = kategoriAdi
        self.kategoriResimAdi = kategoriResimAdi
        self.kategoriAciklama = kategoriAciklama
        
    }
}
