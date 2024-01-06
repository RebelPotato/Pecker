defmodule Pecker.Renderer do

  @templatePath Application.app_dir(:pecker, "priv/templates")

  @doc """
  Returns the rendered html of a given page
  """
  def render_page(page) do
    EEx.eval_file(Path.join(@templatePath, "page.html.eex"), [page: page])
  end

  @doc """
  Renders base html
  """
  def render_base(body) do
    EEx.eval_file(Path.join(@templatePath, "base.html.eex"), [body: body])
  end
end
