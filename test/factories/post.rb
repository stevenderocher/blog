Factory.define :post do |post|
  post.title { 'string' }
  post.body { 'text' }
  post.association(:user)
end
