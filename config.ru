#!/usr/bin/env ruby

ENV['PORT'] = '3001' unless ENV['PORT']
ENV['APACHE_ARCH'] = '32'
# There appears to be no uname on Heroku.
# case `uname -m`
# when /^i.86$/ then ENV['APACHE_ARCH'] = '32'
# when 'x86_64' then ENV['APACHE_ARCH'] = '64'
# end

exec("./apache#{ENV['APACHE_ARCH']}/apache2", '-X', '-f', './httpd.conf')

