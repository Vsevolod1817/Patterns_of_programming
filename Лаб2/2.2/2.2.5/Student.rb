require_relative 'Student_super.rb'

class Student < Student_super

  attr_accessor :surname, :name, :father_name


  def initialize(surname:, name:, father_name:, id: nil, phone: nil, telegram: nil, email: nil, git: nil)
    self.id = id
    self.surname=surname
    self.name=name
    self.father_name=father_name
    self.phone = phone
    self.telegram = telegram
    self.email = email
    self.git = git
    validate
  end
  
  # Метод Validate

  def validate
    validate_git || validate_contacts
  end

  def validate_git
    raise ArgumentError, "Неправильный формат гита" unless self.class.right_git?(@git)
  end

  def validate_contacts
    raise ArgumentError, "Нужно предоставить хотя бы одно средство связи" if (@telegram==nil && @phone==nil && @email==nil)
  end

  def to_s
    "id: #{@id}\nФамилия: #{@surname}\nИмя: #{@name}\nОтчество: #{@father_name}\nТелефон: #{@phone}\nТелеграм: #{@telegram}\nПочта: #{@email}\nГит: #{@git}"
  end

  def set_contacts(phone: nil, telegram: nil, email: nil)
    self.phone = phone if (phone!=nil)
    self.telegram = telegram if (telegram!=nil)
    self.email = email if (email!=nil)
  end

  def get_Info
    "ФИО: #{@surname} #{@name[0]}.#{@father_name[0]}, Телефон: #{@phone}, Телеграм: #{@telegram}, Почта: #{@email}"
  end
end
