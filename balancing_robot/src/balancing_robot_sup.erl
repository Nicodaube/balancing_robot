% @private
% @doc balancing_robot top level supervisor.
-module(balancing_robot_sup).

-behavior(supervisor).

% API
-export([start_link/0]).

% Callbacks
-export([init/1]).

%--- API -----------------------------------------------------------------------

start_link() -> supervisor:start_link({local, ?MODULE}, ?MODULE, []).

%--- Callbacks -----------------------------------------------------------------

init([]) -> {ok, { {one_for_all, 0, 1}, []} }.
