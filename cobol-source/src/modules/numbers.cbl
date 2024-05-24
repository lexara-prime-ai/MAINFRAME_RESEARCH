       >>SOURCE FORMAT FREE
       identification division.
       program-id. numbers.
       author. Irfan Ghat.
       date-written.May 24th 2024
       environment division.

       data division.
       file section.
       working-storage section.
       01 VAL_1 pic 9 value zeros.
       01 VAL_2 pic 9 value zeros.
       01 VAL_3 pic 99 value 0.
       01 VAL_4.
           02 VAL_5 pic 999.
           02 VAL_6 pic 99.
           02 VAL_7 pic 9999.
       *> Defining [CONSTANTS].
       01 PIValue constant as 3.14.

       procedure division.
       display "[OUTPUT] -> " PIValue

       stop run.