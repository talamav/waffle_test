defmodule WaffleTest.Repo.Migrations.CreateRecipes do
  use Ecto.Migration

  def change do
    create table(:recipes) do
      add :name, :string
      add :image, :string

      timestamps()
    end

  end
end
