class Student

  attr_accessor :id, :surname, :name, :father_name, :phone, :telegram, :email, :git


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

  # validation
  def self.right_number?(phone)
    phone.nil? || phone.match?(/^((\+7|7|8)+([0-9]){10})$/)
  end

  def self.right_name?(name)
    name.nil? || name.match?(/\A[a-zA-Zа-яА-Я]+\z/)
  end

  def self.right_telegram?(telegram)
    telegram.nil? || telegram.match?(/\A@[A-Za-z0-9_]{5,32}\z/)
  end

  def self.right_email?(email)
    email.nil? || email.match?(/\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i)
  end

  def self.right_git?(git)
    git.nil? || git.match?(/\Ahttps:\/\/github\.com\/[a-zA-Z0-9]+\z/)
  end

  # сеттеры
  def phone=(phone)
    raise ArgumentError, "Неправильный формат номера" unless self.class.right_number?(phone)
    @phone = phone
  end

  def name=(name)
    raise ArgumentError, "Неправильный формат имени" unless self.class.right_name?(name)
    @name=name
  end

  def telegram=(telegram)
    raise ArgumentError, "Неправильный формат телеграма" unless self.class.right_telegram?(telegram)
    @telegram=telegram
  end

  def email=(email)
    raise ArgumentError, "Неправильный формат почты" unless self.class.right_email?(email)
    @email=email
  end

  def git=(git)
    raise ArgumentError, "Неправильный формат гита" unless self.class.right_git?(git)
    @git=git
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
end
