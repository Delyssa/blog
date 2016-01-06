10.times do |id|
  FactoryGirl.create(:user, :confirmed, email: "user#{id + 1}@example.com")
  FactoryGirl.create(:article, user: User.find(id + 1))
end
100.times do |comment_id|
  FactoryGirl.create(:comment, user: User.find(comment_id / 10 + 1), article: Article.find(comment_id % 10 + 1))
end
