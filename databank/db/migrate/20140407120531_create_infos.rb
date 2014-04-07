class CreateInfos < ActiveRecord::Migration
  def change
    create_table :infos do |t|
      t.string :name
      t.string :fm_no
      t.string :charge_code
      t.string :project_name
      t.string :portfolio
      t.string :remarks
      t.boolean :non_billable
      t.boolean :released
      t.references :weekinfo, index: true

      t.timestamps
    end
  end
end
