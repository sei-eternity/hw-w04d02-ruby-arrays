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
students.each do |name|

    upper_case_full_names.insert(

        "#{name[:first_name].upcase} #{name[:last_name].upcase}")
end

////////////////////////////////////////////////////////////////////////////////////////

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

users.each do |nameorders| 

    first_order_for_each_user.insert(name[:orders]. description)

    end


    ////////////////////////////////////////////////////////////////

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

people.each do |element|  
    averagecoffe = 0
    count = 0
    element[:transactions].each do |types|

        if types[:type] == "COFFEE"

        averagecoffe = averagecoffe + types[:amount].chomp

        count = count + 1
        end 
    end

    averagecoffe = averagecoffe / count


coffee_average_per_person.insert({name: "#{element[:name]}" , averagecoffe1: "#{averagecoffe}"})
 
end 


///////////////////////////////////////////////////////////////////



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

stores.each do |element|

    maxiumum = 0

    description1 = ""

    element[:price].each do [item] 

        if item[:products] > maxiumum

            maxiumum = item[:price]
            description1 = item[:description]

        end 

    end 
    most_expensive_products_by_store.insert({description: "#{description1}" , store_name: "#{item[:store_name]}" , price: "#{maxiumum}" }} )

end 