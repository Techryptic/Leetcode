# @param {Integer[]} a
# @return {Integer[]}

#Leetcode Practice using Ruby.

=begin
https://leetcode.com/problems/sort-array-by-parity/

Given an array A of non-negative integers, return an array consisting of all the even elements of A, followed by all the odd elements of A.

You may return any answer array that satisfies this condition.

 

Example 1:

Input: [3,1,2,4]
Output: [2,4,3,1]
The outputs [4,2,3,1], [2,4,1,3], and [4,2,1,3] would also be accepted.

 

Note:

    1 <= A.length <= 5000
    0 <= A[i] <= 5000



=end
def sort_array_by_parity(a)

    even = []
    odd = []

    a.each { |i|
        if i.even?
            even << i
        end
        if i.odd?
            odd << i
        end
    }
    even = even.sort
    odd = odd.sort
    even.concat odd #merge list without another set of brackets.
    p even
end

a = [3,1,2,4]
sort_array_by_parity(a)
