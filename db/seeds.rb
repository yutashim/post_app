posts = "
3000形SE車
小田急3000形電車は、1957年から1992年まで小田急電鉄において運用された特急用車両（ロマンスカー）である。"
posts = posts.scan(/.{1,7}/)
posts.each do |p|
  Post.create!(
    content: "#{p}"
  )
end
