49.times do |i|
  Developer.create!(
    name: Forgery('name').full_name,
    github_account: 'http://example.com/',
    role: rand(2),
    email: Forgery('email').address,
    password: "hogehoge#{i + 1}",
    sign_in_count: (i + 1).to_s,
    confirmed_at: Date.today,
    created_at: Date.today,
    updated_at: Date.today,
    image: 'hoge.png'
  )
end

Developer.create!(
  name: '社長',
  github_account: 'http://example.com/',
  role: 2,
  email: 'hoge@hoge',
  password: 'hogehoge',
  sign_in_count: 1,
  confirmed_at: Date.today,
  created_at: Date.today,
  updated_at: Date.today,
  image: 'hoge.png'
)

10.times do |_i|
  Team.create!(
    name: Forgery('lorem_ipsum').word,
    created_at: Date.today,
    updated_at: Date.today
  )
end

10.times do |i|
  Project.create!(
    name: Forgery('lorem_ipsum').word,
    description: Forgery('lorem_ipsum').paragraph,
    team_id: (i + 1).to_s,
    created_at: Date.today,
    updated_at: Date.today
  )
end

10.times do |i|
  DeveloperTeam.create!(
    developer_id: (i + 1).to_s,
    team_id: 1
  )
end

10.times do |i|
  DeveloperTeam.create!(
    developer_id: (i + 11).to_s,
    team_id: 2
  )
end

10.times do |i|
  DeveloperTeam.create!(
    developer_id: (i + 21).to_s,
    team_id: 3
  )
end

10.times do |i|
  DeveloperTeam.create!(
    developer_id: (i + 31).to_s,
    team_id: 4
  )
end

10.times do |i|
  DeveloperTeam.create!(
    developer_id: (i + 41).to_s,
    team_id: 5
  )
end

10.times do |i|
  Gemfile.create!(
    context: 'hoge',
    project_id: (i + 1).to_s
  )
end

10.times do |i|
  GemSuggestion.create!(
    sentence: 'Fakerはいいぞ',
    developer_id: (i + 1).to_s,
    gemfile_id: 1
  )
end

10.times do |i|
  GemSuggestion.create!(
    sentence: 'Fakerはいいぞ',
    developer_id: (i + 11).to_s,
    gemfile_id: 2
  )
end

10.times do |i|
  GemSuggestion.create!(
    sentence: 'Fakerはいいぞ',
    developer_id: (i + 21).to_s,
    gemfile_id: 3
  )
end

10.times do |i|
  GemSuggestion.create!(
    sentence: 'Fakerはいいぞ',
    developer_id: (i + 31).to_s,
    gemfile_id: 4
  )
end

10.times do |i|
  GemSuggestion.create!(
    sentence: 'Fakerはいいぞ',
    developer_id: (i + 41).to_s,
    gemfile_id: 5
  )
end
