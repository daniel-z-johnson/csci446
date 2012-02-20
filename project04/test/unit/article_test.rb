require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
	test "Fields Must not be empty" do
		article = Article.new
		assert article.invalid?
		assert article.errors[:title].any?
		assert article.errors[:body].any?
		assert article.errors[:author].any?
	end

	def new_article_author(name)
		Article.new(:author => name,
			:title => "Nobody knows",
			:body => "Ne me mori facias")
	end

	test "Name cannot be Pat" do
		ok = ["Patrick Holms", "Patty Smith", "Blue Fish Snipper", "Why the Lucky Stiff?", "Issland Hopper"]
		bad = ["PAT", "PAt", "PaT", "Pat", "pAT", "pAt", "paT", "pat", "Pat willams", "Pat Jobs", "The Hidden Pat"]

		ok.each do |name|
			assert new_article_author(name).valid?, "#{name} shouldn't be invalid"
		end

		bad.each do |name|
			assert new_article_author(name).invalid?, "#{name} shouldn't be valid"
		end
	end


end
