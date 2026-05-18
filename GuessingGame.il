.assembly extern mscorlib {}
.assembly GuessingGame {}
.module GuessingGame.exe

.class public auto ansi beforefieldinit GuessingGame
       extends [mscorlib]System.Object
{
  .method public hidebysig static void Main() cil managed
  {
    .entrypoint
    .maxstack 3
    .locals init (
      [0] class [mscorlib]System.Random random,
      [1] int32 target,
      [2] string input,
      [3] int32 guess
    )

    newobj instance void [mscorlib]System.Random::.ctor()
    stloc.0
    ldloc.0
    ldc.i4.1
    ldc.i4.s 101
    callvirt instance int32 [mscorlib]System.Random::Next(int32, int32)
    stloc.1

    ldstr "I'm thinking of a number from 1 to 100."
    call void [mscorlib]System.Console::WriteLine(string)

    br.s PromptGuess

  PromptGuess:
    ldstr "Enter your guess: "
    call void [mscorlib]System.Console::Write(string)
    call string [mscorlib]System.Console::ReadLine()
    stloc.2

    ldloc.2
    ldloca.s 3
    call bool [mscorlib]System.Int32::TryParse(string, int32&)
    brtrue.s RangeCheck

    ldstr "Please enter a whole number."
    call void [mscorlib]System.Console::WriteLine(string)
    br.s PromptGuess

  RangeCheck:
    ldloc.3
    ldc.i4.1
    blt.s OutOfRange

    ldloc.3
    ldc.i4.s 100
    bgt.s OutOfRange

    ldloc.3
    ldloc.1
    blt.s TooLow

    ldloc.3
    ldloc.1
    bgt.s TooHigh

    ldstr "Correct! You guessed the number."
    call void [mscorlib]System.Console::WriteLine(string)
    ret

  TooLow:
    ldstr "Too low. Try again."
    call void [mscorlib]System.Console::WriteLine(string)
    br.s PromptGuess

  TooHigh:
    ldstr "Too high. Try again."
    call void [mscorlib]System.Console::WriteLine(string)
    br.s PromptGuess

  OutOfRange:
    ldstr "Please enter a number from 1 to 100."
    call void [mscorlib]System.Console::WriteLine(string)
    br.s PromptGuess
  }
}
