class CreateBrandsTable < ActiveRecord::Migration[5.1]
  def change
    create_table(:brands) do |t|
      t.column(:title, :string)
      t.column(:price, :money)
    end
  end
end
