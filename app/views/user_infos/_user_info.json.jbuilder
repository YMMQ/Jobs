json.extract! user_info, :id, :fname, :lname, :gender, :dob, :picture, :mobile, :user_id, :created_at, :updated_at
json.url user_info_url(user_info, format: :json)