## Homework 2

1. Using a blockchain explorer, have a look at the following transaaactions, what do they do?

- 0x0ec3f2488a93839524add10ea229e773f6bc891b4eb4794c3337d4495263790b
- 0x4fc1580e7f66c58b7c26881cce0aab9c3509afe6e507527f30566fbf8039bcd0
- 0x552bc0322d78c5648c5efa21d2daa2d0f14901ad4b15531f1ab5bbe5674de34f
- 0x7a026bf79b36580bf7ef174711a3de823ff3c93c65304c3acc0323c77d62d0ed
- 0x814e6a21c8eb34b62a05c1d0b14ee932873c62ef3c8575dc49bcf12004714eda

2. What is the largest account balance you can find?

3. What is special about these accounts:

- 0x1db3439a222c519ab44bb1144fc28167b4fa6ee6
- 0x000000000000000000000000000000000000dEaD

4. Using remix add this contract as a source file

- Compile the contract
- Deploy the contract to the Remix VM environment

---

1.

- TheDAO hack - this transaction shows "TheDAO" attacker exploiting a vulnerability in the smart contracts and siphoning funds. The value of the transaction is 137.62 Ether ($176,328.65 @ $15.49/ETH) https://www.gemini.com/cryptopedia/the-dao-hack-makerdao

- Deployment of Uniswap - value = $0

- Polynetwork hack https://en.wikipedia.org/wiki/Poly_Network_exploit - transaction from Polynetwork exploiter address to itself. The transaction has no value.

- Polynetwork hack - an address associated with the Polynetwork exploit converting stolen assets into DAI stablecoin. Value ~$96 million USD.

- Polynetwork hack - After the funds were returned, Polynetwork offered a $500k bounty to the whitehat hacker. This transaction shows the bounty being paid to the whitehat. Value = 160 ETH (~$205k).

2. The largest balance is ~$96M USD.

3.

- This address has >1500 transactions.
- This is a burn address. Projects send tokens to this address to take them out of circulation.

4. contract compiled & deployed ✅
