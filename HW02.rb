def student_full_name
students = [
    {
        first_name: 'Ahmed',
        last_name: 'Al-Bahrani'
    },
    {
        first_name: 'Reem',
        last_name: 'AlHarbi',
    },
    {
        first_name: 'Mansour',
        last_name: 'Almohsen',
    }
  ]
  upper_case_full_names = []
  students.each {|i| upper_case_full_names.push("#{i[:first_name].upcase} #{i[:last_name].upcase}")}
    
    puts upper_case_full_names
    
end  

#   for key in students.keys()
#     print "#{first_name} #{last_name}"
# end



# students.each { |key, value|
# student_list = "#{first_name} + #{last_name}"
# # puts student_list.upcase
# end}


# students_values = (students.map {
#     student
#      [student["first_name"], student["last_name"], furn["condition"]]
#     p students_values.upcase
# })
num = 20
puts num.abs()
puts students.sort()