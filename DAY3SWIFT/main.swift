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



