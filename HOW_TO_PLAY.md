# Comment jouer au jeu de devinette

1. Compilez l'application depuis la racine du dépôt :

   ```powershell
   C:\Windows\Microsoft.NET\Framework\v4.0.30319\ilasm.exe /output:GuessingGame.exe GuessingGame.il
   ```

2. Lancez le jeu :
   - Sous Windows, exécutez `.\GuessingGame.exe`.
   - Sous Linux ou macOS avec Mono, exécutez :

     ```bash
     mono GuessingGame.exe
     ```

3. Lorsque le jeu vous y invite, saisissez un nombre entre 1 et 100.
4. Si votre proposition est trop petite ou trop grande, le jeu vous l'indiquera et vous demandera de réessayer.
5. Continuez jusqu'à ce que le jeu confirme que vous avez trouvé le bon nombre.

Si vous saisissez autre chose qu'un nombre entier, ou un nombre en dehors de l'intervalle 1-100, le jeu vous demandera de recommencer.
