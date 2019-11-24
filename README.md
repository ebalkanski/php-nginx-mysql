#A bunch of Docker containers to make your life eaiser ;)
###PHP dev environment with basic tools setup
- PHP 7.3
- Nginx
- MySQL 5.7
- Composer
- Git
- PhpUnit

###Additional goodies, i.e. PHP code quality tools.
The major tool which is used is GrumPHP https://github.com/phpro/grumphp and it is configured to run the following tools:
- phpmd - https://github.com/phpro/grumphp/blob/master/doc/tasks/phpmd.md
- phpcs - https://github.com/phpro/grumphp/blob/master/doc/tasks/phpcs.md 
- phpstan - https://github.com/phpro/grumphp/blob/master/doc/tasks/phpstan.md
- phpunit - https://github.com/phpro/grumphp/blob/master/doc/tasks/phpunit.md

The upper tools are fired in a pre-commit git hook and are configured by the following files in main dir:
- grumphp.yml
- rulesets.xml

###Prerequisites
- You must have Git installed.
- You must add the proper virtual host record to your /etc/hosts file, i.e.
    - 127.0.0.1	php-docker.local
    - In case you want a different name, you must specify it in ./devops/nginx/conf.d/server.conf
- You must be able to execute Makefiles via 'make' command. Otherwise you must take a look at ./Makefile and execute the commands by hand. 

###Environment configuration
Configuration is in .env(will be created for you based on .env-dist) and there you can tweak database config and some Docker params.

###Start the Docker ecosystem
- `mkdir my_project` - create a new project dir.
- `cd my_project` - get into it.
- `git clone git@github.com:ebalkanski/php-nginx-mysql.git .` - clone code from repo.
- `rm -rf .git` - cleanup git data.
    - You can init a new fresh repo if you want and work with it
- `make init`
    - create local Composer dir to share cache
    - create .env file
    - build Docker images
    - install Composer packages
- `make up` - start the whole ecosystem
- `docker-compose exec php /bin/bash` - enter the php container.
- Happy Coding!

###Stop the Docker ecosystem
- type `exit` if you are in the php container.
- `make down`

###Rebuild the Docker ecosystem
- `make build`