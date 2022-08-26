-- se crea el usuario
create user 'coderhouse@localhost';
-- se le otorga el permiso de usar la clausula select en toda la base
grant select on *.* to 'coderhouse@localhost';
show grants for 'coderhouse@localhost';

-- se crea el siguiente usuario el cual tendra que tener permisos de lectura, inserción y modificación
create user 'ariel@localhost';
grant select,insert,update on *.* to 'coderhouse@localhost';
show grants for 'coderhouse@localhost';