# 1. Return an array of each Student's full name, upper-cased
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

i = 0
upper_case_full_names = []
while i < students.length
    p student = "#{students[i][:first_name].upcase} #{students[i][:last_name].upcase}"
    upper_case_full_names.push(student)
    i += 1
end


#-----------------------------------------------------#

# 2. Find the first order for each user
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

users.each do |n|
    p order = n[:orders].first
    first_order_for_each_user.push(order)
end

#-----------------------------------------------------#

# 3. Find the average amount spent on coffee, per transaction, for each person
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
people.each do |n|
    coffee_average = 0
    counter = 0
    n[:transactions].each do |t|
        if t[:type] == "COFFEE"
            counter += 1
            coffee_average = t[:amount]
        end
    end
    coffee_average = coffee_average / counter
    p person = "#{n[:name]}, #{coffee_average}"
    coffee_average_per_person.push(person)
end
#-----------------------------------------------------#

# 4. Find the most expensive product for each store, with the store name:
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

stores.each do |n|
    most_expensive_product = 0
    description = ""

    n[:products].each do |t|
        if most_expensive_product < t[:price]
        most_expensive_product = t[:price]
        description = t[:description]
        end
    end
    p product = "#{n[:store_name]}, #{description}, #{most_expensive_product}"
    most_expensive_products_by_store.push(product)
end

#-----------------------------------------------------#