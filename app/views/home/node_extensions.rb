module Sexp
$i = 0
class Word < Treetop::Runtime::SyntaxNode
    def to_array
      return self.text_value
    end
  end

class Time < Treetop::Runtime::SyntaxNode
    def to_array
      return self.text_value.to_f
    end
end

  class Symbol < Treetop::Runtime::SyntaxNode
      def to_array
        return self.text_value.to_sym
      end
    end
  
  class StringLiteral < Treetop::Runtime::SyntaxNode
    def to_array
      return eval self.text_value
    end
  end
  
  class FloatLiteral < Treetop::Runtime::SyntaxNode
    def to_array
      return self.text_value.to_f
    end
  end
 
class IntegerLiteral < Treetop::Runtime::SyntaxNode
    def to_array
      return self.text_value.to_i
    end
  end

 
  class Identifier < Treetop::Runtime::SyntaxNode
    def to_array
      return self.text_value.to_sym
    end
  end
  
  class Expression < Treetop::Runtime::SyntaxNode
      
      def to_array
        
      $i= $i+1
      return self.elements[0].to_array.unshift('Sensor Read ' +  $i.to_s )
      # return self.elements[0].to_array.unshift(1,to_array.delete(3) )

    end
  end

class Insert < Treetop::Runtime::SyntaxNode
  def to_array
    return ",".text_value
  end
end

class Line < Treetop::Runtime::SyntaxNode
  def to_array
  return self.text_value
  end
end

  class Body < Treetop::Runtime::SyntaxNode
    def to_array
     return self.elements.map.with_index{|x,i| x.to_array} #.insert(1, to_array.delete(3))}

    end
  end

end

