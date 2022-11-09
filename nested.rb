class RubyOne
  def original
    print "I am grandfather"
  end
end


class RubyTwo < RubyOne
  def originalTwo
    print "I am a father"
  end
end

class RubyThree < RubyTwo
  def originalThree
    print "I am a son"
  end 
end




instance_it = RubyThree.new


instance_it.original
