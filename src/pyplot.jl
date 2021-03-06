#!/usr/bin/env julia
# File: pyplot.jl
# Author: Junfeng Li <li424@mcmaster.ca>
# Description: module's main file
# Created: November 29, 2012

module pyplot

# get src location
PYPLOT_JL_HOME = dirname(find_in_path("pyplot.jl"))

include("$PYPLOT_JL_HOME/send.jl")
include("$PYPLOT_JL_HOME/parse.jl")
include("$PYPLOT_JL_HOME/funcs.jl")
include("$PYPLOT_JL_HOME/wrap.jl")
include("$PYPLOT_JL_HOME/alias.jl")

# start ipython and zmq server
start_daemon()
# start zmq client
start_socket()
end # end module
