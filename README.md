# Tópico em banco de dados

## Instalação

```bash
./start_docker_local_db.sh
```

Esse comando irá criar um container com um banco de dados PostgreSQL, caso
ele já existe, ele apenas inicia o banco de dados sem criar um novo.

Agora, crie um ambiente virtual e instale o pacote necessário especificado
no arquivo `requirements.txt`:

```bash
python -m venv .env && source .env/bin/activate && pip install -r requirements.txt
```

## Uso

Agora execute o REPL com o comando `python repl.py` e execute comandos SQL
com o prefixo `sql`, por exemplo `sql select * from jogos;`.
