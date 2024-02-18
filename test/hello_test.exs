defmodule HelloTest do
  use ExUnit.Case

  test "hello" do
    assert Hello.hello() == :world
  end
end
