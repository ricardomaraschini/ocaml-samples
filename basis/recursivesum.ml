(**
 * compiling:
 * ocamlc <script>.ml -o <script>
 *)

let rec sum l = 
	match l with
	| [] -> 0; (* on empty list, 0 *)
	| first :: rest -> first + sum rest; (* 
                                                if not empty, sum the
	                                        first with the sum of
                                                the rest 
                                             *)
;;


let main = 
	let s = sum [1;2;3;5;6;7;8;] in
	print_int s;
	print_string "\n";
;;

main
