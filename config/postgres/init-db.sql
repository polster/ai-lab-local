-- Creates databases and enables pgvector extension for all services

-- Enable pgvector extension on main database
CREATE EXTENSION IF NOT EXISTS vector;

-- Create additional databases for services
CREATE DATABASE litellm_db;
CREATE DATABASE openwebui_db;
CREATE DATABASE mlflow_db;

-- Connect to each database and enable pgvector

\c litellm_db
CREATE EXTENSION IF NOT EXISTS vector;

\c openwebui_db
CREATE EXTENSION IF NOT EXISTS vector;

-- Grant permissions
GRANT ALL PRIVILEGES ON DATABASE litellm_db TO aistack;
GRANT ALL PRIVILEGES ON DATABASE openwebui_db TO aistack;
GRANT ALL PRIVILEGES ON DATABASE mlflow_db TO aistack;