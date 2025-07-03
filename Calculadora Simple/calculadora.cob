             >>SOURCE FORMAT FREE
       IDENTIFICATION DIVISION.
       PROGRAM-ID. Calculadora.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01 NUM1         PIC 9(5) VALUE ZEROS.
       01 NUM2         PIC 9(5) VALUE ZEROS.
       01 OPERADOR     PIC X VALUE SPACE.
       01 RESULTADO    PIC S9(10) VALUE ZEROS.
       01 DIV-ERROR    PIC X VALUE SPACE.

       PROCEDURE DIVISION.
           DISPLAY "Ingrese el primer número: ".
           ACCEPT NUM1.

           DISPLAY "Ingrese el segundo número: ".
           ACCEPT NUM2.

           DISPLAY "Ingrese el operador (+, -, *, /): ".
           ACCEPT OPERADOR.

           EVALUATE OPERADOR
               WHEN "+"
                   COMPUTE RESULTADO = NUM1 + NUM2
                   DISPLAY "Resultado: " RESULTADO
               WHEN "-"
                   COMPUTE RESULTADO = NUM1 - NUM2
                   DISPLAY "Resultado: " RESULTADO
               WHEN "*"
                   COMPUTE RESULTADO = NUM1 * NUM2
                   DISPLAY "Resultado: " RESULTADO
               WHEN "/"
                   IF NUM2 = 0
                       DISPLAY "Error: División por cero no permitida."
                   ELSE
                       COMPUTE RESULTADO = NUM1 / NUM2
                       DISPLAY "Resultado: " RESULTADO
                   END-IF
               WHEN OTHER
                   DISPLAY "Operador no válido."
           END-EVALUATE.

           GOBACK.
       END PROGRAM Calculadora.
