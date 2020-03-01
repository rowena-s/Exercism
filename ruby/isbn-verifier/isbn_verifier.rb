=begin
Write your code for the 'ISBN Verifier' exercise in this file. Make the tests in
`isbn_verifier_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/isbn-verifier` directory.
=end

class IsbnVerifier
  
  def self.valid?(isbn)
    isbn_arr = isbn.gsub("-","").split("")
    return false if isbn_arr.size != 10
    isbn_arr.map! do |n|
      if n =="X"
        return false unless isbn_arr.last =="X"
        n=10
      else
        n=Integer(n)
      end
    rescue ArgumentError
      return false
    end
    checknums=*(1..10)
    checknums = checknums.reverse
    checksum = 0
    isbn_arr.zip(checknums) do | num, checknum |
      checksum += (num * checknum)
    end
    return checksum % 11 == 0
    end

    def self.to_isbn13(isbn)
      
    end  
end 
