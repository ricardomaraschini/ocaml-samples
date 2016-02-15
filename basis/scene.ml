(**
 * compiling:
 * ocamlfind ocamlc -linkpkg -thread -package core <scriptname>.ml -o <scriptname>
 *)

open Core.Std;;

type point2d = {
	x: float;
	y: float;
};;

type circle = {
	center: point2d;
	radius: float;
};;

type rect = {
	lower_left: point2d;
	width: float;
	height: float;
};;

type segment = {
	endpoint1: point2d;
	endpoint2: point2d;
};;

(* variant type *)
type scene_element = 
	| Circle of circle
	| Rect of rect
	| Segment of segment
;;


let is_inside point scene_element = 
	match scene_element with
	| Circle { center; radius } ->
		true
	| Rect { lower_left; width; height } ->
		true
	| Segment { endpoint1; endpoint2 } ->
		false
;;

let is_inside_scene point scene = 
	List.exists scene
		~f:(fun el -> is_inside point el)
;;

is_inside_scene { x=3.; y=7.} [ Circle {center = {x=4.;y= 4.}; radius = 0.5 } ];;

