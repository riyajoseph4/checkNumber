

class CallCheck
   
   def initialize(number)
      @number = number
      @lengthOfNum = @number.length
   end
   
   def method_missing(m, *args, &block)
      if @lengthOfNum == 11
         if @number.start_with? '0484' 
            return "valid number"
         else
            return "invalid number"
         end
         
      elsif @lengthOfNum == 10
         if (@number.start_with? '7')||( @number.start_with? '8' )|| (@number.start_with? '9')
            return "valid number"
         else
            return "invalid number"
         end
      else
         return "invalid number"        
      end            
   end
end

