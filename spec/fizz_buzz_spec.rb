require 'spec_helper'

RSpec.describe do
  describe 'fizz_buzz' do
    let(:fizz) {
      'Fizz'
    }
    let(:buzz) {
      'Buzz'
    }
    let(:bar) {
      'Bar'
    }
    context '1' do
      it 'returns 1' do
        expect(fizz_buzz(1)).to eq '1'
      end
    end
    context '3' do
      it 'returns Fizz' do
        expect(fizz_buzz(3)).to eq fizz
      end
    end
    context '5' do
      it 'returns Buzz' do
        expect(fizz_buzz(5)).to eq buzz
      end
    end
    context '7' do
      it 'returns Bar' do
        expect(fizz_buzz(7)).to eq bar
      end
    end
    context '15' do
      it 'returns FizzBuzz' do
        expect(fizz_buzz(15)).to eq fizz + buzz
      end
    end
    context '21' do
      it 'returns FizzBar' do
        expect(fizz_buzz(21)).to eq fizz + bar
      end
    end
    context '35' do
      it 'returns BuzzBar' do
        expect(fizz_buzz(35)).to eq buzz + bar
      end
    end
    context '105' do
      it 'returns FizzBuzzBar' do
        expect(fizz_buzz(105)).to eq fizz + buzz + bar
      end
    end
  end
end
