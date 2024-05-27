let f x = 
if x = "61C"
    then "A prereq!"
else if x = "164"
  then "I'm taking this now!"
else if x = "264"
  then "I may take this later!"
else "Default: " ^ x
;;


let () = print_endline (f "test");;
let () = print_endline (f "164");;
let () = print_endline (f 164);;


let g x = 
  match x with
  "61C" -> "A preqreq!"
  | "164" -> "I'm taking this now!"
  | "264" -> "I may take this later!"
  | _ -> "Default: " ^ x
;;

print_endline (g "test");
print_endline (g "164");
print_endline (g 164);


let ready prior_course current_course = 
  match prior_course with
  "61C" -> match current_course with
      "164" -> "ready!"
      | _ -> "hm, not sure"
    | _ -> "hm, not sure about that either"
;;