[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/SPs4PNWX)
# Lab 1 : CEG 3400 Intro to Cyber Security

## Name: Aurelio Scott

### Task 1: Hashing

**Reminder Deliverable:** Is your `salted-data.csv` in this repository?

Answer the following in this file:

* How many unique users are in the data?

42

* How many salts did you create?

42

* How many possible combinations will I need to try to figure out the secret ID
  of all students (assume I know all potential secret IDs and have your 
  `salted-data.csv`)

1,764

* Instead of salts, if you were to use a nonce (unique number for each hashed
  field) how many possible combinations would I need to try?

54,684

* Given the above, if this quiz data were *actual* class data, say for example
  your final exam, how would you store this dataset?  Why?

I would store it using nonces instead as that would prevent all of someone's quiz answers from being breached and instead would only give you one attempted answer for each solved nonce and secret ID. Or at least it would take a lot longer for whatever sort of attack is being incorporated against the salted-data.csv file.


```bash
all commands and comments are in the `code` file located in the root of this repository
```

---

### Task 2: Crypto Mining

**Reminder Deliverable:** Is your "mining" code in this repository (`mining/`)?
**Reminder Deliverable:** Is your nonce + word combos in `coins.txt`?

Answer the following:

* Paste your ***nonce+word(s) and hash(s)*** below ( either 3x `000` hashes or 1x `0000`
hash)

```
00009e6713a6cebb4b7e901cb0f5eafc948bf3cde9412321eb27c7e47510faf8  - 95other
```

* How many words were in your dictionary?

1,015

* How many nonces did your code iterate over?

100 (10 through 100)

* What was the maximum number of hashes your code *could* compute given the above?

101,500 (100 iterations times 1015 words)

* What did you think about Task 2?

It was good, it didn't take as long to complete as task 1 and I believe it does a good
job on giving insight into cryptography and its relation to the blockchain.

* Is there a better way than brute force to attempt to get higher valued coins?

No

* Why or why not?

The hashing process is supposed to be unpredictable and random when it comes to creating new hashes,
so there's isn't any way of predicting the output of a hash.