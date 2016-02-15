(**
 * compiling:
 * ocamlfind ocamlc -linkpkg -thread -package core <scriptname>.ml -o <scriptname>
 *)

open Core.Std;;


let mya = [| 1; 2; 3; 4; 5; 6; |];;

(* mya on position 1 is equal to zero *)
mya.(1) <- 0;;

print_int mya.(1);;
