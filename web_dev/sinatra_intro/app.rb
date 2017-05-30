# require gems
require 'sinatra'
require 'sinatra/reloader' if development?
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /

# get '/' do
#   contact = params[:contact]
#   "Hello? Do you live in #{contact}"
# end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  if person
    "Great job, #{person}!"
  else
    "Great job!!"
  end
end

get '/' do
  number1 = params[:number1]
  number2 = params[:number2]
  sum = number1.to_i + number2.to_i
  sums = sum.to_s
  "#{sums}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end