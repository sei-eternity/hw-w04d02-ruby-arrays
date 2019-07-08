require 'pry'
# 1. Return an array of each Student's full name, upper-cased:

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

 upper_case_full_names = students.map do |a|
   puts "#{a[:first_name].upcase} #{a[:last_name].upcase}"
   
  end


# 2. Find the first order for each user:



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
 puts "#{a[:orders].first }"
 end

 # 3. Find the average amount spent on coffee, per transaction, for each person:
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
coffee_average_per_person = people.map do |a| 
    ave = 0
    count = 0
    a[:transactions].map do |trans| 
        if trans[:type] == 'COFFEE'
            ave += trans[:amount]
            count+=1
        end

    end
    puts "#{a[:name]} #{ave /= count } "
end

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

most_expensive_products_by_store = stores.map do |a| 

    des = ''
    max = 0

    a[:products].map do |product| 
    
        if product[:price] > max
            des = product[:description]
            max = product[:price]
        end

    end
    puts " #{a[:store_name]}, most_expensive_product: #{des}, price: #{max}"

end
