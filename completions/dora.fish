# ~/.config/fish/completions/dora.fish

set -l commands check graph build new run up destroy start stop list logs daemon runtime coordinator help

complete -c dora -f -l help -d "Print this usage information." -s h
complete -c dora -f -n "not __fish_seen_subcommand_from $commands" -a help -d ""
complete -c dora -n __fish_use_subcommand -s V -l version -d "Print version"

complete -c dora -n __fish_use_subcommand -a check -d "Check if the coordinator and the daemon is running"
complete -c dora -n __fish_use_subcommand -a graph -d "Generate a visualization of the given graph using mermaid.js. Use --open to open browser"
complete -c dora -n __fish_use_subcommand -a build -d "Run build commands provided in the given dataflow"
complete -c dora -n __fish_use_subcommand -a new -d "Generate a new project or node. Choose the language between Rust, Python, C or C++"
complete -c dora -n __fish_use_subcommand -a run -d "Run a dataflow locally"
complete -c dora -n __fish_use_subcommand -a up -d "Spawn coordinator and daemon in local mode (with default config)"
complete -c dora -n __fish_use_subcommand -a destroy -d "Destroy running coordinator and daemon. If some dataflows are still running, they will be stopped first"
complete -c dora -n __fish_use_subcommand -a start -d "Start the given dataflow path. Attach a name to the running dataflow by using --name"
complete -c dora -n __fish_use_subcommand -a stop -d "Stop the given dataflow UUID. If no id is provided, you will be able to choose between the running dataflows"
complete -c dora -n __fish_use_subcommand -a list -d "List running dataflows"
complete -c dora -n __fish_use_subcommand -a logs -d "Show logs of a given dataflow and node"
complete -c dora -n __fish_use_subcommand -a daemon -d "Run daemon"
complete -c dora -n __fish_use_subcommand -a runtime -d "Run runtime"
complete -c dora -n __fish_use_subcommand -a coordinator -d "Run coordinator"
complete -c dora -n __fish_use_subcommand -a help -d "Print this message or the help of the given subcommand(s)"

complete -c dora -l version -d "Print dora-cli version." -s v
