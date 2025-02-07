ALTER TABLE public.app_user DROP CONSTRAINT IF EXISTS app_user_username_fkey;

ALTER TABLE public.player
    ADD COLUMN user_id BIGINT UNIQUE; -- Ajoute une colonne pour stocker l'ID de User

ALTER TABLE public.player
    ADD CONSTRAINT player_user_fk FOREIGN KEY (user_id)
        REFERENCES public.app_user(id)
        ON DELETE CASCADE;
