# index.rss.builder
xml.instruct! :xml, :version => "1.0" 
xml.rss :version => "2.0" do
  xml.channel do
    xml.title "Posts"
    xml.description "Some posts"
    xml.link posts_path(:rss)
    
    for post in @posts
      xml.item do
        xml.title post.title
        xml.description post.body
        xml.pubDate post.created_at.to_s(:rfc822)
        xml.link post_path(post, :rss)
        xml.guid post_path(post, :rss)
      end
    end
  end
end

