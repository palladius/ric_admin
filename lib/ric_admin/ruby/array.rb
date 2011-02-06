Array.class_eval do
  def is_a_special_hash?
    true
  end
end


class ::Array
  def names
    map{|x| x.name}
  end
  def ids
    map{|x| x.id}
  end
  
  # I love this! Like: [ 1 , 2 , 3 ]
  def to_s
    "[ "+ self.join(', ') +" ]"
  end
end

