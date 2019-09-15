//
//  ViewController.swift
//  swift_eg
//
//  Created by weilai on 2019/9/13.
//  Copyright © 2019 weilai. All rights reserved.
//

import Foundation
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let s:String=String.init(format:"ddd%.2f",1.2233)
        let ss:String=String.init(format:"ddd%@","1.2233")
        let sss:String=String.init(format:"ddd%tu",12233)
        print("\(s)--\(ss)--\(sss)")
        // Do any additional setup after loading the view.
        
        for character in "Dog! " {
            print(character)
        }
        
        
        let yenSign: Character = "Y"
        
        let unusualMenagerie = "Koala , Snail , Penguin , Dromedary "
//        print("unusualMenagerie has \(countElements(unusualMenagerie)) characters")
        
        let string1 = "hello"
        let string2 = " there"
        let character1: Character = "!"
        let character2: Character = "?"
//        let stringPlusCharacter = string1 + character1
//        let stringPlusString = string1 + string2
//        let characterPlusString = character1 + string1
//        let characterPlusCharacter = character1 + character2
//
        var instruction = "look over"
        instruction += string2
        
        
        var welcome = "good morning"
//        welcome += character1
        
        let multiplier = 3
        let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"
        print(message)
        
        
        //compare string
        let quotation = "We're a lot alike, you and I."
        let sameQuotation = "We're a lot alike, you and I."
        if quotation == sameQuotation {
            print("There two strings are considered equal!")
        }
        
        
        let romeoAndJuliet = [
            "Act 1 Scene 1: Verona, A public place",
            "Act 1 Scene 2: Capulet's mansion",
            "Act 1 Scene 3: A room in Capulet's mansion",
            "Act 1 Scene 4: A street outside Capulet's mansion",
            "Act 1 Scene 5: The Great Hall in Capulet's mansion",
            "Act 2 Scene 1: Outside Capulet's mansion",
            "Act 2 Scene 2: Capulet's orchard",
            "Act 2 Scene 3: Outside Friar Lawrence's cell",
            "Act 2 Scene 4: A street in Verona",
            "Act 2 Scene 5: Capulet's mansion",
            "Act 2 Scene 6: Friar Lawrence's cell",
        ]
        
        var act1SceneCount = 0
        for scene in romeoAndJuliet {
            if scene.hasPrefix("Act 1") {
                act1SceneCount = act1SceneCount + 1
            }
        }
        print("There are \(act1SceneCount) scenes in Act 1")
        
        
        //uppercase and lowercase strings
        let normal = "Could you help me, please?"
        let shouty = normal.uppercased()
        let whispered = normal.lowercased()
        print(normal)
        print(shouty)
        print(whispered)
        
        
        //Unicode
        let dogString = "Dog!"
        //show using utf8
        for codeUnit in dogString.utf8{
            print("\(codeUnit) ")
        }
        print("\n")
        
        
        //show using utf16
//        let dogString = "Dog!"
        //show using utf8
        for codeUnit in dogString.utf16{
            print("\(codeUnit) ")
        }
        print("\n")
        
        //show using Unicode
        for scalar in dogString.unicodeScalars{
            print("\(scalar.value) ")
        }
        print("\n")
        
        //show using Unicode 2
        for scalar in dogString.unicodeScalars{
            print("\(scalar) ")
        }
        print("\n")

        
        
        
        //control syntax
        let individualScores = [75, 43, 103, 87, 12]
        var teamScore = 0
        for score in individualScores {
            if score > 50 {
                teamScore += 3
            } else {
                teamScore += 1
            }
        }
        
        print("teamScore is \(teamScore)")
        
        
        //可控变量(nullable variable)
        var optionalString: String? = "Hello"
        optionalString == nil
        var optionalName:String? = "John Appleseed"
        var gretting = "Hello!"
        if let name = optionalName {
            gretting = "Hello, \(name)"
        }
        
        print(gretting)
        
        
        //for
        for index in 1...5 {
            print("\(index) times 5 is \(index * 5)")
        }
        
        
        // for 2
        let base = 3
        let power = 10
        var answer = 1
        for _ in 1...power {
            answer  *=  base
        }
        print("\(base) to the power of \(power) is \(answer)")
        
        
        
        //for-in
            let interestingNumbers = [
                "Prime":[2,3,4,5,123,4,34,3],
                "Fibonacci": [ 1,1,1456,1,1,2,3,5,2],
                "Square": [ 1,4,7, 16,32,65],
            ]
            var largest = 0
            for(kind, numbers) in interestingNumbers {
                for number in numbers {
                    if number > largest {
                        largest = number
                    }
                }
            }
        
            print(largest)
        
        //for 3
