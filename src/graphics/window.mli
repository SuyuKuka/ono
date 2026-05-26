val create : int -> int -> unit
(** [create width height] initialise la fenêtre graphique de taille
    [width]x[height]. *)

val should_close : unit -> int
(** [should_close ()] vérifie si la fenetre graphique doit fermer. *)

val begin_drawing : unit -> unit
(** [begin_drawing ()] commence le dessin sur l'interface graphique. *)

val end_drawing : unit -> unit
(** [end_drawing ()] fini le dessin sur l'interface graphique et l'affiche. *)

val draw : int -> int -> int -> int -> int -> unit
(** [draw alive x y height width] dessine une cellule à la position [x][y] si
    [alive] vaut 1. *)

val clear : unit -> unit
(** [clear ()] efface la fenetre en mettant un fond noir. *)

val close : unit -> unit
(** [close ()] ferme l'interface graphique. *)

val initialized : unit -> int
(** [initialized ()] vérifie si l'interface graphique est prête. *)
