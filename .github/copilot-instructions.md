# Important Instructions

When generating code, always use Microsoft Intermediate Language (MSIL) as the target language.

To build an IL file, use the following command:

```powershell
C:\Windows\Microsoft.NET\Framework\v4.0.30319\ilasm.exe /output:YourOutputFileName.dll YourInputFileName.il
```