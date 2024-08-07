import psycopg2


class Repl:
    def __init__(self, db_url: str):
        self.db_url = db_url
        self.query_file = open("query_file.txt", "w")
        self.con = self._connect_to_database()
        self._setup_database()

    def start(self):
        while 1:
            command = input("> ")
            if command.startswith("sql"):
                self._execute_sql_query(command)
            elif command.startswith("exit"):
                print("Exiting...")
                break

        self.query_file.close()

    def _execute_sql_query(self, raw_query: str) -> None:
        query = raw_query.split()
        if len(query) < 1:
            print("error: invalid query")
            return

        query = " ".join(query[1:])
        self.query_file.write(f"SQL: {query}\n")
        self.query_file.write("-------------\n")

        with self.con.cursor() as cursor:
            cursor.execute(query)
            self.con.commit()
            rows = cursor.fetchall()
            print(rows)
            self.query_file.write("RESULT: \n")
            if rows:
                for row in rows:
                    self.query_file.write(f"{row}\n")
            else:
                self.query_file.write("No results\n")

    def _connect_to_database(self):
        con = psycopg2.connect(
            host="localhost",
            database="database",
            user="usuario",
            password="senha",
        )
        return con

    def _setup_database(self):
        with open("schema.sql") as schema:
            with self.con.cursor() as cursor:
                schema_as_str = schema.read()
                cursor.execute(schema_as_str)
                self.con.commit()


def main():
    repl = Repl(db_url="")
    repl.start()


if __name__ == "__main__":
    main()
