Fabricator(:code_submission) do
  user_id { 2 }
  url { Faker::Internet.domain_name }
  description { Faker::Lorem.paragraph }
end