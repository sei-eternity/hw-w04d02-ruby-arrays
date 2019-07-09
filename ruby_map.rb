# uppercase function using aray of hashs using each and map 
def upper_case_full_names 

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
    
    
    students.each do |a|   # loop through each hash in array
      uppercase=  a.map do |key,val| #loop and upcase each value inside hashs resulting array
         val.upcase
      end
      puts uppercase.join(" ")
    end
      
end
    
    upper_case_full_names


#Find the first order for each user
    def first_order_for_each_user
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
        users.each do |a| 
        a.each do |key, val|
        if (key.to_s == "orders") # check if the key is orders then get the description 
        value = a.dig(:orders,0) #Extracts the nested value specified by the sequence of key objects by calling dig at each step and we put zero we want only the first
        puts "#{value} "
        
        end 
        end
        end
        end
        first_order_for_each_user


def coffee_average_per_person 
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
          
        end         
          coffee_average_per_person = []