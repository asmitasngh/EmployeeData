class CreateWeekinfos < ActiveRecord::Migration
  def change
    create_table :weekinfos do |t|
      t.date :from_date

      t.timestamps
    end
  end
end
