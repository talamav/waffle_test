defmodule WaffleTest.Content.Recipe do
  use Ecto.Schema
  import Ecto.Changeset
  use Waffle.Ecto.Schema

  schema "recipes" do
    field :image, WaffleTest.ImageUploader.Type
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(recipe, attrs) do
    recipe
    |> cast(attrs, [:name, :image])
    |> validate_required([:name, :image])
  end
end
