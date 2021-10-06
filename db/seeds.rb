Course.delete_all
Instructor.delete_all
file1 = File.read('db/course.json')
file2 = File.read('db/instructor.json')
courses = JSON.parse(file1)
instructors = JSON.parse(file2)

course_values = []
instructor_values = []
course_columns = %i[code description independent_study name subjects]
instructor_columns = %i[first last email]

courses.each do |course|
  course_values << Course.create(code: course['code'], description: course['description'],
                                 independent_study: course['independent_study'], name: course['name'], subjects: course['subjects'][0]['id'])
end
instructors.each do |instructor|
  instructor_values << Instructor.create(first: instructor['first'],
                                         last: instructor['last'], email: instructor['email'])
end

Course.import course_columns, course_values
Instructor.import instructor_columns, instructor_values
