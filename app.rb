
#
#
# Uppercase full names names
#
#

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
  
  upper_case_full_names = students.map do |student|
    "#{student[:first_name].upcase} #{student[:last_name].upcase}"
  end


#
#
# First order
#
#


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

first_order_for_each_user = users.map { |user| user[:orders].first }

#
#
# Average per person
#
#


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


coffee_average_per_person = people.map do |person|
    average = 0
    num_of_coffee = 0

    person[:transactions].each do |transaction|
        if transaction[:type] == "COFFEE"
            average += transaction[:amount]
            num_of_coffee += 1
        end
    end
    
    average /= num_of_coffee
    
    {
        name: person[:name],
        coffee_average: average
    }
end


#
#
# Most Expensive
#
#

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
  
most_expensive_products_by_store = stores.map do |store|
    prices = store[:products].map do |product|
        product[:price]
    end
    {
        sotre_name: store[:store_name],
        most_expensive_product: prices.max
    }
end

puts ""
puts "Uppercase names:"
upper_case_full_names.each { |name| puts name }

puts ""
puts "First order for each user:"
first_order_for_each_user.each { |order| puts order}

puts ""
puts "Coffe average per person:"
coffee_average_per_person.each { |person| puts person }

puts ""
puts "Most expensive products by store:"
most_expensive_products_by_store.each { |store| puts store}

puts ""
puts ""
puts "Adding students list"


#
#
# Bonus student list
#
#

students_list = []
user_choice = ''

until user_choice == 'n'
    puts "Add a student:"
    students_list.push(gets.chomp)
    
    user_choice = ''
    until user_choice =="y" || user_choice == "n"
        puts "Do you want continue? (y/n)"
        user_choice = gets.chomp
    end
end

puts ""
puts "Students list:"
students_list.each { |student| puts student }