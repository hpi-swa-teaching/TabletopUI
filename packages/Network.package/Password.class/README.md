"Hold a password in memory during a run of the app.

After each save (after each startup), when an applicaiton asks for a password, one of two things will happen:
  1> the user will be prompted for the password
  2> If the user was previously prompted, return that password

Passwords are stored encoded.
At shutDown, passwords are cleared (will not be written to disc).

The intent for this class is to avoid storing passwords in code or on files on the system.  Instead, prompt the user during the running of the application."