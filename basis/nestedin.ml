(**
 * compiling:
 * ocamlfind ocamlc -linkpkg -thread -package core <scriptname>.ml -o <scriptname>
 *)
open Core.Std;;

let x = 7 in
	(* x is 7 inside here *)
	let y = x * x in (* y is 49 from now on *)
		print_int (y + x) (* prints 56 *)
;;
(* x and y don't exist here *)
