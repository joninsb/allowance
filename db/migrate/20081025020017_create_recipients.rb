class CreateRecipients < ActiveRecord::Migration
  def self.up
    create_table :recipients do |t|
      t.string :name
      t.decimal :amount, :precision => 14, :scale => 2, :default => 0
      t.string :period

      t.timestamps
    end
  end

  def self.down
    drop_table :recipients
  end
end
