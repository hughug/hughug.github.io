# let the mac pronounce your western-unfriendly chinese name

* Creat a *word-to-say.txt*

* Install **lame** from command line

* ```bash
  say -f word-to-say.txt -o word-to-say.aiff
  lame -m m world-to-say.aiff word-to-say.mp3
  ```
* Done!