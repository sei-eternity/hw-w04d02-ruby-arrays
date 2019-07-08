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
<!-- array.map(&:upcase)
=> { "Ahmed", "}  -->
student.name.map(&:name).map(&:upcase)
=> { "Ahmed","'Al-Bahrani"}
=> {"Reem","AlHarbi"}
=> {"Mansour","Almohsen"}
end 

<!-- ```rb
AHMED AL-BAHRANI
REEM ALHARBI
MANSOUR ALMOHSEN
``` -->

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

3.times { |i| puts users[i][:orders][0] 



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
Ahlam = [7.43,14.65,4,43]
ahlam.sum.fdiv(arr.size)
Sulaimam = [800,14.65,4,43]
sulaiman.sum.fdiv(arr.size)
Norah= [7.43,100,4.43]
norah.sum.fdiv(arr.size)
end



```rb

# {:name=>"Ahlam", :coffee_average=>5.93}
# {:name=>"Sulaiman", :coffee_average=>4.43}
# {:name=>"Norah", :coffee_average=>37.28666666666667}

# ```

4. Find the most expensive product for each store, with the store name:



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

most_expensive_products_by_store = stores.map do |arr_store|
item_price = arr_store[products].max_by do |item|
item[price]
end
{

  name: arr_store[store_name],
  description:item_price[description],
  expensive_products: item_price[price]
}


```rb

# {:store_name=>"Jarir", :most_expensive_product=>{:description=>"Titanium", :price=>9384.33}}
# {:store_name=>"Tamimi", :most_expensive_product=>{:description=>"Silver", :price=>654.44}}
# {:store_name=>"Souq", :most_expensive_product=>{:description=>"Sapphire", :price=>899.33}}

# ```

