-- Insérer un joueur dans la table player
INSERT INTO public.player (name, elo_classic, elo_blitz, elo_fast, elo_bullet, title, classement, nb_game, ratio, ratio_white, ratio_black, nb_move_to_win, creation_date, favorite_open)
VALUES ('test_user', 1500, 1500, 1500, 1500, 'Player', 100, 10, 0.5, 0.5, 0.5, 20, CURRENT_DATE, 'sicilian');

-- Insérer un utilisateur de test dans la table app_user
-- Ici, nous utilisons le même "username" que le "name" du joueur
INSERT INTO public.app_user (username, password, email)
VALUES ('test_user', '{noop}password123', 'test_user@example.com');

-- Insérer le rôle pour l'utilisateur dans la table user_roles
-- Ici, on attribue le rôle "ROLE_USER" par défaut
INSERT INTO public.user_roles (user_id, role_id)
SELECT u.id, r.id
FROM public.app_user u
JOIN public.role r ON r.name = 'ROLE_USER'
WHERE u.username = 'test_user';

-- Vérifier l'insertion dans les tables
-- Vérifier si le joueur a été ajouté
SELECT * FROM public.player WHERE name = 'test_user';

-- Vérifier si l'utilisateur a été ajouté
SELECT * FROM public.app_user WHERE username = 'test_user';

-- Vérifier si le rôle a été attribué à l'utilisateur
SELECT * FROM public.user_roles WHERE user_id = (SELECT id FROM public.app_user WHERE username = 'test_user');
