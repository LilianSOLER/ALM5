(* This file was generated by lv6 version v6.104.0. *)
(*  lv6 -ec -node cir1 -o Lustre/exDocV6.ec Lustre/exDocV6.lus *)
(* on lilian-desktop the 18/11/2021 at 10:54:31 *)

node cir1(a:bool; b:bool) 
returns (c:bool);
var
   _split_1:bool;
let
   c = (a) and (_split_1);
   _split_1 = not (b);
tel
-- end of node exDocV6__cir1