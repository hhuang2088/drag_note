require 'spec_helper'

describe ChaptersController do

  it 'chapters can be created' do 
    chapter = Chapter.create(title: "test")
    chapter != nil
  end

end
