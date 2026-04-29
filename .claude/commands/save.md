Sauvegarde le travail et déploie en production.

## Étapes (enchaîner sans interruption)

1. **Lancer les tests** :
   ```bash
   npx playwright test
   ```
   Si un test échoue : STOP. Dis au PM quel test échoue et pourquoi.
   Propose de corriger. Ne continue PAS avec des tests rouges.

2. **Vérifier le build** :
   ```bash
   npm run build
   ```
   Si le build échoue : corrige les erreurs TypeScript/ESLint.

3. **Commit** :
   ```bash
   git add -A
   ```
   Génère un message de commit en anglais, format conventionnel,
   descriptif. Exemples :
   - `feat: add partner listing page with search and filters`
   - `fix: correct form validation on interaction creation`
   - `chore: update seed data with realistic test entries`

   ```bash
   git commit -m "<message>"
   ```

4. **Push** :
   ```bash
   git push origin main
   ```

5. **Confirmer** :

   Affiche au PM :

   "✅ Sauvegardé et déployé !

   Ton proto sera en ligne dans ~2 minutes sur :
   https://[NOM-DU-REPO].experimentations.beta.gouv.fr

   (remplace [NOM-DU-REPO] par le vrai nom du repo Git)"
