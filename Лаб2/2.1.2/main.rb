require_relative 'Student.rb'

student1 = Student.new(surname = 'Епифанцев',
                       name = 'Всеволод',
                       father_name = 'Александрович',
                       id:'1',
                       phone:'+79064796878',
                       telegram:'@vzevolodka',
                       email:'seva.epifantsev@gmail.com',
                       git:'https://github.com/Vsevolod1817')

puts student1.to_s
