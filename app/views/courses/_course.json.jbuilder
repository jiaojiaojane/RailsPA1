json.extract! course, :id, :code, :description, :independent_study, :name, :subjects, :created_at, :updated_at
json.url course_url(course, format: :json)
