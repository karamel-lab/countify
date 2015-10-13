name             'countify'
maintainer       "countify"
maintainer_email "k.hakimzadeh@gmail.com"
license          "Apache v2.0"
description      'Installs/Configures/Runs countify'
version          "0.1"

recipe            "countify::install", "Experiment setup for countify"
recipe            "countify::experiment",  "configFile=; Experiment name: experiment"


depends "kagent"



%w{ ubuntu debian rhel centos }.each do |os|
  supports os
end



attribute "countify/group",
:description => "group parameter value",
:type => "string"

attribute "countify/user",
:description => "user parameter value",
:type => "string"


