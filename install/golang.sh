#!/usr/bin/bash

echo "=========== Installing golang ==========="
install_go () {

# change to home directory
cd ~

# download the required version and archict
VERSION=$1 
$ curl -O -L "https://golang.org/dl/go${VERSION}.linux-amd64.tar.gz"

# extract tarball
$ rm -rf /usr/local/go && tar -C /usr/local -xzf "go${VERSION}.linux-amd64.tar.gz"
$ 
$ # append to zshrc
$ cat >>~/.zshrc <<EOL
#go
export PATH=\$PATH:/usr/local/go/bin
EOL

}

# log stdout
install_go $1 > log/go_installation.log