//
//  main.swift
//  DAY3SWIFT
//
//  Created by MacStudent on 2019-06-11.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

print("Day Three Swift")
//print("Please Enter your favorite programming language", terminator: ".")
//print()
//let name = readLine()
//print("Your favorite programming language is \(name!).")

var a = [10,20,30,40,50,60,70,80,90,100]
print(a[0])

for x in a{
    print("value of x is: ",x)
}

for _ in a{
    print("value of _ is: ")
}

a.append(110)

for x in a{
    print("value of x is: ",x)
}


print("capacity: ",a.capacity)
print("count: ",a.count)

if a.isEmpty{
    print("Array is Empty")
}else{
    print("Array contains some element")
}

let otherCountries = ["Pak","Russia","UK"]
var country :[String]!
country = [String]()

//country += ["Pak","Russia","UK"]

country = country + ["Pak","Russia","UK"]

//var  b:[String] = []
//var  b=[String]()


//var b :[String]!
//b = [String]()

//b.append("India")
//b.append("Canada")
//b.append("USA")

//print(b)


if var c =  country{
    c.append("India")
    c.append("Canada")
    c.append("USA")
    print("No of Countries : \(c.count)")
    print(c)
    print(country!)
    
    country = c
}
print("No of Countries : \(country.count)")

print("Countries are: ",country!)
var x = Int()
print(x)



//var  c:[String]?
//c!.append("India")
//c!.append("Canada")
//c!.append("USA")
//print(c)

print("Sorting......")

var unSortedValue = [30,69,1,4,59,15,99,35]

var sortedValue = [Int]()

let count = unSortedValue.count

//for x in unSortedValue.indices{
//
//    for y in x{
//
//    }
//}


//func printTheReverseArray(arr: [String],index : Int) {
//
//    if arr.isEmpty {
//        return
//    }else{
//        if index == -1
//        {
//            return
//        }else{
//            print(arr[index])
//            printTheReverseArray(arr: arr, index: index-1)
//        }
//
//    }
//}


func printTheReverseArray(arr: [String],index : Int) {
    
    if arr.isEmpty {
return
    }else{
        if index == -1
        {
            return
        }else{
            print(arr[index])
            printTheReverseArray(arr: arr, index: index-1)
        }
    
    }
}

printTheReverseArray(arr: country, index: country.count-1)
print(".....Remove All....")
country.removeAll()
printTheReverseArray(arr: country, index: country.count-1)
print("....Removed.....")





//for (int i = 1; i < array.length; i++) {
//    for (int j = i; j > 0; j--) {
//        if (array[j] < array [j - 1]) {
//            temp = array[j];
//            array[j] = array[j - 1];
//            array[j - 1] = temp;
//        }
//    }
//}
//for (int i = 0; i < array.length; i++) {
//    System.out.println(array[i]);
//}


// recursion Array Example

func printN(n: Int){
    if (n==0) {
    
        return
    }else{
        print(n)
        printN(n: n-1)
        
    }
}

print(".........")
printN(n: 10)


func SumN(n: Int) -> Int
{
    if (n==0) {
        return 0
    }else{
        return n + SumN(n: n-1)
    }

}

print(".........")
print(SumN(n: 10))



/////

// Dictonarairy
var dict = Dictionary<String, String>()

dict["IND"] = "India"
dict["CND"] = "CANADA"
dict["PAK"] = "Pakistan"
dict["USA"] = "United States Of America"
dict["afg"] = "afgan"

print(dict)
print(dict["USA"]!)


var countryDict = ["a":"america","b":"Boy","c":"Cat"]
print(countryDict)
if let c = countryDict["a"]{
    print(c)
}
print(countryDict["d"] ?? "Key doesnot exits")


for res in countryDict{
    print("dict: ",res)
}

for (_,v) in countryDict{
    print(v)
}

var newArray : Array<Int>


var mySet = Set<String>()
mySet.insert("India")
mySet.insert("Pakistan")
mySet.insert("Canada")
mySet.insert("Russia")


var mySet2 = Set<String>()
mySet2.insert("USA")
mySet2.insert("SriLanka")
mySet2.insert("India")
mySet2.insert("Nepal")

let interSet = mySet.intersection(mySet2)
print("Common: ",interSet)


let unionSet = mySet.union(mySet2)
print("union: ",unionSet)

let disJointSet = mySet.isDisjoint(with: mySet2)
print("disJoint: ",disJointSet)

for x in mySet{
    print(x)
}

var anyTypeDict = Dictionary<String,Any>()
anyTypeDict["INT"] = 100
anyTypeDict["String"] = "Hello World"
anyTypeDict["Dict"] = ["k":"v"]
anyTypeDict["Tuple"] = (100,200)

for value in anyTypeDict{
    if value.value is Int{
        print("i am an intger: \(value)")
    }
    
    if value.value is String{
        print("i am an String: \(value)")
    }
    
//    if value.value is ()
    
    if value.value is Dictionary<String, Any>{
        print("I am an Dict: \(value)")
    }
    
    if value.value is (Int,Int){
        
        print("I am tupe: \(value)")
    }
}
