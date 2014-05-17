require 'spec_helper'

describe Note do
    it 'notes can be created' do 
    note = Note.create(title: "test")
    note.id.should_not  eq(nil)
  end
end
