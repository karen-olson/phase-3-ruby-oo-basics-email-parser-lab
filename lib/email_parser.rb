require 'pry'

# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into an array of 
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
    def initialize(emails_string)
        @emails_string = emails_string
    end

    def parse
        # Delimiter will either be ", " or " ".
        # Split by optional comma + required whitespace.
        # No [] because you want     ,? && \s   NOT   ,? || \s
        @split_emails = @emails_string.split(/,?\s/).uniq
    end


end