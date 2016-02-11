(**
 * compiling:
 * ocamlfind ocamlc -linkpkg -thread -package core <scriptname>.ml -o <scriptname>
 *)
open Core.Std;;

let logline maybe_time msg =
	let time = 
		match maybe_time with
		| None -> Time.now()
		| Some x -> x
	in

	(* 
	 * `time' is only available for
	 * the following instruction due
	 * to `in' usage
	 *)
	Time.to_sec_string time ^ " - " ^ msg ^ "\n"
;;

let line = logline (Some Time.epoch) "teste";;
print_string line;;
let line = logline None "teste";;
print_string line;;
