class Repl:
    def __init__(self, db_url: str):
        self.db_url = db_url

    def start(self):
        while 1:
            break

def main():
    repl = Repl(db_url="")
    repl.start()

if __name__ == "__main__":
    main()
