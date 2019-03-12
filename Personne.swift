//
//  Personne.swift
//  PersonneApp
//
//  Created by Theodora-Augustina DRAGAN on 12/03/2019.
//  Copyright © 2019 Theodora-Augustina DRAGAN. All rights reserved.
//

import Foundation

class Person : Equatable{
    
    var firstNom : String
    var lastNom: String
    var dateNaiss : Date?
    var agee : Int?
    
    init(firstname : String, lastname : String){
    
        self.firstNom = firstname
        self.lastNom = lastname
        self.dateNaiss = Date()
        self.agee = 0
    }
    
    func lastname() -> String {
        return self.lastNom
    }
    
    func firstname() -> String {
        return self.firstNom
    }
    
    func fullname() -> String {
        return firstname() + String(" ") + lastname()
    }
    
    func birthdate() -> Date? {
        return self.dateNaiss
    }
    
    func birthdate(newDate : Date){
        self.dateNaiss = newDate
    }

    func age()-> Int?{
        return self.agee
    }
    
    static func ==(p1 : Person, p2 : Person) -> Bool {
        if let tmp1 = p1.birthdate() , let tmp2 = p2.birthdate() {
            return p1.firstname() == p2.firstname() && p1.lastname() == p2.lastname() && tmp1 == tmp2
        }
        return false
    }
    
    static func !=(p1 : Person, p2 : Person) -> Bool {
        return !(p1==p2)
    }
    
    
    

}
