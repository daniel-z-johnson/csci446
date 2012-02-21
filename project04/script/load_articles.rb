Article.transaction do
	(1..100).each do |i|
		Article.create(:author => "Author number #{i}", :title => "Title #{i}", :body => "Something")
	end
end