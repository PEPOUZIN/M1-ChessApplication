-- Création de la table app_user
CREATE TABLE IF NOT EXISTS public.app_user (
    id BIGSERIAL PRIMARY KEY,
    username VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE
);

-- Création de la table role
CREATE TABLE IF NOT EXISTS public.role (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL CHECK (name IN ('ROLE_USER', 'ROLE_ADMIN'))
);

-- Création de la table user_roles
CREATE TABLE IF NOT EXISTS public.user_roles (
    user_id BIGINT NOT NULL REFERENCES app_user(id) ON DELETE CASCADE,
    role_id BIGINT NOT NULL REFERENCES role(id) ON DELETE CASCADE,
    PRIMARY KEY (user_id, role_id)
);

-- Ajout d'index pour optimiser les requêtes
CREATE INDEX IF NOT EXISTS idx_user_roles_user_id ON public.user_roles(user_id);
CREATE INDEX IF NOT EXISTS idx_user_roles_role_id ON public.user_roles(role_id);

