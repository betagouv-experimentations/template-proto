# template-proto

Starter kit beta.gouv.fr pour PMs non techniques. Lance Claude Code dans
[agent-vm](https://github.com/sylvinus/agent-vm) et utilise 4 commandes :
`/build`, `/change`, `/save`, `/preview`.

## Stack

- Next.js 15 (App Router) + TypeScript strict
- `@codegouvfr/react-dsfr` (DSFR uniquement)
- Drizzle ORM + PostgreSQL
- zod (validation)
- Playwright (tests E2E)

## Démarrer

Voir [docs/GETTING_STARTED.md](docs/GETTING_STARTED.md).

Les 4 commandes sont décrites dans [docs/AIDE_MEMOIRE.md](docs/AIDE_MEMOIRE.md).

## Documentation interne

- [Constitution Claude](CLAUDE.md) — règles du projet
- [Guide DSFR](docs/guidelines/dsfr.md)
- [Checklist RGAA](docs/guidelines/rgaa.md)
- [Migrations DB](docs/guidelines/migrations.md)
- [Tests E2E](docs/guidelines/testing.md)
- [Sécurité](docs/guidelines/security.md)
- [Standards beta](docs/guidelines/beta-standards.md)

## Déploiement

Push sur `main` → Coolify build le `Dockerfile` et déploie sur
`https://[nom-repo].experimentations.beta.gouv.fr`. PostgreSQL est
provisionné comme addon Coolify.

## Licence

MIT.
