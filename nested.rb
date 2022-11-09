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


class RubyThree < RubyTwo < RubyOne 

end
