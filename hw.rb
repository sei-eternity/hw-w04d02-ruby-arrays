def students_caps

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

p upper_case_full_names

end
#----------------------------------------------------

def users_pref
users = [
  {
      name: 'Hanan',
      orders: [
          {
              description: 'a bike'
          }
      ]
  },
  {
      name: 'Abdulrahman',
      orders: [
          {
              description: 'bees'
          },
          {
              description: 'fishing rod'
          }
      ]
  },
  {
      name: 'Turki',
      orders: [
          {
              description: 'a MacBook'
          },
          {
              description: 'The West Wing DVDs'
          },
          {
              description: 'headphones'
          },
          {
              description: 'a kitten'
          }
      ]
  }
]

first_order_for_each_user = []

users.each { |i| first_order_for_each_user.push(i[:orders].first)} # add "[:description]" to get only the string

p first_order_for_each_user

end
#----------------------------------------

def people_coffee
people = [
  {
      name: 'Ahlam',
      transactions: [
          {
              type: 'COFFEE',
              amount: 7.43
          },
          {
              type: 'TACOS',
              amount: 14.65
          },
          {
              type: 'COFFEE',
              amount: 4.43
          }
      ]
  },
  {
      name: 'Sulaiman',
      transactions: [
          {
              type: 'BIKES',
              amount: 800.00
          },
          {
              type: 'TACOS',
              amount: 14.65
          },
          {
              type: 'COFFEE',
              amount: 4.43
          }
      ]
  },
  {
      name: 'Norah',
      transactions: [
          {
              type: 'COFFEE',
              amount: 7.43
          },
          {
              type: 'COFFEE',
              amount: 100.00
          },
          {
              type: 'COFFEE',
              amount: 4.43
          }
      ]
  }
]


coffee_average_per_person = []

people.each do |i| 
    total = 0
    count = 0

    i[:transactions].each do |j| 
        if j[:type] == 'COFFEE'
            total += j[:amount]
            count+=1
        end

    end
    coffee_average_per_person.push("#{i[:name]}'s average coffee amount is #{total / count}' ")


end

p coffee_average_per_person

end
#---------------------------------------



def stores_prices
stores = [
  {
      store_name: 'Jarir',
      products: [
          {
              description: 'Titanium',
              price: 9384.33
          },
          {
              description: 'Gold',
              price: 345.54
          }
      ]
  },
  {
      store_name: 'Tamimi',
      products: [
          {
              description: 'Silver',
              price: 654.44
          },
          {
              description: 'Ruby',
              price: 323.43
          }
      ]
  },
  {
      store_name: 'Souq',
      products: [
          {
              description: 'Opal',
              price: 345.43
          },
          {
              description: 'Sapphire',
              price: 899.33
          }
      ]
  }
]

most_expensive_products_by_store = []



stores.each do |i| 

    heighest = ''
    max = 0

    i[:products].each do |j| 
        if j[:price] > max
            heighest = j[:description]
            max = j[:price]
        end

    end
    most_expensive_products_by_store.push("Store name: #{i[:store_name]}, most expensive product: #{heighest}, price: #{max}")


end

p most_expensive_products_by_store
end


def freind_adder
quit = 'y'

students = []

while quit == 'y'
p "add a student"

students.push(gets.chomp)

p 'Do you want to continue ? (y/n)'

quit = gets.chomp
while quit != 'y' && quit != 'n'
    p 'Do you want to continue ? (y/n)'
quit = gets.chomp

end
end

p students

end