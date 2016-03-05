class UserIdentity < ActiveRecord::Base
  belongs_to :user

  def nickname
    data['info']['nickname']
  end

  def email
    data['info']['email']
  end
end
