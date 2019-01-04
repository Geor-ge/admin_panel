ranks = ["Blue", "Purple", "Brown", "Black"]

Cohort.create(name: "Dragon's Den", start_date: "2019-01-03", end_date: "2019-05-04")
Cohort.create(name: "Chan's Clan", start_date: "2019-01-03", end_date: "2019-05-04")
Cohort.create(name: "Wushu Warriors", start_date: "2019-01-03", end_date: "2019-05-04")
Cohort.create(name: "Disciples", start_date: "2019-01-03", end_date: "2019-05-04")
Instructor.create(f_name: "Bruce", l_name: "Lee", age: 32, rank: "#{ranks[3]}", salary: 200000, cohort_id: 1)
Instructor.create(f_name: "Jackie", l_name: "Chan", age: 64, rank: "#{ranks[3]}", salary: 100000, cohort_id: 2)
Instructor.create(f_name: "Jet", l_name: "Li", age: 55, rank: "#{ranks[3]}", salary: 100000, cohort_id: 3)
Instructor.create(f_name: "Pai", l_name: "Mei", age: 149, rank: "#{ranks[3]}", salary: 1, cohort_id: 4)
Course.create(name: "The History of Martial Arts", total_hours: 1000)
Course.create(name: "Philosophy", total_hours: 1000)
Course.create(name: "Forms/Katas", total_hours: 1000)
Course.create(name: "Strength & Conditioning", total_hours: 1000)
Course.create(name: "Kickboxing", total_hours: 1000)
Course.create(name: "Wudang Sword", total_hours: 1000)
Course.create(name: "18 Shaolin Weapons", total_hours: 1000)
Course.create(name: "Grappling", total_hours: 1000)


100.times do
  Student.create(f_name: Faker::Name.first_name, l_name: Faker::Name.last_name, age: "#{rand(1..149)}", rank: "#{ranks[rand(0..2)]}", cohort_id: "#{rand(1..4)}")
end
