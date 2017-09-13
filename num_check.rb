class NumCheck
  
  def method_missing(method_name, *args, &block)
    @numString = method_name[/\d+/].to_s 
    @string = method_name[5..method_name.length]
    @lengthOfNum = @numString.length
    if @numString !=@string
      return "invalid number"
    else
      if @lengthOfNum == 11
        if @numString.start_with? '0484' 
           return "valid number"
        else
           return "invalid number"
        end
        
      elsif @lengthOfNum == 10
        if (@numString.start_with? '7')||(@numString.start_with? '8' )|| 
                                              (@numString.start_with? '9')
           return "valid number"
        else
           return  "invalid number"
        end
      else
        return "invalid number"        
      end            
    end
  end
end