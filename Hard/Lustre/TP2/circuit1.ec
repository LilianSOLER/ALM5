(* This file was generated by lv6 version v6.104.0. *)
(*  lv6 -ec -node add1bit -o TP2/circuit1.ec TP2/circuit1.lus *)
(* on lilian-desktop the 23/11/2021 at 08:58:20 *)

node add1bit(a:bool; b:bool; c:bool) 
returns (c1:bool; z:bool);
var
   _split_24:bool;
   _split_23:bool;
   _split_22:bool;
   _split_21:bool;
   _split_20:bool;
   _split_19:bool;
   _split_18:bool;
   _split_17:bool;
   _split_16:bool;
   _split_15:bool;
   _split_14:bool;
   _split_13:bool;
   _split_12:bool;
   _split_11:bool;
   _split_10:bool;
   _split_9:bool;
   _split_8:bool;
   _split_7:bool;
   _split_6:bool;
   _split_5:bool;
   _split_4:bool;
   _split_3:bool;
   _split_2:bool;
   _split_1:bool;
let
   c1 = not (_split_24);
   _split_17 = (a) and (b);
   _split_18 = not (_split_17);
   _split_19 = (a) and (c);
   _split_20 = not (_split_19);
   _split_21 = (_split_18) and (_split_20);
   _split_22 = (b) and (c);
   _split_23 = not (_split_22);
   _split_24 = (_split_21) and (_split_23);
   z = (_split_12) or (_split_16);
   _split_1 = not (a);
   _split_2 = not (b);
   _split_3 = (_split_1) and (_split_2);
   _split_4 = (_split_3) and (c);
   _split_5 = not (a);
   _split_6 = (_split_5) and (b);
   _split_7 = not (c);
   _split_8 = (_split_6) and (_split_7);
   _split_9 = (_split_4) or (_split_8);
   _split_10 = (a) and (b);
   _split_11 = (_split_10) and (c);
   _split_12 = (_split_9) or (_split_11);
   _split_13 = not (b);
   _split_14 = (a) and (_split_13);
   _split_15 = not (c);
   _split_16 = (_split_14) and (_split_15);
tel
-- end of node circuit1__add1bit
