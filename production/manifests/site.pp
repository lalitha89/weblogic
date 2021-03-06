## site.pp ##

#node "node1.example.com" {
#package { 'httpd':
#	ensure=> present,
#	}
#}
#
node 'node1.example.com' {

#       notify { 'this id test !!': }
#
       class { 'web':   }
#
       notify { "i know u r ${facts['os']['family']} , ur ip is ${facts['networking']['interfaces']['enp0s3']['ip']} ": }
}
#
#
# This file (/etc/puppetlabs/puppet/manifests/site.pp) is the main entry point
# used when an agent connects to a master and asks for an updated configuration.
#
# Global objects like filebuckets and resource defaults should go in this file,
# as should the default node definition. (The default node can be omitted
# if you use the console and don't define any other nodes in site.pp. See
# http://docs.puppetlabs.com/guides/language_guide.html#nodes for more on
# node definitions.)

## Active Configurations ##

# Disable filebucket by default for all File resources:
File { backup => false }

# DEFAULT NODE
# Node definitions in this file are merged with node data from the console. See
# http://docs.puppetlabs.com/guides/language_guide.html#nodes for more on
# node definitions.

# The default node definition matches any node lacking a more specific node
# definition. If there are no other nodes in this file, classes declared here
# will be included in every node's catalog, *in addition* to any classes
# specified in the console for that node.

node default {
	notify { "HEY,this is from master":}  

# This is where you can declare classes for all nodes.
  # Example:
  #   class { 'my_class': }
}
