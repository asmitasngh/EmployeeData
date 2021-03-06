class Weekinfo < ActiveRecord::Base
	has_many :infos
=begin	def self.to_ods(options={})
		ODS.generate(options) do |ods|
			ods << column_names
			all.each do |weekinfo|
				ods << weekinfo.attributes.values_at(*column_names)
			end
		end
	end
=end
	def self.import(file)
		spreadsheet = open_spreadsheet(file)
		header = spreadsheet.row(1)
		(2..spreadsheet.last_row).each do |i|
			row = Hash[[header, spreadsheet.row(i)].transpose]
			weekinfo = find_by_id(row["id"]) || new
			weekinfo.attributes = row.to_hash.slice(*accessible_attributes)
		end
	end

	def self.open_spreadsheet(file)
		case File.extname(file.original_filename)
			when ".xls" then Roo::Excel.new(file.path, nil, :Ignore)
			when ".xlsx" then Roo::Excelx.new(file.path, nil, :Ignore)
			else raise "Unknown File type : #{file.original_filename}"
		end	
	end
end
