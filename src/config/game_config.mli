(* config structure. *)

type t = {
  height : int32 option; [@sexp.option]
  width : int32 option; [@sexp.option]
  difficulty : int32 option; [@sexp.option]
  steps : int32 option; [@sexp.option]
  prints : int32 option; [@sexp.option]
}
[@@deriving sexp]

(** [load file] récupère le fichier [file] et charge ses configs. *)
val load : Fpath.t -> unit

(** [height ()] retourne la hauteur de la grille sinon [None]. *)
val height : unit -> int32 option

(** [width ()] retourne la largeur de la grille sinon [None]. *)
val width : unit -> int32 option

(** [difficulty ()] retourne la difficulté de la grille sinon [None]. *)
val difficulty : unit -> int32 option

(** [set_steps value] met a jour le nombre d'étapes dans la simulation. *)
val set_steps : int32 option -> unit

(** [steps ()] retourne le nombre d'étapes à simuler sinon [None]. *)
val steps : unit -> int32 option

(** [set_prints value] met à jour le nombre d'affichage à afficher. *)
val set_prints : int32 option -> unit

(** [prints ()] retourne le nombre d'affichage sinon [None]. *)
val prints : unit -> int32 option
