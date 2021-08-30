# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser

  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    array_of_emails = @emails.split(',')
    if array_of_emails.is_a? String
      array_of_emails = array_of_emails.split(' ')
    else
      array_of_emails = array_of_emails.map{ |emails| emails.split(' ') }.flatten
    end
    array_of_emails = array_of_emails.reject.with_index(1) do |email, i|
      array_of_emails[i...array_of_emails.length].include?(email)
    end
    array_of_emails
  end

end