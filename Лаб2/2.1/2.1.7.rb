class Student

  attr_accessor :id, :surname, :name, :father_name, :phone, :telegram, :email, :git


  def initialize(surname:, name:, father_name:, id: nil, phone: nil, telegram: nil, email: nil, git: nil)
    @id = id
    @surname=surname
    @name=name
    @father_name=father_name
    @phone = phone
    @telegram = telegram
    @email = email
    @git = git
  end

  def self.right_number?(phone)
    phone.nil? || phone.match?(/^((\+7|7|8)+([0-9]){10})$/)
  end

  def phone=(phone)
    raise ArgumentError, "Неправильный формат номера" unless self.class.right_number?(phone)
    @phone = phone
  end

  def to_s
    "id: #{@id}\nФамилия: #{@surname}\nИмя: #{@name}\nОтчество: #{@father_name}\nТелефон: #{@phone}\nТелеграм: #{@telegram}\nПочта: #{@email}\nГит: #{@git}"
  end
end
