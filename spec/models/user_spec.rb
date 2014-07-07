require 'spec_helper'

describe User do
    it 'users can be created' do 
    user = User.create(name: "test")
    user.id.should_not  eq(nil)
  end
end
