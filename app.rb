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

  students.length.times do |i|
    upper_case_full_names.push( students[i][:first_name].upcase + " "+ students[i][:last_name].upcase) ) 
    end 
   
    # ======================================
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

      users.length.times do |i|
          first_order_for_each_user.push(users[i][:orders].first)  
             end 
            #  =====================================================
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
                 coffee_average_per_person = people.map do |person|
                    average = 0
                    number_of_coffee = 0
                    person[:transactions].each do |i|
                        if i[:type] == "COFFEE"
                            average += i[:amount]
                            number_of_coffee += 1
                        end
                    end
                
                    average /= number_of_coffee
                
                    {
                        name: person[:name],
                        coffee_average: average
                    }
                end

                # ======================================================



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

                    prices = store[:products].map do |price|
                    price[:price]
                    end
                    product = prices.index(prices.max)
                    price = prices.max
                    
                    {:store_name=> store[:store_name], 
                    :most_expensive_product=>, price}