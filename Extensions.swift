//
//  Extensions.swift
//  Extensions
//
//  Created by Anthony on 10/5/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//


import Foundation

extension String {
    
    func whisper() -> String {
        return self.lowercased()
    }
}

extension String {
    
    func shout() -> String {
        return self.uppercased()
    }
}

extension String {
    var pigLatin: String {
        let piggy = self.components(separatedBy: " ")
        var wiggly = ""
        
        for i in piggy {
            wiggly += "\((String(i.characters.dropFirst(1))))" + "\(i[i.startIndex])ay "
        }
        return wiggly.capitalized.trimmingCharacters(in: .whitespaces)
    }
}

extension String {
    var points: Int {
        var total = 0
        for i in self.characters {
            switch i {
            case "a", "A", "e", "E", "i", "I", "o", "O", "u", "U", "y", "Y":
                total += 2
            default:
                total += 1
            }
        }
        return total
    }
}




extension Int {
    func half() -> Int {
        return self / 2
    }
}

extension Int {
    func isDivisible(by number: Int) -> Bool{
        return self % number == 0
    }
}

extension Int {
    var squared: Int{
        return self*self
    }
}

extension Int {
    var halved: Int {
        return self.half()
    }
}



extension String {
    var unicornLevel: String {
        var unicorns: String = ""
        for i in self.characters{
            if i != " " {
                unicorns += "🦄"
            }
        }
        return String(describing: unicorns)
    }
}
