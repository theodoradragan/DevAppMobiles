//
//  PersonSet.swift
//  PersonneApp
//
//  Created by Theodora-Augustina DRAGAN on 12/03/2019.
//  Copyright © 2019 Theodora-Augustina DRAGAN. All rights reserved.
//

import Foundation
class PersonSet {
    
    var persons: [Person]
    
    init(){
        persons = []
    }
    
    init(p : [Person]) {
        self.persons = p
    }
    
    func isEmpty() -> Bool{
        return self.persons.isEmpty
    }
    
    func add(x: Person){
        self.add(x: <#T##Person#>)
    }
    
    func remove(x : Person){
        for i in 0...self.persons.count {
            if self.persons[i] == x
            {
                self.persons.remove(at: i)
                break
            }
        }
        
    }
    
    func count() -> Int {
        return self.persons.count
    }
    
    func contains(x : Person) -> Bool {
        return self.persons.contains(x)
    }
    
    func look(x : Person) -> Person? {
        if self.persons.
    }
    
    func makeIterator()->IteratorPersonSet {
        return IteratorPersonSet(self)
    }
}

class IteratorPersonSet : IteratorProtocol{
    var myColl : PersonSet
    
    init(coll : PersonSet){
        self.myColl = coll
    }
    
   func next() -> Person {
    <#code#>
    }
}
