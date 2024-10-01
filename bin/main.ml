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
  print_endline ("Here's the factorial of 9" ^ (9 |> factorial |> string_of_int));
  print_endline "Something random";
  print_endline "Some else random"

let () = conflict ()
