defmodule PeckerTest do
  use ExUnit.Case
  # doctest Pecker

  alias Pecker

  test "Read some pages" do
    pages = Wiki.all_pages
    IO.inspect(pages)
    assert length(pages) > 0
  end

end
