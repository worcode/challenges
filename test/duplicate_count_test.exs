defmodule CountDuplicateTest do
  use ExUnit.Case

  test "foo" do
    assert DuplicateCount.foo() == :bar
  end

  test "duplicate counter" do
    assert DuplicateCount.count("") == 0
    assert DuplicateCount.count("abcde") == 0
    assert DuplicateCount.count("aabbcde") == 2
    assert DuplicateCount.count("aabBcde") == 2
    assert DuplicateCount.count("Indivisibility") == 1
    assert DuplicateCount.count("Indivisibilities") == 2
  end
end
