require 'spec_helper'

describe OnlineRequest do
  let(:online_request){ FactoryGirl.build(:online_request) }

  it 'should be valid with valid attributes' do
    online_request.should be_valid
  end

  describe '#first_name' do
    it 'is required' do
      online_request.first_name = ' '
      online_request.should have(1).error_on(:first_name)
    end
  end

  describe '#last_name' do
    it 'is required' do
      online_request.last_name = ' '
      online_request.should have(1).error_on(:last_name)
    end
  end

  describe '#patronymic' do
    it 'is required' do
      online_request.patronymic = ' '
      online_request.should have(1).error_on(:patronymic)
    end
  end

  describe '#phone' do
    it 'is required' do
      online_request.phone = ' '
      online_request.should have(1).error_on(:phone)
    end
  end

  describe '#registration_address' do
    it 'is required' do
      online_request.registration_address = ' '
      online_request.should have(1).error_on(:registration_address)
    end
  end

  describe '#birth_date' do
    it 'is required' do
      online_request.birth_date = nil
      online_request.should have(1).error_on(:birth_date)
    end
  end
  
  describe '#email' do
    it 'should be valid' do
      online_request.email = '@hedgehog.com'
      online_request.should have(1).error_on(:email)
      online_request.email = 'hairless@hedgehog.'
      online_request.should have(1).error_on(:email)
      online_request.email = 'boss@hedgehog.com'
      online_request.should be_valid
    end
  end
  
end
