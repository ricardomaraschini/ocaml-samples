(**
 * compiling:
 * ocamlc printlist.ml -o printlist
 *)

(*
 * prints a list of strings recursively
 *)
let rec printstringlist l =
	match l with
	| [] -> []
	| header :: tail ->
		print_string header;
		print_string " ";
		printstringlist tail
;;

printstringlist ["one"; "two"; "three" ];;
printstringlist [];;
