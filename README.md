
## 1. Return an array of each Student's full name, upper-cased
### Answer
students = [
  {first_name: 'Ahmed', last_name: 'Al-Bahrani'},
  {first_name: 'Reem',last_name: 'AlHarbi',},
  {first_name: 'Mansour',last_name: 'Almohsen',}
]



git_value = students.map do |studen|
    studen.values.join(" ")
end


upper_case_full_names = git_value.map do |name|
       p name.upcase
end


```rb
AHMED AL-BAHRANI
REEM ALHARBI
MANSOUR ALMOHSEN
```

## 2. Find the first order for each user
### Answer
users = [
  { name: 'Hanan', orders: [
          { description: 'a bike' }]},

  { name: 'Abdulrahman', orders: [
          { description: 'bees' },
          { description:'fishing rod' }]},
  { name: 'Turki', orders: [
          { description: 'a MacBook'  },
          { description: 'The West Wing DVDs' },
          { description: 'headphones' },
          { description: 'a kitten' }]}
        ]
        
        first_order_for_each_user = users.map { |user| user[:orders].first }
```rb

{:description=>"a bike"}
{:description=>"bees"}
{:description=>"a MacBook"}

```

## 3. Find the average amount spent on coffee, per transaction, for each person
### Answer
people = [
{name: 'Ahlam',
    transactions: [
        {type: 'COFFEE', amount: 7.43 },
        {type: 'TACOS', amount: 14.65 }, 
        {type: 'COFFEE',amount: 4.43 }
    ] },

{name: 'Sulaiman',
    transactions: [
        {type: 'BIKES', amount: 800.00 },
        { type: 'TACOS', amount: 14.65
        },
        { type: 'COFFEE', amount: 4.43 }
    ] },
{  name: 'Norah',
    transactions: [
        {  type: 'COFFEE', amount: 7.43 },
        { type: 'COFFEE',  amount: 100.00 },
        { type: 'COFFEE', amount: 4.43 }
    ] }
]

coffee_average_per_person = people.map do |person|
    average = 0
    coffee = 0

    person[:transactions].each do |transaction|
        if transaction[:type] == "COFFEE"
            average += transaction[:amount]
            coffee += 1
        end
    end

    average /= coffee
    { name: person[:name],coffee_average: average}
end
```rb

{:name=>"Ahlam", :coffee_average=>5.93}
{:name=>"Sulaiman", :coffee_average=>4.43}
{:name=>"Norah", :coffee_average=>37.28666666666667}

```

## 4. Find the most expensive product for each store, with the store name:
### Answer

stores = [
    {
        store_name: 'Jarir',
        products: [
            {description: 'Titanium',  price: 9384.33 },
            { description: 'Gold',  price: 345.54 }
        ] },
    {
        store_name: 'Tamimi',
        products: [
            { description: 'Silver', price: 654.44 },
            { description: 'Ruby', price: 323.43 }
        ]  },
    {  store_name: 'Souq',
        products: [
            { description: 'Opal', price: 345.43 },
            { description: 'Sapphire', price: 899.33 }
        ] }
  ]

most_expensive_products_by_store = stores.map do |store|
    prices = store[:products].map do |product|
        product[:price]
    end
    { sotre_name: store[:store_name],
        most_expensive_product: prices.max }
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




```rb

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
