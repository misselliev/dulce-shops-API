require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { FactoryBot.build(:user, :valid_user) }
  let(:invalid_user) { FactoryBot.build(:user, :invalid_user) }
  let(:user2) { FactoryBot.build(:user, :valid_user) }

  before { user.save }
  before { invalid_user.save }
  before { user2.save }

  it 'should be valid' do
    expect(user).to be_valid
  end

  it 'password should not be less than 6 characters' do
    expect(invalid_user).to_not be_valid
  end

  it 'name and last name should be provided' do
    expect(invalid_user).to_not be_valid
    expect(user).to be_valid
  end

  it 'address should be provided' do
    expect(invalid_user).to_not be_valid
    expect(user).to be_valid
  end

  it 'has a unique username' do
    expect(user2).to_not be_valid
  end

  it 'had a unique email' do
    expect(user2).to_not be_valid
  end
end
