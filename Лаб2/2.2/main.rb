require_relative 'Student.rb'
require_relative 'Student_short.rb'

student1 = Student.new(surname: 'Епифанцев',
                       name: 'Всеволод',
                       father_name: 'Александрович',
                       id:'1',
                       phone:'+79064796878',
                       telegram:'@vzevolodka',
                       email:'seva.epifantsev@gmail.com',
                       git:'https://github.com/Vsevolod1817')

short_student1=Student_short.from_student(student1)
puts short_student1

"""puts Student.right_number?('+79064796878')

puts Student.right_git?('https://github.com/Vsevolod1817')"""

"""student1.set_contacts(phone:'+79065556878',
                           telegram:'@vzevolllodka',
                           email:'seva.epifaffntsev@gmail.com')"""

"""puts student1.to_s
"""
puts student1.get_Info






