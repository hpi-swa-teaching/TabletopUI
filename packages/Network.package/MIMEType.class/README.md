A MIMEType instances represent a specific MIME type including parameters.

It adheres to https://datatracker.ietf.org/doc/html/rfc2045.

------

Design decisions:
- the comparison currently normalizes the main and sub-type ad hoc to preserve the original case
- parameter names are normalized to simplify the lookup logic