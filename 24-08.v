Check true.

Check 2.

Check 2+1.

Check false.
Definition x := 43.

Check x.

(*Everything has a type coq*)

(* Set Printing Universe.  *)

Check 2. (* 2 : nat*)
Check nat. (* nat : Set*)
Check Set. (* Set : Type*)
Check Type. (* Type : Type*) (* One may think Type is of type 'Type', 
            but if you uncomment the printing universe line we can see the infinite hierachy of types *)


Check Prop.

Check True.

(* x : True  as a  Judgement makes sense because True is a type (actually prop) *)


(* x : true  as a  Judgement doesn't makes sense as true is not a type *)

Print True.
Definition foo : True := I.

Lemma True_is_true : True.
  trivial.
Qed.

Definition Foo : True.
  exact I.
  Show Proof.
Qed.

Require Import Ring.
Require Import Arith.
Goal forall a b : nat, (a+b)*(a+b) = a*a + 2*a*b + b*b.
  intros a b.
  ring.
  Show Proof.
Qed.
