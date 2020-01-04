
# Buổi 4

# Bài tập về nhà
1. Tính tổng các chữ số của một số tự nhiên
2. Kiểm tra tính đối xứng của một số tự nhiên
3. Viết một minigame random các số từ 1 đến 100, cho người dùng đoán số nhập dữ liệu từ bàn phím. 
- Nếu số nhập vào đúng với số được random thì in ra message chúc mừng
- Nếu số nhập vào bé hơn số được random thì in ra message là bé quá
- Nếu số nhập vào lớn hơn số được random thì in ra message là lớn quá
4. Giải phương trình bậc 2: ax2 + bx + c = 0
5. Viết chương trình tính tiền cước TAXI. Biết rằng:
- Km đầu tiên là 5000đ
- 30Km tiếp theo là 4000đ
- Nếu lớn hơn 30Km thì mỗi Km thêm ra sẽ phải trả là 3000đ
- Hãy nhập số Km sau đó in ra số tiền phải trả.

## Lưu ý


# Yêu cầu
    - Bài tập đẩy lên Github, gửi link bài tập qua Mail
    - Cú pháp gửi bài:
        [BTVN-04] + Họ tên người gửi + lớp di động 4
    - Gửi bài tập vào mail: quynh@techmaster.vn
    - Khuyến khích viết README.md mô tả repository của mình

## Chữa bài
```
// 1. Sắp xếp mảng 
func sapXepMang(){
    var array = [2, 9, 1, 38, 39, 38]
    print("Mảng ban đầu: \(array)")
    
    var temp = 0
    for i in 0..<array.count-1{
        print(array[i])
        for j in i+1..<array.count{
            if array[i] > array[j] {
                temp = array[i]
                array[i] = array[j]
                array[j] = temp
            }
            print("i: \(i) - j: \(j) => \(array)")
        }
    }
    print("Mảng sau khi sắp xếp tăng dần: \(array)")
    print("Mảng sau khi sắp xếp giảm dần: \(array.reversed())")
    
}

----------------

// Bài 3:
func timUoc() {
    print("Nhập số tự nhiên:")
    let number = Int(readLine()!)!
    if number < 0 {
        print("\(number) không phải số tự nhiên")
    } else if number == 0 {
        print("0 có vô số ước số!")
    } else {
        var numbers: [Int] = []
        for i in 1...(Int(number / 2)) {
            if number % i == 0 {
                numbers.append(i)
            }
        }
        numbers.append(number)
        print("\(number) có tập hợp ước số: \(numbers)")
    }
}

----------------
// Bài 5: 
func chonDapAn(){
    print("""
    Đâu không phải là một ngôn ngữ lập trình:
    a. Golang
    b. Swift
    c. Ruby
    d. Daily
""")
    let select = readLine()!
    switch select{
    case "a":
        print("Đáp án sai")
    case "b":
        print("Đáp án sai")
    case "c":
        print("Đáp án sai")
    case "d":
        print("Đáp án đúng")
    default:
        print("Đáp án không hợp lệ!")
        
    }
}

----------------
// Bài 6:
func soHoanHao() {
    
    print("Nhập số: ")
    let n = Int(readLine()!)!
    
    while n < 2 || n > 32767 {
        soHoanHao()
    }
    
    for i in 6...n {
        if isSoHoanHao(i) {
            print("\(i)")
        }
    }
}

// hàm kiểm tra một số phải số hoàn hảo hay không
func isSoHoanHao(_ n: Int) -> Bool {
    var sum = 0
    for i in 1...n/2 {
        // tính tổng các ước
        if n % i == 0 {
            sum += i
        }
    }
    
//    if sum == n {
//        return true
//    } else {
//        return false
//    }
    
    return sum == n
}

--------Vẽ hình---------
func hinhChuNhatDac(){
    print("Nhập kích thước m, n (m, n >= 2): ")
    let m = Int(readLine()!)!
    let n = Int(readLine()!)!
    
    for _ in 0..<m {
        for _ in 0..<n{
            print("*", terminator:"")
        }
        print()
    }
}

func hinhChuNhatRong(){
    print("Nhập kích thước m, n (m, n >= 2): ")
    let m = Int(readLine()!)!
    let n = Int(readLine()!)!
    for i in 0..<m{
        
        switch i {
        case 0:
            for _ in 0..<n{
                print("*", terminator: " ")
            }
            print()
        case 1..<m-1:
            for j in 0..<n{
                if j == 0 || j == n - 1{
                    print("*", terminator: " ")
                } else {
                    print(" ", terminator: " ")
                }
            }
            print()
        case m - 1:
            for _ in 0..<n{
                print("*", terminator: " ")
            }
            print()
        default:
            return
        }
    }
}

func tamGiacVuong(){
    print("Nhập chiều cao tam giác (>1): ")
    let h = Int(readLine()!)!
    
    for i in 1...h{
        for _ in 1...i{
            print("*", terminator:" ")
        }
        print()
    }
}

func tamGiacNguoc(){
    print("Nhập chiều cao tam giác (>1): ")
    let h = Int(readLine()!)!
    let day = 2*h - 1
    
    for i in 0..<h{
        for j in 0..<day{
            if i == j || (i <= day - 1 - j && i < j) {
                print("*",terminator:" ")
            } else {
                print(" ",terminator:" ")
            }
        }
        print()
    }
}

----Bài 5-----
func demPhepTinh(){
    print("Nhập vào một số tự nhiên bất kì: ")
    var n = Int(readLine()!)!
    
    var count = 0
    while n != 1 {
        if n % 2 == 0 {
            n = n / 2
        } else {
            n = n * 3 + 1
        }
        count += 1
    }
    print(count)
}

```
    



