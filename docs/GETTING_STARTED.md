# Bienvenue ! Guide pas-à-pas

Ce guide t'accompagne pour ton premier prototype beta.gouv. Aucune
connaissance technique requise.

## Avant de commencer

Tu as besoin de :
- **agent-vm** installé sur ton ordinateur
  (cf. https://github.com/sylvinus/agent-vm)
- Un compte **GitHub** (gratuit, sur https://github.com)
- 5 minutes pour démarrer

## Étape 1 — Créer ton repo

1. Va sur https://github.com/betagouv-experimentations
2. Clique sur "New repository"
3. Choisis "Use this template" → `template-proto`
4. Donne-lui un nom court et clair (ex: `partenariats-ademe`)
5. Mets-le en "Public"
6. Clique sur "Create repository"

## Étape 2 — Lancer Claude

Dans ton terminal :

```bash
# Cloner le repo
git clone https://github.com/betagouv-experimentations/[NOM-DU-REPO].git
cd [NOM-DU-REPO]

# Lancer agent-vm
agent-vm claude
```

La première fois, agent-vm va installer les outils nécessaires
(2-3 minutes). Tu auras à te connecter à GitHub via un navigateur.

## Étape 3 — Décrire ton projet

Une fois Claude lancé, tape :

```
/build
```

Décris en français ce que tu veux construire. Sois précis sur :
- Qui sont les utilisateurs
- Ce qu'ils doivent pouvoir faire
- Les données à manipuler

Exemple :
> Je veux un outil pour suivre nos partenariats avec des collectivités.
> Les agents de mon équipe doivent pouvoir créer des fiches partenaires,
> noter leurs interactions (RDV, mails), et voir une chronologie par
> partenaire.

Claude te posera 1 à 3 questions, puis te montrera un résumé.
Tu valides → il construit tout.

## Étape 4 — Tester ton proto

Quand Claude a fini, ouvre http://localhost:3000 dans ton navigateur.
Clique partout, teste les formulaires.

## Étape 5 — Modifier

Si tu veux changer quelque chose, tape :

```
/change
```

Décris ce que tu veux. Exemples :
> Ajoute un champ "secteur" sur les partenaires
> Change la couleur du bouton de validation
> Ajoute un export CSV de la liste des partenaires

## Étape 6 — Mettre en ligne

Quand ton proto te plaît, tape :

```
/save
```

Claude lance les tests, fait un commit Git, et déploie. Ton proto
sera en ligne sur :
`https://[NOM-DU-REPO].experimentations.beta.gouv.fr`

en environ 2 minutes.

## Les 4 commandes à retenir

- `/build` — Construire from scratch
- `/change` — Modifier l'existant
- `/save` — Mettre en ligne
- `/preview` — Relancer le serveur local

C'est tout. Pas besoin de Git, de Docker, ou de comprendre TypeScript.

## En cas de souci

- "Mon serveur ne répond pas" → tape `/preview`
- "Une fonctionnalité ne marche pas" → tape `/change` et décris le bug
- "Je veux repartir de zéro" → tape `/build` (attention, ça écrase tout)

Pour toute autre question, contacte ton coach beta.
