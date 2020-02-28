class DataImport
  class << self
    def import_all
      import_parties
      import_subjects
      import_territories
    end

    def import_parties
      ods = self.read_ods('parties.ods')
      parties = ods.sheet(0).to_a[4..-1].map do |row|
        {
          party_number: row[0],
          name: row[1],
          abbrevation: row[2],
          candidates: row[3],
          note: row[4],
        }
      end
      Party.import parties, on_duplicate_key_update: {
        conflict_target: [:party_number],
        columns: :all
      }
    end

    def import_subjects
      ods = self.read_ods('subjects.ods')
      subjects = ods.sheet(0).to_a[4..-1].map do |row|
        {
          party_id: Party.find_by_party_number(row[0]).id,
          ballot_position: row[2],
          first_name: row[3],
          last_name: row[4],
          title: row[5],
          employment: row[6],
          city: row[7],
          note: row[8],
        }
      end

      Subject.import subjects, on_duplicate_key_update: {
        conflict_target: [:party_id, :ballot_position],
        columns: :all
      }
    end

    def import_territories
      # ods = self.read_ods('subjects.ods')
      # territories = ods.sheet(0).to_a[4..-1].map do |row|
      # end

      # Territory.import territories
    end

    private

    def read_ods(filename)
      Roo::Spreadsheet.open(Rails.root.join('vendor', 'import_data', 'ods', filename).to_s, extension: :ods)
    end
  end
end
