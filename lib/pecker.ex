defmodule Pecker do
  @moduledoc """
  Code for wiki page generation.
  """
  alias Pecker.Page

  use NimblePublisher,
    build: Page,
    from: Application.app_dir(:pecker, "priv/pages/*.md"),
    as: :pages

  @doc """
  List all pages read by the wiki.
  """
  def all_pages, do: @pages

end
