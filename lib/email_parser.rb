class EmailAddressParser 
    attr_accessor :csv_emails
    
    def initialize(csv_emails)
      @csv_emails = csv_emails
    end 
  
    def parse 
      parsed_array = @csv_emails.split.collect do |address|
        address.split(",") 
      end
      parsed_array.flatten.uniq
    end 
  end 
