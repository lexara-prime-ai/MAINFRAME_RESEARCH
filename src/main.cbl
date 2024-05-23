       >>SOURCE FORMAT FREE
       identification division.
       program-id. demo.
       author. Irfan Ghat.
       date-written.May 25th 2024
       environment division.

       data division.
       file section.
       working-storage section.
       01 userName pic x(30) value "You".
       *> zeros are [figurative] [constants].
       01 num1 pic 9 value zeros. 
       01 num2 pic 9 value zeros.
       01 total pic 99 value 0.
       01 SSNum.
           02 SSArea pic 999.
           02 SSGroup pic 99.
           02 SSSerial pic 9999.
       *> Define [constant]
       01 PIValue constant as 3.14.

       procedure division.
       display "What is your social security number " with no advancing
       accept userName
       display "Hello " userName

       stop run.

       