TODO:

- RTC:
 - [ ] Update time periodically from RTC IC
 - [ ] Calibrate IC
- [ ] Time setting
 - [ ] Blink colons wen setting time
 - [ ] Double blink the digit where current digit is set

- [ ] Double blink all digits if time is not set

- [x] Screen-saver (tube-saver hehe) mode
 - [x] Run it periodically
 - [ ] Tube saver should blink cursor

- Cursor should be handled separately, so that it can be bliked from all states.

- [ ] Web
 - [ ] Store persistent data in device Flash
   - [ ] Create a list of APs and PWs to search where to connect
 - [ ] Read list of APs from Flash and try to connect to them
 - [ ] Run NTP client to get percise time
 - [ ] Boot in AP mode
  - [ ] Host a webpage
   - [ ] Display current time
   - [ ] Display known APs
   - [ ] Save new AP & PW
    - [ ] And most likely the time zone as well
