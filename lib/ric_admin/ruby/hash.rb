
Hash.class_eval do
  def is_a_special_hash?
    true
  end
end

class ::Hash
  def qwerty
    'also a hash has a qwerty!'
  end
end