(** Type des fonctions externes pour l'interpréteur symbolique. *)
type extern_func = Kdo.Symbolic.Extern_func.extern_func

(** [print_i32 n] affiche la valeur symbolique de l'entier [n] sur 32 bits. *)
val print_i32 : Kdo.Symbolic.I32.t -> unit Kdo.Symbolic.Choice.t

(** [i32_symbol ()] crée une nouvelle variable symbolique de 32 bits. *)
val i32_symbol : unit -> Kdo.Symbolic.I32.t Kdo.Symbolic.Choice.t

(** [read_int ()] lit un entier sur l'entrée standard et retourne le comme valeur symbolique de 32 bits. *)
val read_int : unit -> Kdo.Symbolic.I32.t Kdo.Symbolic.Choice.t

(** [m] contient toutes les fonctions externes de l'interpréteur symbolique. *)
val m : extern_func Kdo.Extern.Module.t