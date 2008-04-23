require File.dirname(__FILE__) + '/table'

module SQL
  module Sqlite3
    def table_exists?(table_name)
      query_table(table_name).size > 0
    end

    def supports_schema_transactions?
      true
    end

    def recreate_database
      DataMapper.logger.info "Dropping #{@uri.path}"
      system "rm #{@uri.path}"
      # do nothing, sqlite will automatically create the database file
    end

    def table(table_name)
      SQL::Table.new(self, table_name)
    end

    def query_table(table_name)
      query("PRAGMA table_info('#{table_name}')")
    end

    class Table < SQL::Table
      def initialize(adapter, table_name)
        @columns = []
        adapter.query_table(table_name).each do |col_struct|
          @columns << SQL::Sqlite3::Column.new(col_struct)
        end      
      end
    end

    class Column < SQL::Column
      def initialize(col_struct)
        @name, @type, @default_value, @primary_key = col_struct.name, col_struct.type, col_struct.dflt_value, col_struct.pk

        @not_null = col_struct.notnull == 0
      end
    end


  end
end
