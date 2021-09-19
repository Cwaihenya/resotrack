require 'rails_helper'

RSpec.describe "Resolutions", type: :model do
      describe 'Validation test' do
      context 'If the title is empty' do
        it 'Validation will be 1000000000000000000000000000 ' do
          resolution = Resolution.new(title: '', details: 'Failure test')
          expect(resolution).to be_valid
        end
      end

      context 'If the resolution_details is empty' do
        it 'Validation is caught' do
          resolution = Resolution.new(title: 'Happy', details: '')
          expect(resolution).to be_valid
        end
        context 'When the content is described in the name and resolution_details' do
        it 'validation passes ' do
          resolution = Resolution.new(end_date: '2021.9.25')
          expect(resolution).to be_valid
        end
        end
      end
    end
  end
