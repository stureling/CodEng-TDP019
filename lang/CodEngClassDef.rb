#!/usr/bin/env ruby

=begin
TODO PRIORITY LIST

1. Scopes and function def
2. loops and function call
3. everything else
=end

class CEObject
    def name
    end
end

class CENil < CEObject
end

class CEVariable < CEObject
  def initialize(name, expr)
    @name = name
    @expr = expr
  end

  def assess(scope)
  end

  def value
    return expr.assess(scope)
  end
end

class CENumber < CEObject
end

class CEInteger < CENumber
  attr_reader :value
  def initialize(num)
    @value = num.to_i
  end

  def assess(scope)
    return self
  end
end

class CEFloat < CENumber
  attr_reader :value
    def initialize(num)
	    @value = num.to_f
    end
    def assess(scope)
        return self
    end
end

class CEString < CEObject
  def initialize(string)
    @string = string
  end

  def assess(scope)
    return @string
  end
end

class CEBool < CEObject
  def initialize(bool_sym)
    if bool_sym == :true
      @boolvalue = true
    elsif bool_sym == :false
      @boolvalue = false
    end
  end

  def assess(scope)
    return self
  end
  
  def value
    return @boolvalue
  end

end

#x = CEBool.new(:true)
#puts x.assess(scope)
