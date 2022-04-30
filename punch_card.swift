var Input:[Int] = [4,
                    3, 4,
                    2, 2,
                    2, 3,
                    3, 3]


// print(Input[0])

var index = 0


// for i in stride(from: 1, to: Input[index] + 1, by:1){
//     print("Case #",i,":")
// }

func case1(r: Int, c: Int){
    var firstLine = ""
    var secondLine = ""
    var borderRaw = ""
    var punchLine = ""

    var flag = 0

    firstLine.append("..")
    secondLine.append("..")
    //print("From Function", num1, num2)
    
    // Column making
    for _ in stride(from: 0, to: c + 1, by: 1){

        if (flag == 0){
            firstLine.append("+")
            firstLine.append("-")

            secondLine.append("|")
            secondLine.append(".")
        }


        borderRaw.append("+")
        borderRaw.append("-")

        punchLine.append("|")
        punchLine.append(".")
    }

    firstLine.removeLast()
    firstLine.removeLast()
    firstLine.removeLast()

    secondLine.removeLast()
    secondLine.removeLast()
    secondLine.removeLast()

    

    borderRaw.removeLast()
    punchLine.removeLast()

    //var border = borderRaw.joined(separator: "")

    print(firstLine)
    print(secondLine)
    
    for _ in stride(from: 0,to: r, by: 1){
        //print(i)
        print(borderRaw)

        if (flag < r - 1){
            print(punchLine)
        }
        
        // For controlling 
        flag += 1
        
    }
    
}

func res(idx: [Int]){
    var caseNo = 1

    var x = 1
    var y = 2

    

    for _ in stride(from: 0, to: idx[0], by: 1){

        let row = idx[x]
        let col = idx[y]
        print("Case #", caseNo)
        // print(row, col)
        case1(r: row, c: col)

        caseNo += 1
        x += 2
        y += 2
    }
}

// case1(r: 3, c: 4)
// case1(r: 2, c: 2)
// case1(r: 2, c: 3)

res(idx: Input)
