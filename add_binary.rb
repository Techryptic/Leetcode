# @param {String} a
# @param {String} b
# @return {String}

#Leetcode Practice using Ruby.

=begin 

https://leetcode.com/problems/add-binary/

Given two binary strings, return their sum (also a binary string).

The input strings are both non-empty and contains only characters 1 or 0.

Example 1:

Input: a = "11", b = "1"
Output: "100"

Example 2:

Input: a = "1010", b = "1011"
Output: "10101"
=end



def add_binary(a, b)
    a_len = a.length
    b_len = b.length

    if a_len > b_len
        diff = a_len - b_len
        b = "0"*diff + b.to_s
    end

    if b_len > a_len
        diff = b_len - a_len
        puts diff
        a = "0"*diff + a.to_s
    end

    #A,B are now same size length
    total_len = a.length - 1 #aligns with arr
    p total_len

    arr_a = a.chars
    arr_b = b.chars

    p arr_a
    p arr_b

    bin = ["0"]
    f = []

    for i in (total_len).downto(0)
        puts "working on.."+i.to_s
        a = arr_a[i]
        b = arr_b[i]

        puts "binary num = " + bin[0]
        sum = a.to_i + b.to_i + bin[0].to_i #either 0,1,2,3

        p "sum = "+sum.to_s

        if i == 0
            if sum == 0
                puts "0"
                bin[0] = "0"
                f << 0
            end

            if sum == 1
                puts "1"
                bin[0] = "0"
                f << 1
            end

            if sum == 2
                puts "10"
                bin[0] = "10"
                f << 10
            end

            if sum == 3
                puts "11"
                bin[0] = "11"
                f << 11
            end

        else
            if sum == 0
                puts "0"
                bin[0] = "0"
                f << 0
            end

            if sum == 1
                puts "1"
                bin[0] = "0"
                f << 1
            end

            if sum == 2
                puts "0"
                bin[0] = "1"
                f << 0
            end

            if sum == 3
                puts "1"
                bin[0] = "1"
                f << 1
            end 
        end
    end
    puts "outside loop"
    f = f.reverse!
    f = f.join('')
    puts f

end

a = "100"
b = "110010"

add_binary(a,b)
