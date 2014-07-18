Docker image with Oracle JDK 7
==============================

Most Dockerfile I've seen so far install Java using apt-get package manager. As Oracle license prevent this one to be available in default distribution repository, some use alternate builds (openJDK) or custom PPA repositories.

As installing Java is a basic process - untar, done - I can't see a major benefit in using system packages. So this Dockerfile download the official Oracle binaries (accepting license) and unpack it. For convenience, symlinks are created to `/usr/local/bin` - arguably could rely on JAVA_HOME/bin set in PATH
