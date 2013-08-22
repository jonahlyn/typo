# steps for the article_merge.feature

Given /the following articles exist/ do |articles_table|
  articles_table.hashes.each do |article|
    # each returned element will be a hash whose key is the table header.
    Article.create!(article)
  end
end

Given /the following users exist/ do |user_table|
  user_table.hashes.each do |user|
    # each returned element will be a hash whose key is the table header.
    User.create!(user)
  end
end