require 'rails_helper'

RSpec.describe 'valid' do
  it 'category should be valid' do
    @category = Category.new(name: "sports")
    @category.valid?
  end

  it 'category should be present' do
    category[column_name] = ''
    expect(category).not_to be_valid
  end




end