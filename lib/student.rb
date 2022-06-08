class Student
  attr_accessor :name, :grade
  attr_reader :id

  def initialize(name, grade, id=nil)
    @name = name 
    @grade = grade 
    @id = id
  end 

  def self.create_table
    sql<<-SQL
      CREATE TABLE students (
        id INTEGER PRIMARY KEY, 
        name TEXT, 
        grade REAL
      )
      SQL
    DB[:conn].execute(sql) 
  end 

  # def self.create(name:, grade:, id: = nil)
  #   sql = <<-SQL
  #     INSERT INTO students (name, grade, id)
  #     VALUES (name, grade, id)
  #   SQL

  #   DB[:conn]    


  # # Remember, you can access your database connection anywhere in this class
  # #  with DB[:conn] 
  # end 
  
end
