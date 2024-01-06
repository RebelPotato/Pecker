defmodule Pecker.Page do
  @enforce_keys [:body, :id, :title]
  defstruct [:body, :id, :title]
  def build(filename, attrs, body) do
    [id] = filename |> Path.rootname() |> Path.split() |> Enum.take(-1)
    struct!(__MODULE__, [id: id, body: body] ++ Map.to_list(attrs))
  end
end
