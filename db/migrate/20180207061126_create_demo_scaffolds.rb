class CreateDemoScaffolds < ActiveRecord::Migration[5.1]
  def change
    create_table :demo_scaffolds do |t|
      t.string :name

      t.timestamps
    end
  end
end
