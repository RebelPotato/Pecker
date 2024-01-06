defmodule Pecker.PagePlug do
  @moduledoc """
  Plug that returns a random page as response
  """
  alias Pecker.Page
  import Pecker.Renderer
  import Plug.Conn

  @spec random_page() :: Page
  @doc """
  Returns a random page from all pages parsed.
  """
  def random_page, do: Pecker.all_pages() |> Enum.random()

  def init(options), do: options

  def call(conn, _opts) do
    page_html = render_page(random_page())
    conn
    |> put_resp_content_type("text/html")
    |> send_resp(200, render_base(page_html))
  end

end
