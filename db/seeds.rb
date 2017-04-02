require_relative( '../models/animal.rb' )
require_relative( '../models/owner.rb' )
require_relative( '../models/adoption.rb' )
require('pry-byebug')



Adoption.delete_all
Owner.delete_all
Animal.delete_all



animal1 = Animal.new({
  'name' => "The Danger",
  'species' => 'Dog'
})

animal1.save

animal2 = Animal.new({
  'name' => "Thundercock",
  'species' => 'Lion'
})

animal2.save

animal3 = Animal.new({
  'name' => "Beans",
  'species' => 'Can_of_beans'
})

animal3.save

animal4 = Animal.new({
  'name' => "Granny",
  'species' => 'Camel_spider'
})

animal4.save

owner1 = Owner.new({
  'name' => "Joe",
  'address' => '12 Road, Motherwell'
})

owner1.save

owner2 = Owner.new({
  'name' => "Kate",
  'address' => '3 Place, Dunfermline'
})

owner2.save

owner3 = Owner.new({
  'name' => "Barry",
  'address' => '87 Lane, Nairn'
})

owner3.save

owner4 = Owner.new({
  'name' => "Dave",
  'address' => "54 avenue, Kirkwall"
})

owner4.save

binding.pry 
nil