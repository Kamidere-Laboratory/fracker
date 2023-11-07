# Choosing the PostgreSQL Client

Date: 2023-11-01T22:15:56.807Z

## Status

Accepted

## Context

We needed to select a PostgreSQL client package for our application. Several options were considered, including `Slonik`, `TypeORM`, `pg`, `postgres`, `knex.js`, and `Sequelize`. The chosen package should meet the following criteria:

1. Support for TypeScript: We preferred a package with built-in TypeScript support to ensure type safety and improve code quality.

2. Easy integration with PostgreSQL-specific features: Our application relies on features like listen/notify from PostgreSQL, and we wanted a client that made it easy to work with them.

3. Clean and maintainable code: We aimed for a package that allows us to write clean and maintainable SQL queries, preferably using tagged template functions.

## Decision

After evaluating the available options, we have decided to use the `postgres` package as our PostgreSQL client for our application.

## Justification

We selected the `postgres` package because it meet all of our criteria

## Review

This decision will be reviewed as needed to ensure that it continues to meet our requirements for the PostgreSQL client in our application. If issues arise or if there are significant changes in our project's needs, we will reevaluate our choice.
