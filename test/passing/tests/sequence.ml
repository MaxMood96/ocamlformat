let foo x y =
  do_some_setup y ; do_some_setup y ;

  do_some_setup y ; do_some_setup y ;
  important_function x

let foo x y =
  do_some_setup y ;
  important_function x

let foo x y =
  do_some_setup y ;

  important_function x

let foo x y =
  do_some_setup x ;
  do_some_setup y ;

  (* Empty line before *)
  important_function x ;
  another_important_function x y ;

  cleanup x y

let foo x y =
  do_some_setup x ;
  do_some_setup y ;
  (* No empty line *)
  important_function x ;
  another_important_function x y ;
  cleanup x y

let foo x y =
  do_some_setup x ;
  do_some_setup y ;
  (* Empty line after *)

  important_function x ;
  another_important_function x y ;
  cleanup x y

let foo x y =
  do_some_setup x ;
  do_some_setup y ; (* Empty line after, this above *)

  important_function x ;
  another_important_function x y ;
  cleanup x y

let foo x y =
  do_some_setup x ;
  do_some_setup y ;

  (* Empty line before, this under *) important_function x ;
  another_important_function x y ;
  cleanup x y

let foo x y =
  (* Break should not cause an empty line *)
  do_some_setup x
  ;
  do_some_setup y ;

  important_function x ;
  another_important_function x y ;
  cleanup x y

let foo x y =
  do_some_setup x ;
  let () = do_some_setup y in (* Empty line after let *)

  important_function x ;
  another_important_function x y ;
  cleanup x y

let foo x y =
  (* in should not cause an empty line *)
  let () = do_some_setup x
  in
  do_some_setup y ;

  important_function x ;
  another_important_function x y ;
  cleanup x y

(* This test require --max-iter=3 *)
let _ =
  some statement;
  (* comment with an empty line in it

     tricky *)
  an other statement

let foo x y =
  do_some_setup x ;
  let* () = do_some_setup y in (* Empty line after letop *)

  important_function x ;
  another_important_function x y ;
  cleanup x y

let foo x y =
  (* letop in should not cause an empty line *)
  let* () = do_some_setup x
  in
  do_some_setup y ;

  important_function x ;
  another_important_function x y ;
  cleanup x y

let _ =
  (* This let will wrap *)
  let x =
    1
  in

  (* some comment *)
  next statement

[@@@ocamlformat "indicate-multiline-delimiters=closing-on-separate-line"]

let foo x y =
  lazy
    ( fooooooooooooooooooooooo ;
      fooooooooooooooooooooooo ;
      foooooooooooooooooooooooooo ;
      fooooooooooooooooooooooooo
    )