(**
 * compiling:
 * ocamlfind ocamlc -linkpkg -thread -package core <scriptname>.ml -o <scriptname>
 *)
open Core.Std;;

type point2d = {
	x : float;
	y : float;
};;


(**
 * p is of type point2d,
 * automagically!
 *)
let p = {
	x = 10.;
	y = 20.;
};;


(**
 * another automagic thing
 * also binds inner properties
 * to parameters px and py
 *)
let mag { x = px; y = py } = 
	print_float (sqrt (px ** 2. +. py ** 2.))
;;

mag p;;
