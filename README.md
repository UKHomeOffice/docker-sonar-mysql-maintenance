# Docker Sonar Maintenance Container

[![Build Status](https://travis-ci.org/UKHomeOffice/docker-sonar-mysql-maintenance.svg?branch=master)](https://travis-ci.org/UKHomeOffice/docker-sonar-mysql-maintenance)

This is a one shot container that will create the missing Sonar DB in your database, and also ensure the password is up 
to date (and not the default one).

If you are looking for a container that has a MySQL server running within it, that has the sonar database, see 
[UKHomeOffice/docker-mysql-sonarqube](https://github.com/UKHomeOffice/docker-mysql-sonarqube).

## Getting Started

These instructions will cover usage information and for the docker container 

### Prerequisities


In order to run this container you'll need docker installed.

* [Windows](https://docs.docker.com/windows/started)
* [OS X](https://docs.docker.com/mac/started/)
* [Linux](https://docs.docker.com/linux/started/)

### Usage

#### Container Parameters

Provide no parameters and the container will ensure the root password is set correctly and create the Sonar database.
in the directory and exit

```shell
docker run quay.io/ukhomeofficedigital/sonar-mysql-maintenance:v0.1.0
```

Provide any other parameter and it'll execute it

```shell
docker run quay.io/ukhomeofficedigital/sonar-mysql-maintenance:v0.1.0 echo hello
```

will echo `hello`

#### Environment Variables

* `MYSQL_HOST` - Host of MySQL server
* `MYSQL_PORT` - MySQL Port (defaults to `3306`)
* `DEFAULT_PW` - Default password your MySQL server is started up with (defaults to `changeme`)
* `MYSQL_PASSWORD_PATH` - Path to file with new password in

#### Kubernetes Example

See the [kb8 directory](kb8)

## Built With

* [UKHomeOffice/docker-mysql-maintenance v0.1.0](https://github.com/UKHomeOffice/docker-sonar-mysql-maintenance/releases/tag/v0.1.0)

## Find Us

* [GitHub](https://github.com/UKHomeOffice/docker-sonar-mysql-maintenance)
* [Quay.io](https://quay.io/ukhomeofficedigital/sonar-mysql-maintenance/docker-repository)

## Contributing

Please read [CONTRIBUTING.md](CONTRIBUTING.md) for details on our code of conduct, and the process for submitting pull requests to us.

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the 
[tags on this repository](https://github.com/UKHomeOffice/docker-sonar-mysql-maintenance/tags). 

## Authors

See also the list of [contributors](https://github.com/UKHomeOffice/docker-sonar-mysql-maintenance/contributors) who 
participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.

