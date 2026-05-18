# How to Play the Guessing Game

1. Build the app from the repository root:

   ```bash
   ilasm GuessingGame.il /exe /output:GuessingGame.exe
   ```

2. Run the game:

   ```bash
   mono GuessingGame.exe
   ```

3. When prompted, enter a guess from 1 to 100.
4. If your guess is too low or too high, the game will tell you and ask again.
5. Keep guessing until the game tells you that you guessed the number.

If you enter something that is not a whole number, or a number outside the 1-100 range, the game will ask you to try again.