//            var index:Int
//            for index = 0; index < 3; ++index {
//                print("index is \(index)")
//            }
        
        //while
            var n = 2
            while n < 100 {
                n = n * 2
            }
            print(n)
        
            var m = 2
            repeat {
                m = m * 2
            } while m < 100
            print(m)
        
        
        
        var temperatureInFahrenheit = 90
        if temperatureInFahrenheit <= 32 {
            print("It's very cold.Consider wearing a scarf.")
        } else if temperatureInFahrenheit >= 86 {
            print("It's really warm. Don't forget to wear sunscreen.")
        } else {
            print("It's not that cold. Wear a t-shirt.")
        }
        
        
        //switch
        let someCharacter: Character = "e"
        switch someCharacter {
        case "a", "e", "i", "o", "u":
            print("\(someCharacter) is a vowel")
            case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m",
                 "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
            print("\(someCharacter) is a consonant")
        default:
            print("\(someCharacter) is not a vowel or a consonant")
        }
        
        
        //func test
        
        print(sayHello(personName: "Annna"))
        print(sayHello(personName: "<#T##String#>"))
        print(sayHello(personName: "Brian"))
        
        //func 2
        print(halfOpenrangeLenth(start: 1, end: 245))
        
        //func 3
        print(sayHelloWorld())
        
        sayGoodbye(personName: "Dave")
        
        
        let total = count(string: "some arbitrary string!")
        print("\(total.vowels) vowels and \(total.consonants) consonants")
        
        
        print(join(string: "hello", toString: "world", withJoiner: ",-"))
        
        
        print(arithmeticMean(numbers: 1,2,3,4,5))
        print(arithmeticMean(numbers: 3,8,19))
        
     // in loop
    }
    
    //func
    func sayHello(personName:String)->String{
        let greeting = "Hello, " + personName + "!"
        return greeting
    }
    
    //func, multi input variable
    func halfOpenrangeLenth(start:Int, end:Int) ->Int{
        return end - start
    }
    //func, no input variable
    func sayHelloWorld() ->String {
        return "Hello, world!!!!!!!!!!"
    }
    
    //func, no return
    func sayGoodbye(personName:String){
        print("Goodbye, \(personName)")
    }
    
    //func, with multi return
    func count(string:String) ->(vowels:Int, consonants: Int, others:Int) {
        var vowels = 0, consonants = 0, others = 0
        for character in string {
            switch String(character).lowercased() {
            case "a", "e", "i", "o", "u":
                vowels = vowels + 1
            case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m",
                 "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
                consonants = consonants + 1
            default:
                others = others + 1
            }
        }
        return (vowels, consonants, others)
    }
    
    //func, with external tips info
//    func containsCharacter(# string:String, # characterToFind: Character) ->Bool {
//        for character in string {
//            if character == characterToFind {
//                return true
//            }
//        }
//        return false
//    }
//
    
    
    func join(string s1:String, toString s2:String, withJoiner joiner:String) ->String {
        return s1 + joiner + s2
    }
    
    //func, change variable
    func arithmeticMean(numbers: Double...) -> Double {
        var total:Double = 0
        for number in numbers {
            total += number
        }
        return total/Double(numbers.count)
    }
    
    //func, var
//    func alignRight(var string:String, count:Int, pad:Character) ->String {
//        let amountToPad = count - string.count
//        for _ in 1...amountToPad {
//            string = pad + string
//        }
//        return string
//    }
    
    
    @IBOutlet weak var tttt: UIButton!
    
    @IBOutlet var labelone: [UILabel]!
    
   // last end
}

