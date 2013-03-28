# puppet-mysql

Basic install of `mysql` but sets it to be `UTF-8` from the get-go.

## Install

With librarian-puppet, add the following to your Puppetfile:

	mod 'mysql',
		:git => 'git://github.com/davidwinter/puppet-mysql.git'

Then run `librarian-puppet install`.

## Usage

	class { 'mysql': }

## Author

David Winter <i@djw.me>

## Licence

MIT
