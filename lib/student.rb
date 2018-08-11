class Student

  attr_accessor :name, :location, :twitter, :linkedin, :github, :blog, :profile_quote, :bio, :profile_url 

  @@all = []

  def initialize(student_hash)
     student_hash.each {|key, value| self.send(("#{key}="), value)}
    @@all << self
  end

  def self.create_from_collection(students_array)
    students_array.each do |s| 
      Student.new(s)
    end
  end

  def add_student_attributes(attributes_hash)
    binding.pry
    # attributes_hash.each { |a| a[:bio]="newvalue" unless a.include? :bio}
      # results.each {|h| h[:c]="newvalue" unless h.include? :c}
      attributes_hash.each {|a| Student.add(a)}
  end

  def self.all
    @@all
  end
end

