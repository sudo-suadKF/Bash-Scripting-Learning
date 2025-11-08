#!/bin/bash

#for (( i=1; i<=10; i++ ))
#do
 #   if (( i % 2 != 0 ))
 #   then
 #       continue
  #  fi
  #  echo "$i"
#done

#echo "Loopen är klar!"

#fruits=("apple" "banana" "orange")

#for fruit in "${fruits[@]}"
#do
 #   if [ "$fruit" = "banana" ]
  #  then
   #     continue
    #fi
    #echo "$fruit"
#done

#echo "Alla frukter skrivna!"



#echo "Enter a word?"
#read word

#while [ "$word" != "stop" ]
#do 
 #   if [ "$word" == "stop" ]
  #  then
   #     break
    #fi
    #echo "Enter new word:"
    #read word
#done


#greeting()
#{
#    local name="$1"
#    echo "Selam, $name"
#}

#read -p "What is your name? " user_name
#greeting "$user_name"



choose()
{
    local num1=$1
    local num2=$2
    echo "Want to multiply or sum?"
    read arithmetic
    if [ "$arithmetic" == "multiply" ]
    then
        multiply "$num1" "$num2"
    elif [ "$arithmetic" == "sum" ]
    then 
        sum "$num1" "$num2"
    else 
        echo "Wrong input, try again!"
        read arithmetic
    fi
}

sum()
{
    local num1=$1
    local num2=$2
    sum=$((num1 + num2))
    echo "The sum of $num1 and $num2 is $sum"
}

multiply()
{
    local num1=$1
    local num2=$2
    multi=$((num1 * num2))
    echo "The product of $num1 and $num2 is $multi"
}

echo "Choose first number"
read first_number

echo "Choose second number"
read second_number
choose "$first_number" "$second_number"


#🎯 Mål:
#Skapa ett bashscript som:
#Tar emot användarinmatning.
#Kontrollerar att inmatningen är giltig.
#Ger tydlig feedback när fel uppstår.
#Avslutas med olika exit codes beroende på resultatet.

#🧩 Instruktioner:
#Skapa en funktion som heter validate_number().
#Den ska ta ett argument (ett tal).
#Den ska kontrollera:
#Om värdet inte är ett nummer, skriv ut ett felmeddelande och returnera en icke-noll exit code.
#Om värdet är mindre än 0 eller större än 100, skriv ett varningsmeddelande och returnera en icke-noll exit code.
#Om värdet är giltigt, skriv ut ett meddelande som bekräftar det och returnera 0.

#Skapa en funktion som heter sanitize_input().
#Den ska ta en sträng som parameter.
#Den ska ta bort alla tecken som inte är alfanumeriska (A–Z, a–z, 0–9).
#Den ska returnera den “rensade” versionen.

#I huvudprogrammet:
#Fråga användaren efter ett “användarnamn” och ett “nummer”.
#Anropa sanitize_input() för att rensa användarnamnet.
#Anropa validate_number() för att kontrollera numret.
#Om validate_number() returnerar ett fel (exit code ≠ 0), skriv ut ett tydligt meddelande om misslyckad validering.
#Annars skriv ut att all data är giltig.

#Avsluta programmet med:
#Exit code 0 vid lyckad validering.
#Exit code 1 vid fel.

val_nr()
{
    local nr=$1

    if [[ ! $nr =~ ^[0-9]+$ ]]
    then
        echo "Invalid input! No numeric value!"
        return 1
    elif (( nr < 0 || nr > 100 ))
    then
        echo "Wrong number!"
        return 1
    else
        echo "Number accepted!"
        return 0
    fi
}

sant_input()
{
    local input=$1
    local sanitized=${input//[^A-Za-z0-9]/}

    echo "$sanitized"
}


echo "Choose a username"
read username

echo "Choose a number"
read number

val_nr "$number"
exit_wrong=$?

if (( exit_wrong != 0 ))
then
    echo "Invalid input, failed!"
else
    echo "Accepted validation, all data is good!"
fi

sant_username=$(sant_input "$username")
echo "Sanitized username: $sant_username"


#🧠 Uppgift 7 – Kombinera loops, funktioner och validering
#🎯 Mål:

#Skapa ett bashscript som kombinerar:
#funktioner med parametrar
#user input
#validering & sanering
#loopar (for eller while)
#break och continue

#🧩 Instruktioner:

#Definiera två funktioner:
#sanitize_username() – tar ett användarnamn som parameter och tar bort alla icke-alfanumeriska tecken.
#validate_age() – tar en ålder som parameter och:

#kontrollerar att värdet är numeriskt
#kontrollerar att åldern är minst 18
#returnerar 0 om giltig, annars 1

#I huvudprogrammet:
#Använd en while-loop som låter användaren registrera upp till 5 personer.
#För varje person:

#Be användaren skriva in ett användarnamn och en ålder.
#Sanera användarnamnet med sanitize_username().
#Validera åldern med validate_age().
#Om åldern inte är giltig → skriv ut felmeddelande och fortsätt till nästa iteration.
#Om användaren skriver "stop" som användarnamn → bryt loopen.
#Annars → skriv ut ett meddelande som bekräftar att personen har registrerats.

#Efter loopen:
#Skriv ut hur många giltiga registreringar som har gjorts.

#Avsluta skriptet med:
#Exit code 0 om minst en registrering lyckades.
#Exit code 1 om inga registreringar lyckades.

