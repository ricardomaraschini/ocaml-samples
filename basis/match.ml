(**
 * compiling:
 * ocamlc match.ml -o match
 *)

(**
 * try to match the number of elements of a list
 *)
let get_first_elem elems =
	match elems with
	| one :: two :: three -> "two or more elements\n"
	| one :: two -> "at least one element\n"
	| [] -> "empty list"
;;

let main = 
	let str = get_first_elem [1; 2; 3] in
	(* let str = get_first_elem [1] in *)
	(* let str = get_first_elem [] in *)
	print_string str
;;

main
