#!/usr/bin/env 

#HELPER FUNCTIONS
def assert_boolvalue(object)
  if object.class == CEInteger
    if object.value != 0
      return true
    else
      return false
    end
  elsif object.class == CEFloat
    if object.value != 0
      return true
    else
      return false
    end
  elsif object.class == CEBool
    if object.value == true
      return true
    else
      return false
    end
  elsif  object.class == TrueClass
    return true
  elsif  object.class == FalseClass
    return false
  else
    raise "Invalid type #{object}, expected CEBool, 
    CEFloat, CEInteger, TrueClass or FalseClass"
  end
end


#SCOPE
class CEScope
    def initialize(name, parent=nil)
        @name, @parent = name, parent
        @vars = {}
    end

    def add(var)
        @vars[var.name] = var
    end

    def get(var_name)
      if @vars.has_key?(var_name)
          return @vars[var_name]
      elsif @parent != nil
          return @parent.get(var_name)
      end
      raise "Variable '#{var_name.to_s}' not found in current scope"
    end
    
    def root
      #@parent == nil ? return self : return @parent.root
    end

    def assess
      #Probably a print function?
    end
end
