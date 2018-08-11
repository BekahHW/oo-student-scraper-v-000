class Student

  attr_accessor :name, :location, :twitter, :linkedin, :github, :blog, :profile_quote, :bio, :profile_url 

  @@all = []

  def initialize(student_hash)
     student_hash.each {|key, value| self.send(("#{key}="), value)}
    @@all << self
  end

# expect{Student.new({:name => "Sophie DeBenedetto", :location => "Brooklyn, NY"})}.to_not raise_error
#       expect(student.name).to eq("Alex Patriquin")
#       expect(student.location).to eq("New York, NY")

  def self.create_from_collection(students_array)

    # student = students_array.each_slice(1).to_a
    # students_array[0]
    # students_array.each do |person| 
    #   person.each do |k, v| 
        
    #     "#{v}"
    students_array.each do |s| 
      Student.new(s)
end

    
  end

  def add_student_attributes(attributes_hash)
    
  end

  def self.all
    @@all
  end
end

