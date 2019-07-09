# Ruby Map Practice

![ARRAYS](https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQVWBMdo6Ac3moY3tPnzMsFVnOscOR03SxkZ4sPGGhsWoQrYMPZ9g)

## 1. Return an array of each Student's full name, upper-cased

```rb

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

```

### Answer

upper_case_full_names = [students[0][:first_name].upcase + " "+ students[0][:last_name].upcase , students[1][:first_name].upcase + " "+ students[1][:last_name].upcase , students[2][:first_name].upcase + " "+ students[2][:last_name].upcase]

  
p upper_case_full_names
...
AHMED AL-BAHRANI
REEM ALHARBI
MANSOUR ALMOHSEN
```

## 2. Find the first order for each user

```rb

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

```

### Answer

first_order_for_each_user = [ users[0][:orders][0], users[1][:orders][0] ,users[2][:orders][0]]

p first_order_for_each_user

{:description=>"a bike"}
{:description=>"bees"}
{:description=>"a MacBook"}

```

## 3. Find the average amount spent on coffee, per transaction, for each person

```rb

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

```

### Answer


p (people[0][:transactions][0][:amount]+people[0][:transactions][2][:amount])/2
p (people[1][:transactions][2][:amount])/1
p (people[2][:transactions][0][:amount]+people[2][:transactions][2][:amount])/2

{:name=>"Ahlam", :coffee_average=>5.93}
{:name=>"Sulaiman", :coffee_average=>4.43}
{:name=>"Norah", :coffee_average=>37.28666666666667}

```

## 4. Find the most expensive product for each store, with the store name:

```rb

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

```

### Answer

p a= (stores[0][:products][0][:price])
p b=(stores[0][:products][1][:price])
if a > b
  most_expensive_products_by_store = a
else most_expensive_products_by_store = b

 end

  p c= (stores[1][:products][0][:price])
  p d=(stores[1][:products][1][:price])
  if c > d
    most_expensive_products_by_store = c
  else most_expensive_products_by_store = d

    # p most_expensive_products_by_store
  end

    p e= (stores[2][:products][0][:price])
    p f=(stores[2][:products][1][:price])
    if e > f
      most_expensive_products_by_store = e
    else most_expensive_products_by_store = f

      # p most_expensive_products_by_store
    end


        p most_expensive_products_by_store


{:store_name=>"Jarir", :most_expensive_product=>{:description=>"Titanium", :price=>9384.33}}
{:store_name=>"Tamimi", :most_expensive_product=>{:description=>"Silver", :price=>654.44}}
{:store_name=>"Souq", :most_expensive_product=>{:description=>"Sapphire", :price=>899.33}}

```

# Bonus

Write an infinite loop that will make you add all the your friends in the students list and after each add will ask if you want to quit the loop (yes/no) if the user choose no print all the students array

### Answer

```

add a student
Asma Baabdullah
Do you want to continue ? (y/n)
y
add a student
Fajr Albakiri
Do you want to continue ? (y/n)
y
add a student

```
