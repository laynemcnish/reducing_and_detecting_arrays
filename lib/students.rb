class Students
  def all
    [
      {name: "Bob", age: 10},
      {name: "Sue", age: 10},
      {name: "Greg", age: 15},
      {name: "Amanda", age: 8},
      {name: "Steve", age: 22},
    ]
  end

  def average_age
    age_array = []
    all.each do |person|
      age_array << person[:age]
    end
    age_array.inject(:+)/age_array.length
  end

  def name_string
    name_array = []
    all.each do |person|
      name_array << person[:name]
    end
    name_array.join(" ")
  end

  def find_first_older_than(age)
    all.find { |k| k ; k[:age] > age}
  end

  def any_older_than?(age)
    if all.detect {|n| n[:age] >= age}
      true
    else
      false
    end
  end

  def find_student(student_to_find)
    all.detect {|n| n == student_to_find}
  end

  def student_present?(student_to_find)
    all.include?(student_to_find)
  end

  def grouped_by_age
    all.group_by{|a| a[:age]}.each{|_, v| v.map!{|h| h[:name]}}
  end

end