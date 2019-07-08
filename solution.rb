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
        #fide type "coffee" and git the amount from it
        if typ[:type] == "COFFEE"
            #add coffee counter to git the average
            cofee +=1
            amountt = typ[:amount]
            total += amountt
             avr = total / cofee
        end
    end
    #push the name of persone and the average to  coffee_average array
    coffee_average_per_person.push({name: name[:name], coffee_average: avr})
end
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
qw = []
stores.each do |store|
    price_a = []
    hi_price = 0.0
    
    store[:products].map do |product|
        all_price = product[:price]
        price_a.push(all_price.to_f)
    end
    
    if price_a[0] > price_a[1]
        hi_price = price_a[0]

    else
        hi_price = price_a[1]
    end

    qw.push({store_name: store[:store_name], most_expensive_product: {price: hi_price}} )
    
end