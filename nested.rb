class RubyOne
  def original
    print "I am grandfather"
  end
end


class RubyTwo
  def originalTwo
    print "I am a father"
  end
end

class RubyThree
  def originalThree
    print "I am a son"
  end 
end


class RubyTwo < RubyOne

end


class RubyThree < RubyTwo 

end

class RubyFour < RubyThree

end

instance_it = RubyFour.new


instance_it.originalTwo
