type fabric = Linen | Cotton | Wool

let cost_per_yard_of_fabric f =
  match f with
    Linen -> 15
    | Cotton -> 6
    | Wool -> 18
;;

print_endline ("Linen cost per yard: " ^ string_of_int (cost_per_yard_of_fabric Linen));;
print_endline ("Cotton cost per yard: " ^ string_of_int (cost_per_yard_of_fabric Cotton));;
print_endline ("Wool cost per yard: " ^ string_of_int (cost_per_yard_of_fabric Wool));

type item = Fabric_Sample | Dress of int | Suit of int * int;;

let yards_required_for_item p =
  match p with
    Fabric_Sample -> 1
    | Dress (yards) -> yards 
    | Suit (jacket_yards, pants_yards) -> jacket_yards * pants_yards
;;

let sample = Fabric_Sample;;
let mini_dress = Dress 4;;
let maxi_dress = Dress 8;;

let a_suit = Suit (3, 6);;

print_endline ("Yards for sample: " ^ string_of_int (yards_required_for_item sample));;
print_endline ("Yards for mini dress: " ^ string_of_int (yards_required_for_item mini_dress));;
print_endline ("Yards for maxi dress: " ^ string_of_int (yards_required_for_item maxi_dress));
print_endline ("Yards for suit: " ^ string_of_int (yards_required_for_item a_suit));;

type project = { itm : item; fab: fabric};;

let fabric_budget_for_project proj = 
  (yards_required_for_item proj.itm) * (cost_per_yard_of_fabric proj.fab)
;;

let summer_suit = {fab=Linen; itm = a_suit};;
let winter_suit = { itm = a_suit; fab = Wool};;

print_endline ("Summer suit: $" ^ string_of_int (fabric_budget_for_project summer_suit));;
print_endline ("Winter suit: $" ^ string_of_int (fabric_budget_for_project winter_suit));;

let good_idea_for_project proj =
  match proj with
  { fab = Wool; itm = Dress yards } -> ( if yards < 5
    then "why are you making a summer dress out of wool??"
    else "nice winter dress, sounds good")
    | { fab = Linen; itm = Suit (_, _) } -> "hm, linen suits aren't really in right now"
    | _ -> "eh, not sure"
  ;;


print_endline ("Good idea? " ^ good_idea_for_project { fab= Wool; itm = mini_dress});;
print_endline ("Good idea? " ^ good_idea_for_project { fab=Wool; itm=maxi_dress});;
print_endline ("Good idea? " ^ good_idea_for_project { fab=Linen; itm=Suit(4,6)});;


let x : int = 164;;
let y : float = 164.0;;
let z : string = "164";;
let linen : fabric = Linen;;
let sample : item = Fabric_Sample;;
let a_line_dress : item = Dress (8);;
let suit: item = Suit (4, 6);;
let summer_dress : project = {itm= a_line_dress; fab=linen};;


