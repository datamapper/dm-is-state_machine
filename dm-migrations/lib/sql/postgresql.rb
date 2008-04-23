module SQL
  module Postgresql
    def table_exists?(table_name)
      query_table(table_name).size > 0
    end

    def supports_schema_transactions?
      true
    end

    def drop_database
    end

    def recreate_database
      execute "DROP SCHEMA IF EXISTS test CASCADE"
      execute "CREATE SCHEMA test"
      execute "SET search_path TO test"
    end

    def table(table_name)
      SQL::Postgresql::Table.new(self, table_name)
    end

    def query_table(table_name)
      query("SELECT * FROM information_schema.columns WHERE table_name='#{table_name}' AND table_schema=current_schema()")
    end

    class Table < SQL::Table
      def initialize(adapter, table_name)
        @columns = []
        adapter.query_table(table_name).each do |col_struct|
          @columns << SQL::Postgresql::Column.new(col_struct)
        end      

        puts "+=+++++++++++++++++++++++++++++++++++++++"
        # detect column constraints
        adapter.query(
          "SELECT * FROM information_schema.table_constraints WHERE table_name='#{table_name}' AND table_schema=current_schema()"
        ).each do |table_constraint|
          puts table_constraint.inspect
          adapter.query(
            "SELECT * FROM information_schema.constraint_column_usage WHERE table_name='#{table_name}' AND table_schema=current_schema()"
          ).each do |constrained_column|
            @columns.each do |column|
              if column.name == constrained_column.column_name
                case table_constraint.constraint_type
                when "UNIQUE"       then column.unique = true
                when "PRIMARY KEY"  then column.primary_key = true
                end
              end
            end
          end
        end
      end

    end

    class Column < SQL::Column
      def initialize(col_struct)
        @name, @type, @default_value = col_struct.column_name, col_struct.data_type, col_struct.column_default

        @not_null = col_struct.is_nullable != "YES"
      end

    end

  end
end

