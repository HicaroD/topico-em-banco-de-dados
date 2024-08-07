CREATE TABLE IF NOT EXISTS public.jogadores (
    id_jogador_pk SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS public.jogos (
    id_jogo_pk SERIAL PRIMARY KEY,
    id_jogador_fk INT NOT NULL,
    nome_jogo VARCHAR(100) NOT NULL,
    FOREIGN KEY (id_jogador_fk) REFERENCES jogadores (id_jogador_pk)
);

-- INSERT INTO public.jogadores (id_jogador_pk, nome) VALUES (1, 'Hicaro');
-- INSERT INTO public.jogadores (id_jogador_pk, nome) VALUES (2, 'Emmanoel');
-- INSERT INTO public.jogadores (id_jogador_pk, nome) VALUES (3, 'Gi');
-- INSERT INTO public.jogadores (id_jogador_pk, nome) VALUES (4, 'Noemy');
-- INSERT INTO public.jogadores (id_jogador_pk, nome) VALUES (5, 'Wemilly');
-- INSERT INTO public.jogadores (id_jogador_pk, nome) VALUES (6, 'Auanny');
-- INSERT INTO public.jogadores (id_jogador_pk, nome) VALUES (7, 'Humberto');
-- INSERT INTO public.jogadores (id_jogador_pk, nome) VALUES (8, 'Arthur');
-- INSERT INTO public.jogadores (id_jogador_pk, nome) VALUES (9, 'Rodrigo');
--
-- INSERT INTO public.jogos (id_jogador_fk, nome_jogo) VALUES (1, 'Left4Dead');
-- INSERT INTO public.jogos (id_jogador_fk, nome_jogo) VALUES (2, 'Left4Dead');
-- INSERT INTO public.jogos (id_jogador_fk, nome_jogo) VALUES (5, 'Left4Dead');
--
-- INSERT INTO public.jogos (id_jogador_fk, nome_jogo) VALUES (7, 'Counter-Strike');
-- INSERT INTO public.jogos (id_jogador_fk, nome_jogo) VALUES (8, 'Counter-Strike');
-- INSERT INTO public.jogos (id_jogador_fk, nome_jogo) VALUES (9, 'Counter-Strike');
--
-- INSERT INTO public.jogos (id_jogador_fk, nome_jogo) VALUES (6, 'Mineras');
-- INSERT INTO public.jogos (id_jogador_fk, nome_jogo) VALUES (5, 'Mineras');
-- INSERT INTO public.jogos (id_jogador_fk, nome_jogo) VALUES (3, 'Mineras');
-- INSERT INTO public.jogos (id_jogador_fk, nome_jogo) VALUES (4, 'Mineras');
