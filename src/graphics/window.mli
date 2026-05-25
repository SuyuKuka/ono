(** [create width height] initialise la fenêtre graphique de taille [width]x[height]. *)
val create : int -> int -> unit

(** [should_close ()] vérifie si la fenetre graphique doit fermer. *)
val should_close : unit -> int

(** [begin_drawing ()] commence le dessin sur l'interface graphique. *)
val begin_drawing : unit -> unit

(** [end_drawing ()] fini le dessin sur l'interface graphique et l'affiche. *)
val end_drawing : unit -> unit

(** [draw alive x y height width] dessine une cellule à la position [x][y] si [alive] vaut 1. *)
val draw : int -> int -> int -> int -> int -> unit

(** [clear ()] efface la fenetre en mettant un fond noir. *)
val clear : unit -> unit

(** [close ()] ferme l'interface graphique. *)
val close : unit -> unit

(** [initialized ()] vérifie si l'interface graphique est prête. *)
val initialized : unit -> int
