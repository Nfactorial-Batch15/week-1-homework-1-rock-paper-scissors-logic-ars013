//
//  main.swift
//  RPS2
//
//  Created by Арслан on 06.12.2021.
//

import Foundation

print("""
      Hello Dear friend!
      You can choose one of the three gesture: rock, paper or scissors.
      Please make your choice below!
      """)

let name = readLine()

func sw(x: String?) -> Int{
    if x == "rock" {
        return 1
    }
    else if x == "paper" {
        return 2
    }
    else if x == "scissors"{
        return 3
    }
    else{
        return 4
    }
}

var n = sw(x: name)

var ranInt = Int.random(in: 1...3)

func emp(x: Int, y: Int) -> String{
    if x == 1 && y == 3 || x == 2 && y == 1 || x == 3 && y == 2{
        return "You win!"
    }
    else if x == 4{
        return "Please enter the correct gesture"
    }
    else {
        return "Computer win!"
    }
}

print(emp(x: n, y: ranInt))

