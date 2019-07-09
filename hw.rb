
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
  
  uppercase = students.map do |a|
    caps_val = "#{a[:first_name]} #{a[:last_name]}"
    caps_val.upcase
  end 
  puts uppercase
  
# # # # # # # # # # # # # # # # # # # # # # 

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
  
  first_order = users.map do |a|
  order= "#{a[:orders].first}"
  order
   end 
   puts first_order
  
 # # # # # # # # # # # # # # # # # # # # # # 


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


# Find the most expensive product for each store, with the store name:

expensive_store = stores.map do |a|

product_price = a[:products].map do |p|
      p[:price]
end

info = {:store_name=> a[:store_name], :most_expensive_product=>{:description=> a[:products][product_price.index(product_price.max)][:description] , :price=> product_price.max}}

end
puts expensive_store

# # # # # # # # # # # # # # # # # # # # # # 

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


coffee = people.map do |a|
ave_coffee =0
count =0
    a[:transactions].map do |t|
        if t[:type] == 'COFFEE'
             ave_coffee +=(t[:amount])
             count+=1
        end
    end

puts "#{a[:name]} #{ave_coffee /= count } "
end

puts coffee
