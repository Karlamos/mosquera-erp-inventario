CREATE DATABASE ;
\c posts_db_pg
CREATE USER posts_user_pg WITH PASSWORD 'posts_pass_123';
ALTER ROLE posts_user_pg SET client_encoding TO 'utf8';
ALTER ROLE posts_user_pg SET default_transaction_isolation TO 'read committed';
ALTER ROLE posts_user_pg SET timezone TO 'UTC';
GRANT ALL PRIVILEGES ON DATABASE posts_db_pg TO posts_user_pg;
GRANT ALL ON SCHEMA public TO posts_user_pg;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL ON TABLES TO posts_user_pg;
ALTER DATABASE posts_db_pg OWNER TO posts_user_pg;
ALTER SCHEMA public OWNER TO posts_user_pg;
GRANT CREATE ON SCHEMA public TO posts_user_pg;



ssh-keygen -t ed25519 -C "mosquera-erp-inventario" -f ~/.ssh/mosquera-blog-github-deploy


GIT_SSH_COMMAND='ssh -i ~/.ssh/mosquera-erp-inventario-github-deploy' git clone git@github.com:Karlamos/mosquera-erp-inventario.git /opt/mosquera-erp-inventario
cd /root/nestjs-blog-backend





sudo ln -s /etc/nginx/sites-available/mosquera-erp /etc/nginx/sites-enabled/
40.82.180.42

mosquera-erp-inventario-api

mosquera-erp-inventario