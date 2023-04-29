class Student

  def initialize(surname, name, father_name, id: nil, phone: nil, telegram: nil, email: nil, git: nil)
    @id = id
    @surname=surname
    @name=name
    @father_name=father_name
    @phone = phone
    @telegram = telegram
    @email = email
    @git = git
  end

  # геттеры

  def getid
    @id
  end

  def getsurname
    @surname
  end

  def getname
    @name
  end

  def getfather_name
    @father_name
  end

  def getphone
    @phone
  end

  def gettelegram
    @telegram
  end

  def getemail
    @email
  end

  def getgit
    @git
  end

  # сеттеры

  def id=(id)
    @id = id
  end

  def name=(name)
    @name=name
  end

  def surname=(surname)
    @surname=surname
  end

  def phone=(phone)
    @phone=phone
  end

  def telegram=(telegram)
    @telegram=telegram
  end

  def email=(email)
    @email=email
  end

  def git=(git)
    @git=git
  end
end
