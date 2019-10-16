# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'validate' do
  it 'category should be valid' do
    category = Category.new(name: 'sports')
    expect(category).to be_valid
  end

  it 'category should be present' do
    category = Category.new(name: ' ')
    expect(category).not_to be_valid
  end

  it 'category should be unique' do
    category = Category.new(name: 'sports')
    category.save
    category2 = Category.new(name: 'sports')
    expect(category2).not_to be_valid
  end

  it 'category should be unique' do
    category = Category.new(name: 'sports')
    category.name = 'a' * 26
    expect(category).not_to be_valid
  end

  it 'category should be unique' do
    category = Category.new(name: 'sports')
    category.name = 'aa'
    expect(category).not_to be_valid
  end
end
