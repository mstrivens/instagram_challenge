require 'rails_helper'

# RSpec.describe User, type: :model do
#   pending "add some examples to (or delete) #{__FILE__}"
# end

RSpec.describe User do
  it "doesn't save without a username" do
    user = User.create(username: nil, password: "bigjoe")
    expect(user).not_to be_valid
  end

# Below test actually covered by has_secure_password class method is User

  it "doesn't save without a password" do
    user = User.create(username: "bigfoot", password: nil)
    expect(user).not_to be_valid
  end
end
