import strutils

proc bottles(n: int): string =
    var text: string 
    text = if n == 0: "no more" else: intToStr(n)
    text &= (if n == 1: " bottle" else: " bottles")
    text &= " of beer"
    return text

for num in countdown(99, 0):
    echo bottles(num).capitalize & " on the wall, " & bottles(num) & "."
    write(stdout, if num == 0: "Go to the store and buy some more, " else: "Take one down and pass it around, ")
    echo bottles(if num > 0: num - 1 else: 99) & " on the wall."
    echo() 
