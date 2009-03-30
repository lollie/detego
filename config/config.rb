# Set application path and load paths
PATH            = "."
$: << "#{PATH}/app"
$: << "#{PATH}/lib"
SERVICES_PATH   = "#{PATH}/contained"

# DRB Port management
$port_start   = 15610

# Require the need helpers/libraries
require "container_logger"
require "application_helper"
require "system_helper"