Factory.define :posts do |posts|
  posts.title { 'string' }
  posts.body { 'text' }
  posts.association(:user)
end
