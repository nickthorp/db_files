# Create an nthorp user

use mysql;

INSERT INTO user
  (host, user, password,
  select_priv, insert_priv, update_priv,
  VALUES ('localhost', 'nthorp', 
  PASSWORD('nopat'), 'Y', 'Y', 'Y');
FLUSH PRIVILEGES;
SELECT host, user, password FROM user WHERE user = 'nthorp';
