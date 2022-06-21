import Foundation
import Swift

//2. Century from year
func year(value: Int) {
    let x = Int(value/100) + 1
    print(x)
}
year(value: 1905)

//3. Check Palindrome
func checkPalindrome(word: String) -> Bool{
    let char = Array(word)
    let _half: Int = char.count/2
    for i in 0..<_half{
        if(char[i] != char[char.count - 1 - i]){
            return false
        }
    }
    return true
}
print(checkPalindrome(word: "aabaa"))

//4. Adjacent Elements Product
func adjacentElementsProduct(value: [Int]){
    var result = 0
    for i in 0..<value.count-1{
        let result_check = value[i] * value[i+1]
        if(result < result_check){
            result = result_check

        }
    }
    print(result)
}
adjacentElementsProduct(value: [3,6,-2,-5,7,3])

//5. Shape Area
func shapeArea(value: Int){
    let way_1 = Int(pow(Double(value), Double(2))) + Int(pow(Double(value-1), Double(2)))
//    var way_2 = 2 * value * (value-1) + 1
    
    print(way_1)
}
shapeArea(value: 3)

//6. Make Array Consecutive2
func makeArrayConsecutive2(array: [Int]){
    let _newArr = array.sorted()
    let result = (_newArr[_newArr.count-1] - _newArr[0] + 1) - _newArr.count
    print(result)

}
makeArrayConsecutive2(array: [6, 2, 3, 8])


//9. All Longest Strings
func allLongestStrings(arrayStrings: [String]){
    
    var longest: Int = 0
    var newArray: [String] = []
    
    for i in 0..<arrayStrings.count{
        if(longest <= arrayStrings[i].count){
            longest = arrayStrings[i].count
        }
    }
    
    for j in 0..<arrayStrings.count{
        if(longest == arrayStrings[j].count){
            newArray.append(arrayStrings[j])
        }
        
    }
    print(newArray)
    
}
allLongestStrings(arrayStrings: ["aba", "aa", "ad", "vcd", "aba"])

//10. Common Character Count
func commonCharacterCount(stringOne: String, stringTwo: String){
    let arrayOne = Array(stringOne)
    let arrayTwo = Array(stringTwo)
    var count: Int = 0
    
    for i in 0..<arrayOne.count{
        print(arrayOne[i],arrayTwo.contains(arrayOne[i]))
        if(arrayTwo.contains(arrayOne[i])){
            count+=1
            let name: String.Element = arrayOne[i]
            let check: Array<String.Element>.Index? = arrayTwo.firstIndex(of: name)
//            print(arrayTwo[check..<1])
        }
    }
//    print(arrayTwo[arrayTwo.firstIndex(of: "abc")..<1])
}

commonCharacterCount(stringOne: "aabcc", stringTwo: "adcaa")
