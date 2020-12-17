class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post


  def user_attributes=(attributes)
      attributes.values.each do |user_attribute|
        if user_attribute != ""
          user = User.find_or_create_by(username: user_attribute)
          self.user = user
      end
    end
  end
end
