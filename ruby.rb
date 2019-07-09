# students = [
#     {
#         first_name: 'Ahmed',
#         last_name: 'Al-Bahrani'
#     },
#     {
#         first_name: 'Reem',
#         last_name: 'AlHarbi',
#     },
#     {
#         first_name: 'Mansour',
#         last_name: 'Almohsen',
#     }
#   ]
  
# upper_case_full_names = []

# students.map do |elem|
#     str = (elem[:first_name] + " " +elem[:last_name])
#     str.upcase!
#     upper_case_full_names.push(str)
# end

# puts upper_case_full_names

#######################################

# users = [
#     {
#         name: 'Hanan',
#         orders: [
#             {
#                 description: 'a bike'
#             }
#         ]
#     },
#     {
#         name: 'Abdulrahman',
#         orders: [
#             {
#                 description: 'bees'
#             },
#             {
#                 description: 'fishing rod'
#             }
#         ]
#     },
#     {
#         name: 'Turki',
#         orders: [
#             {
#                 description: 'a MacBook'
#             },
#             {
#                 description: 'The West Wing DVDs'
#             },
#             {
#                 description: 'headphones'
#             },
#             {
#                 description: 'a kitten'
#             }
#         ]
#     }
#   ]
  
#   first_order_for_each_user = []

#   users.map do |val|
#     first_order_for_each_user.push(val[:orders][0])
#   end

# puts first_order_for_each_user
####################################

# Last one is not running
# people = [
#     {
#         name: 'Ahlam',
#         transactions: [
#             {
#                 type: 'COFFEE',
#                 amount: 7.43
#             },
#             {
#                 type: 'TACOS',
#                 amount: 14.65
#             },
#             {
#                 type: 'COFFEE',
#                 amount: 4.43
#             }
#         ]
#     },
#     {
#         name: 'Sulaiman',
#         transactions: [
#             {
#                 type: 'BIKES',
#                 amount: 800.00
#             },
#             {
#                 type: 'TACOS',
#                 amount: 14.65
#             },
#             {
#                 type: 'COFFEE',
#                 amount: 4.43
#             }
#         ]
#     },
#     {
#         name: 'Norah',
#         transactions: [
#             {
#                 type: 'COFFEE',
#                 amount: 7.43
#             },
#             {
#                 type: 'COFFEE',
#                 amount: 100.00
#             },
#             {
#                 type: 'COFFEE',
#                 amount: 4.43
#             }
#         ]
#     }
#   ]
  
  
#   coffee_average_per_person = []

#   people.map do |val|
#     # coffee_average_per_person.push(val[:transactions]([:type]='coffee'))
#     val.each do |tran|
#         sum = 0
#         count
#         if tran.type == 'COFFEE'
#             coffee_average_per_person.push(tran.amount)
#             sum += tran.amount
#             count++
#         end 
#   end
# end


#   puts coffee_average_per_person