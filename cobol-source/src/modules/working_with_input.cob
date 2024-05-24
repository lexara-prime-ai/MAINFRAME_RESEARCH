       >>SOURCE FORMAT FREE
       identification division.
       program-id. working_with_input.
       author. Irfan Ghat.
       date-written.May 23rd 2024
       environment division.
       
       data division.
       file section.
       working-storage section.
       *> Social Security Number.
       01 SocialSecurityNumber pic x(30) value "[OUTPUT] ->"
       
       procedure division.
       display "Input Social Security Number: " with no advancing
       accept SocialSecurityNumber
       display "[SSN] -> " SocialSecurityNumber

       stop run