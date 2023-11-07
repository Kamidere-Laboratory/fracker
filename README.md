# Fracker - Finanse tracker

Side project for boring days and experimenting, don't expect much.

## Goals

- Use only one database - postgres
- Avoid ORM's
- Satisfaction in writing and reading code

### Maybe

- Learn about micro-frontends

## Dev notes

### Requirements

- pnpm - package manager (corepack recommended)
- make - scripts
- rust - migrations with refinery_cli

### Database & migrations

I use postgres with podman. Pod specifications is located in ./deployment/pods/db.yaml and need small tweak in volumes section.  
If You want to use docker create docker-compose based on pod specification.

Migrations can be written in SQL or Rust

## Licence

For now is source available later I will choose appropriate license for project.
