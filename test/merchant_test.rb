require './test/test_helper'
require './lib/merchant'

class MerchantTest < Minitest::Test
  def test_it_exists
    m = Merchant.new({:id => 5, :name => "Turing School"})
    assert_instance_of Merchant, m
  end

  def test_it_has_an_id
    m = Merchant.new({:id => 5, :name => "Turing School"})
    assert_equal 5, m.id
  end

  def test_it_has_an_name
    m = Merchant.new({:id => 5, :name => "Turing School"})
    assert_equal "Turing School", m.name
  end

  def test_it_returns_all_info
    m = Merchant.new({:id => 5, :name => "Turing School"})
    assert_equal ({:id => 5, :name => "Turing School"}), m.info
  end

  def test_update_item
    m = Merchant.new({:id => 5, :name => "Turing School"})
    assert_equal m.name, "Turing School"

    m.update({:id => 5, :name => "School of Software and Design"})
    assert_equal "School of Software and Design", m.name
  end
end
