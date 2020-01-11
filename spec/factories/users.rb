FactoryBot.define do

  factory :user do
    username              {"伊藤航太"}
    sequence(:email) {Faker::Internet.email}
    password              {"00000000"}
    password_confirmation {"00000000"}
    department            {"テレビ部"}
    start_day             {"2019-03-31"}
    number                {1111}

  end
end