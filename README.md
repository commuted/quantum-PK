# quantum-PK

Based on, Learning With Errors 2005, Oded Regev

https://www.quantamagazine.org/quantum-secure-cryptography-crosses-red-line-20150908/

"Learning With Errors

In 2005, Oded Regev devised a cryptographic scheme based on a problem called “learning with errors,” which he proved is as 
secure as the lattice problem is hard. LWE-based schemes work something like this:

Pick any odd number, and don’t tell anyone what it is. That’s your private key. 
Now multiply it by any other number, and add a small even number to it. 
(For example, if your original number was 121, you might multiply it by five and then add two, yielding 607. 
In practice, the numbers are much larger.) Do this many times, producing a list of enlarged, perturbed versions of your 
private key. This list of numbers is your public key. Tell the world.

Now, say someone wants to send you a message (e.g., 0 or 1, attack or retreat, yes or no). 
First this person randomly selects half of the numbers listed in your public key and adds them together. 
Then, to send the message “0,” your correspondent simply sends the sum back to you. 
To send the message “1,” the person adds one to the sum, then sends this back to you. 
Now, to decode the message, you simply divide the sum you’ve received by your private key. 
If the remainder is even, the message is “0.” If the remainder is odd, the message is “1.” "
