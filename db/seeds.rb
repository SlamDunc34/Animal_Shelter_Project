require_relative( '../models/animal.rb' )
require_relative( '../models/owner.rb' )
require_relative( '../models/adoption.rb' )
require('pry-byebug')



Adoption.delete_all
Owner.delete_all
Animal.delete_all



animal1 = Animal.new({
  'name' => "The Danger",
  'breed' => 'Pomeranian',
  'admission_date' => '2016-08-24',
  'adoptable' => 'true',
  'issues' => 'eats grannies'
})

animal1.save

animal2 = Animal.new({
  'name' => "Thundercock",
  'breed' => 'Great Dane',
  'admission_date' => '2011-04-12',
  'adoptable' => 'true',
  'issues' => 'rules with an iron fist'
})

animal2.save

animal3 = Animal.new({
  'name' => "Beans",
  'breed' => 'Terrier',
  'admission_date' => '1972-03-30',
  'adoptable' => 'true',
  'issues' => 'likes to poo on the bus'
})

animal3.save

animal4 = Animal.new({
  'name' => "Steven",
  'breed' => 'Bulldog',
  'admission_date' => '2008-12-06',
  'adoptable' => 'false',
  'issues' => 'thief'
})

animal4.save

owner1 = Owner.new({
  'name' => "Macho Man Randy Savage",
  'address' => '12 Road, Motherwell',
  'details' => 'Randy would like an enormous dog as he is concerned that people think he is not macho'
})

owner1.save

owner2 = Owner.new({
  'name' => "Trumplestiltskin",
  'address' => '3 Place, Dunfermline',
  'details' => 'The Donald is interested in adopting a small dog to suit his small hands. He would also prefer a dog that holds deep resentment for the working class'
})

owner2.save

owner3 = Owner.new({
  'name' => "David Mowat MP",
  'address' => '87 Lane, Nairn',
  'details' => 'As part of his job as Parliamentary Under Secretary of State at the Department of Health, David must ensure that decent social care is provided to the elderly and disabled. David is looking for a dog that helps relieve some of his stress at work'
})

owner3.save

owner4 = Owner.new({
  'name' => "Mary",
  'address' => "54 avenue, Kirkwall",
  'details' => 'Mary is an elderly pensioner who is not interested in dogs and signed up to the website by mistake. She has no idea how close she came to death'
})

owner4.save

binding.pry 
nil