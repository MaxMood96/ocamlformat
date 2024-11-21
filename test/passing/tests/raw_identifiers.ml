module M : sig
  class \#and : object
    val mutable \#and : int

    method \#and : int
  end
end = struct
  class \#and =
    let \#and = 1 in
    object
      val mutable \#and = \#and

      method \#and = 2
    end
end

let obj = new M.\#and

module M : sig
  type \#and = int
end = struct
  type \#and = string
end

let x = (`\#let `\#and : [`\#let of [`\#and]])

let (`\#let \#rec) = x

let f g ~\#let ?\#and ?(\#for = \#and) () = g ~\#let ?\#and ()

type t = '\#let

type \#mutable = {mutable \#mutable: \#mutable}

let rec \#rec = {\#mutable= \#rec}

type \#and = ..

type \#and += Foo
(* Not allowed in parser: type t += \#and *)

let x = ( ++ )

let x = \#let

let f ~\#let ?\#and () = 1

module type A = sig
  type ('\#let, 'a) \#virtual = '\#let * 'a as '\#mutable

  val foo : '\#let 'a. 'a -> '\#let -> unit

  type foo = {\#let: int}
end

module M = struct
  let ((\#let, foo) as \#val) = (\#mutable, baz)

  let _ = fun (type \#let foo) -> 1

  let f g ~\#let ?\#and ?(\#for = \#and) () = g ~\#let ?\#and ()

  class \#let =
    object
      inherit \#val \#let as \#mutable
    end
end

type 'a \#for = 'a list

type 'a \#sig = 'a \#for

type \#true = bool

type _ t = \#in t
type '\#in t

class ['\#in] c = c

let f \#false = \#false

type t = {x: int \#let}

let x \#let = 42

let x = f ~\#let:42 ~\#and:43

let f ~\#let ~\#and : \#let * \#and = x

;;
kind_abbrev_ \#let = \#and

type t = T : 'a list -> t

let g x =
  let (T (type \#for) (_ : \#for list)) = x in
  ()

let ( lsl ) x y = x lsl y

let \#lsl x y = x lsl y

module type \#sig = sig end

module M = struct let \#mod = 1 end

let _ = M.\#mod
module type \#sig = M

module type M = \#sig

module type M = M with module type \#sig = \#sig
module type M = M with module type \#sig := \#sig

let _ = \#sig.( () )

(* Raw idents in module names are not allowed in parser: *)
(* let (module \#sig : S) = () *)
(* module \#sig (A : S) = M *)
(* module \#sig = M *)
(* module M (\#sig : S) = M *)
(* module M = M (functor (\#sig : S) -> struct end) *)
(* module type S = functor (\#sig : S) -> S' *)
(* module type M = M with module \#sig = \#sig *)
(* module type M = M with module \#sig := \#sig *)
let _ =
  (* let module \#sig = \#sig in *)
  (* let open \#sig in *)
  ()

let%\#let _ = ()
let _ = [%\#let ()]
let _ = () [@\#let]
let _ = () [@@\#let]

let f : type \#in. t = ()
let f : '\#in. t = ()

let \#mod : '\#mod. \#mod = \#mod

let mlet = M.\#let
let mtrue = M.\#true
let mmod = M.\#mod
type tmod = M.\#mod
type tlet = M.\#let
type ttrue = M.\#true

(* class \#mod = object end *)
let f: #M.\#mod -> _ =  new \#mod, new M.\#mod

class type \#mod = object end
class type \#let = \#mod

module type \#mod = sig type \#mod module type \#mod  end

module type t =
  \#mod with type \#mod = M.\#mod
         and module type \#mod = M.\#mod

type \#mod = [`A | `B ]
let g = function #\#mod | #M.\#mod -> ()

type \#mod = ..
type M.\#mod += A

type t = true of int
let x = true 0