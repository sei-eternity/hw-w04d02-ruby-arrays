
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

{:store_name=> a[:store_name], :most_expensive_product=>{:description=> a[:products][product_price.index(product_price.max)][:description] , :price=> product_price.max}}

end
puts expensive_store

# # # # # # # # # # # # # # # # # # # # # # 

