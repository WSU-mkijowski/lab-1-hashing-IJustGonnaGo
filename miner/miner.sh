#!/bin/bash


echo "Starting The Miner..."

## Prints all words in provided dictionary
## (you might want to find a bigger dictionary)
for i in $(cat ../data/dictionary); do

  # iterates 100 times
  for k in $(seq 10 110); do
    
    # sets the variable saltedRawWord to the salt prepended to the current dictionary word
    saltedRawWord="$k$i"

    # finds the hash of the saltedRawWord
    hash=$(printf $saltedRawWord | sha256sum)

    # prints the hash plus the saltedRawWord
    echo "$hash - $saltedRawWord"
  done
done

echo ""


