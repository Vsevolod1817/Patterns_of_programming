class AbstractClass
  def template_method
    step_1
    step_2
    step_3
  end

  def step_1
    raise NotImplementedError, " has not implemented method "
  end

  def step_2
    raise NotImplementedError, " has not implemented method "
  end

  def step_3
    raise NotImplementedError, "has not implemented method "
  end
end

class ConcreteClass < AbstractClass
  def step_1
    puts "Executing step 1"
  end

  def step_2
    puts "Executing step 2"
  end

  def step_3
    puts "Executing step 3"
  end
end

# Использование
concrete_object = ConcreteClass.new
concrete_object.template_method
