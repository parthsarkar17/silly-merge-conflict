let factorial n =
  let rec factorial_aux acc = function
    | 0 -> acc
    | m -> (
        match m < 0 with
        | true -> raise (Failure "Negative Inputs Undefined")
        | false -> factorial_aux (m * acc) (m - 1))
  in
  factorial_aux 1 n

let conflict () =
  print_endline
    ("" (* <-- fill in some string here *) ^ (9 |> factorial |> string_of_int));
  print_endline "";
  (* ^ fill in some string here *)
  print_endline "" (* <-- fill in some string here *)

let () = conflict ()
