require 'spec_helper'

describe Chapter do
    it 'chapters can be created' do 
    chapter = Chapter.create(title: "test")
    chapter.id.should_not  eq(nil)
  end
end
