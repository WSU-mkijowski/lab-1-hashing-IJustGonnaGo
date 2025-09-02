#!/bin/bash


echo "Starting The Miner..."

## Prints all words in provided dictionary
for i in $(cat ~/git/lab-1-hashing-IJustGonnaGo/data/dictionary); do

  # iterates to find 100 nonces for each word
  for k in $(seq 10 110); do
    
    # sets the variable noncedRawWord to the nonce prepended to the current dictionary word
    noncedRawWord="$k$i"

    # finds the hash of the noncedRawWord
    hash=$(printf $noncedRawWord | sha256sum)

    # prints the hash plus the noncedRawWord
    echo "$hash$noncedRawWord"
  done
done

echo ""


