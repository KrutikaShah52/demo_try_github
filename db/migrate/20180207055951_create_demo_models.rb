class CreateDemoModels < ActiveRecord::Migration[5.1]
  def self.up
    create_table :demo_models do |t|
    	t.string :name
      t.timestamps
    end
  end
end
