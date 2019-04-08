require_relative 'CodEngClassDef.rb'
require 'test/unit'

class TestLanguage < Test::Unit::TestCase
    def test_relops
        a = Reloperators.new(3, '<=', 5)
        assert.equal(a.compare(), true)
        a = Reloperators.new(10, '<=', 5)
        assert.equal(a.compare(), false)
        a = Reloperators.new(3, '>=', 5)
        assert.equal(a.compare(), false)
        a = Reloperators.new(3, '==', 5)
        assert.equal(a.compare(), false)
        a = Reloperators.new(3, '!=', 5)
        assert.equal(a.compare(), true)
        a = Reloperators.new(3, '&&', 3)
        assert.equal(a.compare(), true)
        a = Reloperators.new(3, 'and', 3)
        assert.equal(a.compare(), true)
        a = Reloperators.new(true, '&&', true)
        assert.equal(a.compare(), true)
        a = Reloperators.new(true, '&&', false)
        assert.equal(a.compare(), false)
        a = Reloperators.new(false, 'and', false)
        assert.equal(a.compare(), true)
        a = Reloperators.new(false, 'or', false)
        assert.equal(a.compare(), false)
        a = Reloperators.new(false, '||', false)
        assert.equal(a.compare(), false)
        a = Reloperators.new(true, 'or', false)
        assert.equal(a.compare(), true)
        a = Reloperators.new(true, '||', true)
        assert.equal(a.compare(), true)
        a = Reloperators.new(false, '!=', false)
        assert.equal(a.compare(), false)
        a = Reloperators.new(false, '!=', true)
        assert.equal(a.compare(), true)
        a = Reloperators.new(false, 'not', true)
        assert.equal(a.compare(), true)
    end
end