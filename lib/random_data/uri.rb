module RandomData
  
  # Defines methods for random uri generation
  
  module URI
    def http 
      domains = %w(yahoo.com gmail.com privacy.net webmail.com msn.com hotmail.com example.com privacy.net)
      "http://www.#{domains.rand}"
    end
  end
end
