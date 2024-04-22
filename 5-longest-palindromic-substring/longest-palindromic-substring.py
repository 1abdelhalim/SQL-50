class Solution:
    def longestPalindrome(self, s: str) -> str:
        def isPalindrome(string):
            return string == string[::-1]

        max_palindrome = ""
        n = len(s)
        for i in range(n):
            for j in range(i+1, n+1):
                substr = s[i:j]
                if isPalindrome(substr) and len(substr) > len(max_palindrome):
                    max_palindrome = substr

        return max_palindrome
