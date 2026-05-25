(** Commande [ono concrete] pour exécuter l'interpréteur avec la gestion des arguments 
    (--steps, --config, --seed, etc.). *)
val cmd : Ono_cli.outcome Cmdliner.Cmd.t