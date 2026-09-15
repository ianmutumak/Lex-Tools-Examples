# Compiler Construction - Lex Tool Assignment - Group 10
144861 - Kiome Ian Mutuma

169275 - Louis Muiyoro Karanja

158716 - Mwangi Mary Queenvine Muthoni

146414 - Wesly Ryan Mugele

134976 - Emmanuel Keter

103023 - Mbai Njeke Silver

This repository contains the solution for the Compiler Construction assignment on Lexical Analysis using Lex/Flex.

## Repository Contents

- `scanner.l` — Main lexical analyzer (Example 4) that processes input C source code and calculates token category counts.
- `test.txt` — Sample C input file tested by the lexical analyzer.
- `example1_scanner.l` — Scanner specification for Example 1 (Integers and Identifiers).
- `example2_3_scanner.l` — Scanner specification for Examples 2 & 3 (Keywords, Operators, Delimiters).

### Compilation & Execution

```bash
# Generate C code from Lex specification
flex scanner.l

# Compile generated lexer
gcc lex.yy.c -o scanner

# Run the scanner
./scanner
```

## Lexical Analysis Output

For `test.txt`:

```c
int age = 20;
float salary = 50000;

if (age > 18) {
    salary = salary + 1000;
}
```

Output results:

```text
Lexical Analysis Results:
-------------------------
Keywords           : 3
Identifiers        : 5
Numbers            : 4
Operators          : 5
Special characters : 7
```
