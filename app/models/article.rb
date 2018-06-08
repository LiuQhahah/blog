class Article < ApplicationRecord
    has_many :comments, dependent: :destroy
    #验证，title变量的长度最小为5
   validates :title, presence:true,length: {minimum:5}
end
