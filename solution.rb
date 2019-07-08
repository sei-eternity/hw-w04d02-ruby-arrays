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
#git values and join it togther==
git_value = students.map do |studen|
     studen.values.join(" ")
end
#make it upcase==
upper_case_full_names = git_value.map do |name|
        p name.upcase
end
#print the names==
for full_name in upper_case_full_names do
    p full_name
end

#===========================
#===========================

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


users.each do |name|
    #push the first description to the array
    first_order_for_each_user.push(name[:orders].first)
end

#===========================
#===========================

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
#loop through each name
people.each do |name|
    #for each name set the
    total = 0
    cofee = 0
    avr = 0
    #loop through each transactions inside a name
     name[:transactions].each do |typ|
        #find type "coffee" and git the amount from it
        if typ[:type] == "COFFEE"
            #add coffee counter to git the average
            cofee +=1
            amountt = typ[:amount]
            #adding all amounts of coffee to total
            total += amountt
            # gitting the average
             avr = total / cofee
        end # end of if statment
    end # end of inner loop

    #push the name of persone and the average to  coffee_average array
    coffee_average_per_person.push({name: name[:name], coffee_average: avr})
end # end of big loop
#===========================
#===========================
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
#loop in stores
stores.each do |store|
    #for each store create these==
    price_array = []
    description_array = []
    name_of_higer_product = ""
    hiegher_price = 0.0
    #loop inside each product inside stores
    store[:products].map do |product|
        #gitting  prices and  names
        all_price = product[:price]
        prudct_name = product[:description]
        #pushing price to price array
        price_array.push(all_price.to_f)
        #pushing product name to description array
        description_array.push(prudct_name)
    end # end of inner loop
    #check what price is higher and make it the heigher price and get the product name as well
    if price_array[0] > price_array[1]
        hiegher_price = price_array[0]
        name_of_higer_product = description_array[0]
    else
        hiegher_price = price_array[1]
        name_of_higer_product = description_array[1]
    end
    #push the result to the givin array
    most_expensive_products_by_store.push({store_name: store[:store_name], most_expensive_product: {description: name_of_higer_product, price: hiegher_price}})
    
end

#===========================
#===========================

puts "Wlecom to the friends list "
#make global variable
Student_list = []

def add_friend
    p "add a student"
    student_name = gets.chomp
    #push the name to student list
    Student_list.push(student_name)
end
    
def menu
        p "Do you want to add a friend ? (y/n)"
        gets.chomp
end
         
user_choise = menu

until user_choise == "n"
    #keep calling add friend untl user click n
    case user_choise
    when "y" then add_friend
    end
    user_choise = menu
end
#print the student list
p "Thank you here is your friends list #{Student_list}"