%% This is the application resource file (.app file) for the 'base'
%% application.
{application, cluster_controller,
[{description, "cluster_controller  " },
{vsn, "1.0.0" },
{modules, 
	  [cluster_controller_app,cluster_controller_sup,
	   control,dbase,common]},
{registered,[control,dbase,common]},
{applications, [kernel,stdlib]},
{mod, {cluster_controller_app,[]}},
{start_phases, []}
]}.
