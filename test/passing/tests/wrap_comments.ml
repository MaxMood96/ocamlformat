[@@@ocamlformat "wrap-comments=true"]

type t =
  | Aaaaaaaaaa (* Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. *)
  | Bbbbbbbbbb

let _ =
  [ "a"
  ; "b"
  (* first line
     second line *)
  ; "c"
  (* first line

     second line
  *)
  ; "d"
  (* first line


     second line *)
  ; "e"
  (* first line

     second line
         *)
  ; "f"
  (* first line

     second line


         *)
  ; "g"
  ]

let _ =
  let _ =
    (* This is indented 7
This 0 *)
    0
  in
  0

let _ =
  (*no space before
    no space after*)
  0

let _ =
  (* 
    blah blah
  *)
  ()
;;

(*
 * foo
 * bar
 *)

(*
 * foo
   bar
 *)

let _ =
  f
      (* foo
      *)
    a

(*   1
 * + 2
 * ---
 *   3
 *)

[@@@ocamlformat "wrap-comments=false"]

type t =
  | Aaaaaaaaaa (* Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. *)
  | Bbbbbbbbbb

let rex =
  Pcre.regexp
    ("^[0-9]{2}"
     (* xxxxxxxxxxx               *)
     ^ "(.{12})"
     (* xxxxxxxxxxxxxxxxxx        *)
     ^ "(.{4})"
     (* xxxxxxxxxxxx              *)
     ^ "([0-9]{3})"
     (* xxxxxxxx                  *)
     ^ "(.{60})"
     (* xxxxxxxxxxxxxxxxxxxx      *)
     ^ "(.{12})"
     (* xxxxxxxxxxxxxxx           *)
     ^ "(.{12})"
     (* xxxxxxxxxxxxxxxxxxx       *)
     ^ "([0-9]{3})"
     (* xxxxxxxxxxxxxxxxxxxxxxxxx *)
     ^ "([0-9]{3})"
     (* xxxxxxxxxxx               *)
     ^ "(.{15})"
     (* xxxxxxxxxxxxxxxxxx        *)
     ^ "([0-9]{7})"
     (* xxxxxxxxxxxxx             *)
     ^ "(.{10})"
     (* xxxxxxxxxxxxx             *)
     ^ date_fmt
     (* xxxxxxxxxxxxx             *)
     ^ "([0-9]{18})"
     (* xxxxx                     *)
     ^ "(.)"
     (* xxxxxxxxxxx               *)
     ^ "([0-9]{3})"
     (* xxxxxxxxxxxxxx            *)
     ^ "(.{15})"
     (* xxxxxxxxxxxxxxxxxxxx      *)
     ^ "(.{3})"
     (* xxxxxxxxxx                *)
     ^ "(.{27})$")
;;

type foo =
  { some_field : int
    (* long long long long long long long long long long long long long long
     * long long long long *)
  ; another_field : string }

let _ =
  [ "a"
  ; "b"
  (* first line
     second line *)
  ; "c"
  (* first line

     second line
  *)
  ; "d"
  (* first line


     second line *)
  ; "e"
  (* first line

     second line
         *)
  ; "f"
  (* first line

     second line


         *)
  ; "g"
  ]

let _ =
  let _ =
    (* This is indented 7
This 0 *)
    0
  in
  0

let _ =
  (*no space before
    no space after*)
  0

let _ =
  (*no space before
    just newline after
*)
  0

let _ =
  (* Optimal 5-element sorting network:

     {v
        1--o-----o-----o--------------1
           |     |     |
        2--o-----|--o--|-----o--o-----2
                 |  |  |     |  |
        3--------o--o--|--o--|--o-----3
                       |  |  |
        4-----o--------o--o--|-----o--4
              |              |     |
        5-----o--------------o-----o--5
      v} *)
  ()
;;

let _ =
  (* 
    blah blah
  *)
  ()
;;

(*
 * foo
 * bar
 *)

(*
 * foo
   bar
 *)

let _ =
  (* It is very confusing - same expression has two different types in two contexts:*)
  (* 1. if passed as parameter it's RETURN_TYPE* since we are passing it as rvalue *)
  (* 2. for return expression it's RETURN_TYPE since backend allows to treat it as lvalue*)
  (*    of RETURN_TYPE *)
  (* Implications: *)
  (* Fields: field_deref_trans relies on it - if exp has RETURN_TYPE then *)
  (*         it means that it's not lvalue in clang's AST (it'd be reference otherwise) *)
  (* Methods: method_deref_trans actually wants a pointer to the object, which is*)
  (*          equivalent of value of ret_param. Since ret_exp has type RETURN_TYPE,*)
  (*          we optionally add pointer there to avoid backend confusion. *)
  (*          It works either way *)
  (* Passing by value: may cause problems - there needs to be extra Sil.Load, but*)
  (*                   doing so would create problems with methods. Passing structs by*)
  (*                   value doesn't work good anyway. This may need to be revisited later*)
  let x = y in z

let _ =
  (* It is very confusing - same expression has two different types in two contexts:
   * 1. if passed as parameter it's RETURN_TYPE* since we are passing it as rvalue
   * 2. for return expression it's RETURN_TYPE since backend allows to treat it as lvalue
   *    of RETURN_TYPE
   * Implications:
   * Fields: field_deref_trans relies on it - if exp has RETURN_TYPE then
   *         it means that it's not lvalue in clang's AST (it'd be reference otherwise)
   * Methods: method_deref_trans actually wants a pointer to the object, which is
   *          equivalent of value of ret_param. Since ret_exp has type RETURN_TYPE,
   *          we optionally add pointer there to avoid backend confusion.
   *          It works either way
   * Passing by value: may cause problems - there needs to be extra Sil.Load, but
   *                   doing so would create problems with methods. Passing structs by
   *                   value doesn't work good anyway. This may need to be revisited later*)
  let x = y in z

let _ =
  f
      (* foo
      *)
    a

(*   1
 * + 2
 * ---
 *   3
 *)

(* Multiline comment with the comment close on its own line
 * *)
