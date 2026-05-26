val print_i32 : Kdo.Concrete.I32.t -> (unit, _) Result.t
(** [print_i32 n] affiche un entier 32 bits. *)

val print_i64 : Kdo.Concrete.I64.t -> (unit, _) Result.t
(** [print_i64 n] affiche un entier 64 bits. *)

val random_i32 : unit -> (Kdo.Concrete.I32.t, _) Result.t
(** [random_i32 n] génère un entier aléatoire sur 32 bits. *)

val sleep : Kdo.Concrete.I32.t -> (unit, _) Result.t
(** [sleep seconds] met le processus durant [seconds] uniquement lorsqu'on est
    dans les étapes à afficher. Sinon l'attente est ignorée pour accélérer
    l'exécution. *)

val cell_print : Kdo.Concrete.I32.t -> (unit, _) Result.t
(** [cell_print number] ajoute dans le buffer une cellule (si number = 0 : 🦊
    sinon 🦴). *)

val is_alive : Kdo.Concrete.I32.t -> (Kdo.Concrete.I32.t, _) Result.t
(** [is_alive number] retourne 1 si la cellule est vivante sinon 0. *)

val newline : unit -> (unit, _) Result.t
(** [newline ()] ajoute dans le buffer une nouvelle ligne. *)

val clear_screen : unit -> (unit, _) Result.t
(** [clear_screen ()] affiche puis supprime le contenu du buffer. *)

val empty_buffer : unit -> (unit, _) Result.t
(** [empty_buffer ()] supprime le contenu du buffer. *)

val config_height : unit -> (Kdo.Concrete.I32.t, _) Result.t
(** [config_height ()] récupère la hauteur de la config. *)

val config_width : unit -> (Kdo.Concrete.I32.t, _) Result.t
(** [config_width ()] récupère la largeur de la config. *)

val config_difficulty : unit -> (Kdo.Concrete.I32.t, _) Result.t
(** [config_difficulty ()] récupère la difficulté de la config. *)

val config_steps : unit -> (Kdo.Concrete.I32.t, _) Result.t
(** [config_steps ()] récupère le nombre d'étapes à simuler. *)

val config_prints : unit -> (Kdo.Concrete.I32.t, _) Result.t
(** [config_prints ()] récupère le nombre d'affichage. *)

val read_int : unit -> (Kdo.Concrete.I32.t, _) Result.t
(** [read_int ()] récupère l'entier écrit sur l'entrée standard. *)

val begin_drawing : unit -> (unit, _) Result.t
(** [begin_drawing ()] commence le dessin sur l'interface graphique. *)

val end_drawing : unit -> (unit, _) Result.t
(** [end_drawing ()] fini le dessin sur l'interface graphique et l'affiche. *)

val clear_window : unit -> (unit, _) Result.t
(** [clear_window ()] supprime le dessin sur l'interface graphique. *)

val should_close : unit -> (Kdo.Concrete.I32.t, _) Result.t
(** [should_close ()] vérifie si l'interface graphique doit se fermer ou non. *)

val draw :
  Kdo.Concrete.I32.t ->
  Kdo.Concrete.I32.t ->
  Kdo.Concrete.I32.t ->
  Kdo.Concrete.I32.t ->
  Kdo.Concrete.I32.t ->
  (unit, 'a) Result.t
(** [draw alive x y height width] dessine la cellule sur l'interface graphique.
*)

val close_window : unit -> (unit, _) Result.t
(** [close_window ()] ferme l'interface graphique. *)

val window_opened : unit -> (Kdo.Concrete.I32.t, _) Result.t
(** [window_opened ()] vérifie si la fenetre graphique est ouverte ou non. *)

val m : Kdo.Concrete.Extern_func.extern_func Kdo.Extern.Module.t
(** [m] contient toutes les fonctions externes.*)
