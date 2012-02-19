class Article < ActiveRecord::Base
	validates :title, :author, :body, :presence => true
	validates :author, :format => {:without => /\bpat\b/i}
end
