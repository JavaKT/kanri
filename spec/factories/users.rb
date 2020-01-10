FactoryBot.define do

  factory :user do
    username              {"伊藤航太"}
    email                 {"kkk@gmail.com"}
    password              {"00000000"}
    password_confirmation {"00000000"}
    department            {1}
    start_day             {"2019-03-31"}
    number                {"0000"}

  end
end