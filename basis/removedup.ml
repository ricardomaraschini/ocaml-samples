(**
 * compiling:
 * ocamlc <script>.ml -o <script>
 *)


let rec printlist l = 
	match l with
	| [] -> 0
	| hd :: tl ->
		print_string (string_of_int hd);
		print_string " ";
		printlist tl;
;;

let rec remove l =
	match l with
	| [] -> []
	| [hd] -> [hd]
	| hd1 :: hd2 :: tl ->
		if hd1 = hd2 then
			remove (hd2 :: tl)
		else
			hd1 :: remove (hd2 :: tl)

;;

let x = [1;1;2;2;3;4;4;5];;
let ret = remove x;;
printlist ret;;
print_string "\n";;
