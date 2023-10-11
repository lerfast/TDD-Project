require_relative '../lib/solver'

RSpec.describe Solver do
  describe '#factorial' do
    it 'returns 1 when given 0' do
      solver = Solver.new
      expect(solver.factorial(0)).to eq(1)
    end

    it 'returns 120 when given 5' do
      solver = Solver.new
      expect(solver.factorial(5)).to eq(120)
    end

    it 'raises an error when given a negative number' do
      solver = Solver.new
      expect { solver.factorial(-1) }.to raise_error('Negative number error')
    end
  end

  describe '#reverse' do
    it "returns 'olleh' when given 'hello'" do
      solver = Solver.new
      expect(solver.reverse('hello')).to eq('olleh')
    end
  end

  describe '#fizzbuzz' do
    it "returns 'fizz' when number is divisible by 3" do
      solver = Solver.new
      expect(solver.fizzbuzz(3)).to eq('fizz')
    end

    it "returns 'buzz' when number is divisible by 5" do
      solver = Solver.new
      expect(solver.fizzbuzz(5)).to eq('buzz')
    end

    it "returns 'fizzbuzz' when number is divisible by 3 and 5" do
      solver = Solver.new
      expect(solver.fizzbuzz(15)).to eq('fizzbuzz')
    end

    it 'returns the number as string when not divisible by 3 or 5' do
      solver = Solver.new
      expect(solver.fizzbuzz(7)).to eq('7')
    end
  end
end
