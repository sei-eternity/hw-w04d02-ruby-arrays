p ""
p ""

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
students.each do |element|
    upper_case_full_names.push("#{element[:first_name].upcase} #{element[:last_name].upcase}")
  end

p upper_case_full_names


# ----------------------------------------------------------
p ""
p ""

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

users.each do |element|
    first_order_for_each_user.push(element[:orders].first)
end
p first_order_for_each_user

#-----------------------------------------------------------
p ""
p ""
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

people.each do |item|
    count = 0
    average = 0
    item[:transactions].each do |t|
        # average = 0
        if t[:type] == "COFFEE"
            average += t[:amount].to_f
            count += 1
        end
    end
    average = average / count
    coffee_average_per_person.push({name: "#{item[:name]}", coffee_average: "#{average}"})
end

p coffee_average_per_person

#--------------------------------------------------------
p ""
p ""

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

stores.each do |item|
    max = 0
    desc = ""
    item[:products].each do |i|
        if i[:price] > max
            max = i[:price]
            desc = i[:description]
        end
    end
    most_expensive_products_by_store.push({store_name: "#{item[:store_name]}", most_expensive_product: {description: "#{desc}", price: "#{max}"}})     
end

p most_expensive_products_by_store

p ""
p ''