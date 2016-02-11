(**
 * compiling:
 * ocamlfind ocamlc -linkpkg -thread -package core <scriptname>.ml -o <scriptname>
 *)
open Core.Std;;

type point2d = {
	x : float;
	y : float;
};;


(*
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


(*
 * if parameters have the same
 * name of type internal properties
 * we don't need to bind to another
 * variable!
 *)
let mag2 { x; y } =
	print_float (sqrt (x ** 2. +. y ** 2.))
;;
mag2 p;;


(*
 * we may even rever to internal
 * properties like we would do in
 * C!
 *)
let mag3 v1 = 
	print_float (sqrt (v1.x ** 2. +. v1.y ** 2.))
;;
mag3 p;;


(*
 * types inside types
 *)
type circle = {
	center : point2d;
	radius : float;
};;

let c = {
	center = p;
	radius = 30.;
};;
print_float c.center.x;;
print_float c.center.y;;
