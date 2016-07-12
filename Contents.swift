//: Playground - noun: a place where people can play

import UIKit

struct player
{
    var name = ""
    var country = ""
    var age = 0
}
//Enter Data
var month = [5,7,1,11, 5, 9, 10, 2, 4, 5, 3, 6, 7, 9, 4, 5, 7, 12, 12]
var age = [28, 29, 37, 27, 26, 27, 24, 25, 28, 37, 24, 29, 32, 37, 31, 25, 24, 31, 27]
var height = [76, 73, 73, 71, 72, 76, 71, 73, 74, 70, 72, 75, 73, 73,75,80, 74,74, 78]
var country = ["RUS", "CAN", "SVK", "USA", "SWE", "CAN", "RUS", "SVK", "CAN", "CAN", "SWE", "SWE", "CAN", "CZE", "CAN", "SWE", "USA", "CAN", "USA"]


var d1:Dictionary = [15: "Artem Anisimov",
                     11: "Andrew Desjardins",
                     81:"Marian Hossa",
                     88:"Patrick Kane",
                     16: "Marcus Kruger",
    53:"Brandon Mashinter",
    72: "Arttemi Panarin",
    14: "Richard Panik",
    19: "Jonathan Toews",
    51: "Brian Campbell",
    52: "Erik Gustafsson",
    4: "Niklas Hjalmarsson",
    2: "Duncan Keith",
    32: "Michal Rozsival",
    7: "Brent Seabrook",
    43: "Viktor Svedberg",
    57: "Trevor Van Riemsdyk",
    50: "Corey Crawford",
    33: "Scott Darling"]

//Print Dictionary
print("Print Dictionary")
for (key, value) in d1{
    print("Number: \(key) Name: \(value)")
}
//create an array of structures
var aryPlayers:Array<player> = Array<player>()
var i = 0

for (key, value) in d1{
    var onePlayer = player()
    onePlayer.name = value;
    aryPlayers.insert(onePlayer, atIndex: i)
    i++
}

for (var x = 0; x < aryPlayers.count; x++)
{
    aryPlayers[x].age = age[x]
    aryPlayers[x].country = country[x]
}
//********************************************************
//Sort by Age
let newArr = aryPlayers.sort { (lage, rage) in return lage.age < rage.age }
print("Sort by Age")
print("Age   Country  Name")
for (var x = 0; x < newArr.count; x++)
{
    print("\(newArr[x].age)     \(newArr[x].country)    \(newArr[x].name)")
}
//*********************************************************
//Sort by Country
let newArr1 = aryPlayers.sort { (lcountry, rcountry) in return lcountry.country < rcountry.country }

print("Sort by Country")
print("Age   Country  Name")
for (var x = 0; x < newArr.count; x++)
{
    print("\(newArr1[x].age)     \(newArr1[x].country)    \(newArr1[x].name)")
}

//***********************************************
//average age
var sum = 0;

for var i = 0; i < age.count; i++
{
    sum += age[i];
}

var avg = sum/age.count

print("Average age: \(avg)")
//**********************************************
//average Height
var sumHeight = 0;

for var i = 0; i < height.count; i++
{
    sumHeight += height[i];
}

var avgHeight = sumHeight/height.count

if avgHeight > 72{
    var feet = 6;
    avgHeight = avgHeight - 72
    
    print("Average Height: \(feet)' \(avgHeight)")
    
}
//*********************************************
//most month
var totalmonth = [0,0,0,0,0,0,0,0,0,0,0,0]

for var i = 0; i < month.count; i++
{
    switch month[i]{
    case 1:
        totalmonth[0] += 1
    case 2:
        //feb++
        totalmonth[1] += 1
    case 3:
        //mar++
        totalmonth[2] += 1
    case 4:
        //apr++
        totalmonth[3] += 1
    case 5:
        //may++
        totalmonth[4] += 1
    case 6:
        //jun++
        totalmonth[5] += 1
    case 7:
        //jul++
        totalmonth[6] += 1
    case 8:
       // aug++
        totalmonth[7] += 1
    case 9:
        //sep++
        totalmonth[8] += 1
    case 10:
        //oct++
        totalmonth[9] += 1
    case 11:
        //nov++
        totalmonth[10] += 1
    case 12:
        //dec++
        totalmonth[11] += 1
    default:
        print("should not be here")
        
    }
    
}
var highest = 0

for (var i = 0; i < totalmonth.count - 1; i++)
{
    if highest < totalmonth[i]
    {
        highest = i;
    }
}

if highest == 0
{
    print("Most Birthday Month : January")
}else if highest == 1
{
    print("Most Birthday Month : Februrary")
}else if highest == 2
{
    print("Most Birthday Month : March")
}else if highest == 3
{
    print("Most Birthday Month : April")
}else if highest == 4
{
    print("Most Birthday Month : May")
}else if highest == 5
{
    print("Most Birthday Month : June")
}else if highest == 6
{
    print("Most Birthday Month : July")
}else if highest == 7
{
    print("Most Birthday Month : August")
}else if highest == 8
{
    print("Most Birthday Month : September")
}else if highest == 9
{
    print("Most Birthday Month : October")
}else if highest == 10
{
    print("Most Birthday Month : November")
}else if highest == 11
{
    print("Most Birthday Month : December")
}














