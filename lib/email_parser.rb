require 'pry'
# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
  attr_accessor :email_list
  def initialize(email_list)
    @email_list = email_list
  end
  
  def parse
    # found article on stackoverflow that talked about using split with regex
    seperated_list = @email_list.split(/[\s,?]/) # seperate by ',' or ' '
    seperated_list.select {|email| email.length != 0}.uniq # eliminate any empty array items
  end
end