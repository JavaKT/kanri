FactoryBot.define do
  factory :item do
    name              {"ミカココアスリム"}
    price             {1000}
    budget            {1000}
    color             {"ホワイトのみ"}
    on_air            {"2019-03-31"}
    discription       {"特になし"}
    category          {"美容"}
    video             {"dinos.mp4"}
    user

  end
end