#########  1  #########
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


# AHMED AL-BAHRANI
# REEM ALHARBI
# MANSOUR ALMOHSEN


#########  2  #########
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
first_order_for_each_user = users.map {|i| i[:orders].first}


# {:description=>"a bike"}
# {:description=>"bees"}
# {:description=>"a MacBook"}

#########  3  #########
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

people.each do |person|
    sum = 0
counter = 0
    person[:transactions].each do |transaction|
        if transaction[:type] == 'COFFEE'
            sum += transaction[:amount]#the vlue the coffe key
            counter += 1 #to complete all array
                end
 end
# add it to the array as hash 
    coffee_average_per_person.push({name: person[:name], coffe_average: sum /counter})#count the avg sum/counter
end


# {:name=>"Ahlam", :coffee_average=>5.93}
# {:name=>"Sulaiman", :coffee_average=>4.43}
# {:name=>"Norah", :coffee_average=>37.28666666666667}

#########  4  #########
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

stores.each do |store|
    #intial vlaues for each store 
    price = 0
    describe = ""
    store[:products].each do |item|
        if item[:price] > price #cmpare and store largest amount 
            price = item[:price]
            describe = item[:description] #to get the description for the largest slected item 
        end
    end
    # push it as hash 
    most_expensive_products_by_store.push({store_name: store[:store_name], most_expensive_product: {description: desc, price: price}})
end


# {:store_name=>"Jarir", :most_expensive_product=>{:description=>"Titanium", :price=>9384.33}}
# {:store_name=>"Tamimi", :most_expensive_product=>{:description=>"Silver", :price=>654.44}}
# {:store_name=>"Souq", :most_expensive_product=>{:description=>"Sapphire", :price=>899.33}}
