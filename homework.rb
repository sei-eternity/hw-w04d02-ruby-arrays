# 1
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
  
upper_case_full_names = students.map {|student| student.values.join(' ').upcase}

# 2
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
  
first_order_for_each_user = users.map {|user| user[:orders].first}


# 3
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
    total = 0
    count = 0
    person[:transactions].each do |transaction|
        if transaction[:type] == "COFFEE"
            total += transaction[:amount]
            count += 1
        end
    end
    coffee_average_per_person.push({name: person[:name], coffe_average: total / count})
end




     

# 4
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
    price = 0
    desc = ""
    store[:products].each do |product|
        if product[:price] > price
            price = product[:price]
            desc = product[:description]
        end
    end
    most_expensive_products_by_store.push({store_name: store[:store_name], most_expensive_product: {description: desc, price: price}})
end

 # Bonus


  students = []

  loop do
    puts "add a student"
    student = gets.chomp 
    students.push(student)

    puts "Do you want to continue ? (y/n)"
    cont = gets.chomp
    if cont == "n"
        students.each {|student| p "#{student}"}
        break
    end
    
end





