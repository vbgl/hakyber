require import AllCore List Int IntDiv CoreMap Real Number Ring StdOrder BitEncoding.
from Jasmin require import JModel.
require import Array256 Array128 Array32 Array16.
require import NTT_Fq.
require import AVX2_Ops.
import Kyber.
import NTT_Properties.

import Zq IntOrder BitReverse.

theory NTT_Avx2.

abbrev nttpack_idx = Array256.of_list witness
  [0; 16; 32; 48; 64; 80; 96; 112; 1; 17; 33; 49; 65; 81; 97; 113;
   2; 18; 34; 50; 66; 82; 98; 114; 3; 19; 35; 51; 67; 83; 99; 115;
   4; 20; 36; 52; 68; 84; 100; 116; 5; 21; 37; 53; 69; 85; 101; 117;
   6; 22; 38; 54; 70; 86; 102; 118; 7; 23; 39; 55; 71; 87; 103; 119;
   8; 24; 40; 56; 72; 88; 104; 120; 9; 25; 41; 57; 73; 89; 105; 121;
   10; 26; 42; 58; 74; 90; 106; 122; 11; 27; 43; 59; 75; 91; 107; 123;
   12; 28; 44; 60; 76; 92; 108; 124; 13; 29; 45; 61; 77; 93; 109; 125;
   14; 30; 46; 62; 78; 94; 110; 126; 15; 31; 47; 63; 79; 95; 111; 127;
   128; 144; 160; 176; 192; 208; 224; 240; 129; 145; 161; 177; 193; 209; 225; 241;
   130; 146; 162; 178; 194; 210; 226; 242; 131; 147; 163; 179; 195; 211; 227; 243;
   132; 148; 164; 180; 196; 212; 228; 244; 133; 149; 165; 181; 197; 213; 229; 245;
   134; 150; 166; 182; 198; 214; 230; 246; 135; 151; 167; 183; 199; 215; 231; 247;
   136; 152; 168; 184; 200; 216; 232; 248; 137; 153; 169; 185; 201; 217; 233; 249;
   138; 154; 170; 186; 202; 218; 234; 250; 139; 155; 171; 187; 203; 219; 235; 251;
   140; 156; 172; 188; 204; 220; 236; 252; 141; 157; 173; 189; 205; 221; 237; 253;
   142; 158; 174; 190; 206; 222; 238; 254; 143; 159; 175; 191; 207; 223; 239; 255].

abbrev nttunpack_idx = Array256.of_list witness
  [0; 8; 16; 24; 32; 40; 48; 56; 64; 72; 80; 88; 96; 104; 112; 120;
   1; 9; 17; 25; 33; 41; 49; 57; 65; 73; 81; 89; 97; 105; 113; 121;
   2; 10; 18; 26; 34; 42; 50; 58; 66; 74; 82; 90; 98; 106; 114; 122;
   3; 11; 19; 27; 35; 43; 51; 59; 67; 75; 83; 91; 99; 107; 115; 123;
   4; 12; 20; 28; 36; 44; 52; 60; 68; 76; 84; 92; 100; 108; 116; 124;
   5; 13; 21; 29; 37; 45; 53; 61; 69; 77; 85; 93; 101; 109; 117; 125;
   6; 14; 22; 30; 38; 46; 54; 62; 70; 78; 86; 94; 102; 110; 118; 126;
   7; 15; 23; 31; 39; 47; 55; 63; 71; 79; 87; 95; 103; 111; 119; 127;
   128; 136; 144; 152; 160; 168; 176; 184; 192; 200; 208; 216; 224; 232; 240; 248;
   129; 137; 145; 153; 161; 169; 177; 185; 193; 201; 209; 217; 225; 233; 241; 249;
   130; 138; 146; 154; 162; 170; 178; 186; 194; 202; 210; 218; 226; 234; 242; 250;
   131; 139; 147; 155; 163; 171; 179; 187; 195; 203; 211; 219; 227; 235; 243; 251;
   132; 140; 148; 156; 164; 172; 180; 188; 196; 204; 212; 220; 228; 236; 244; 252;
   133; 141; 149; 157; 165; 173; 181; 189; 197; 205; 213; 221; 229; 237; 245; 253;
   134; 142; 150; 158; 166; 174; 182; 190; 198; 206; 214; 222; 230; 238; 246; 254;
   135; 143; 151; 159; 167; 175; 183; 191; 199; 207; 215; 223; 231; 239; 247; 255].

abbrev shuffle8_idx = Array32.of_list witness
  [0; 1; 2; 3; 4; 5; 6; 7; 16; 17; 18; 19; 20; 21; 22; 23;
   8; 9; 10; 11; 12; 13; 14; 15; 24; 25; 26; 27; 28; 29; 30; 31].

abbrev shuffle4_idx = Array32.of_list witness
  [0; 1; 2; 3; 16; 17; 18; 19; 8; 9; 10; 11; 24; 25; 26; 27;
   4; 5; 6; 7; 20; 21; 22; 23; 12; 13; 14; 15; 28; 29; 30; 31].

abbrev shuffle2_idx = Array32.of_list witness
  [0; 1; 16; 17; 4; 5; 20; 21; 8; 9; 24; 25; 12; 13; 28; 29;
   2; 3; 18; 19; 6; 7; 22; 23; 10; 11; 26; 27; 14; 15; 30; 31].

abbrev shuffle1_idx = Array32.of_list witness
  [0; 16; 2; 18; 4; 20; 6; 22; 8; 24; 10; 26; 12; 28; 14; 30;
   1; 17; 3; 19; 5; 21; 7; 23; 9; 25; 11; 27; 13; 29; 15; 31].

op nttpack (rp : 'a Array256.t) : ('a Array256.t) = Array256.init (fun i => rp.[nttpack_idx.[i]])
axiomatized by nttpackE.

op nttunpack (rp: 'a Array256.t) : ('a Array256.t) = Array256.init (fun i => rp.[nttunpack_idx.[i]])
axiomatized by nttunpackE.

op shuf8 (a b: 'a Array16.t) : ('a Array16.t * 'a Array16.t) =
  let c = Array32.init (fun i => if 16 <= i then b.[i %% 16] else a.[i]) in
  let cr = Array32.init (fun i => c.[shuffle8_idx.[i]]) in
  let ar = Array16.init (fun i => cr.[i]) in
  let br = Array16.init (fun i => cr.[i + 16]) in
  (ar, br).

op shuf4 (a b: 'a Array16.t) : ('a Array16.t * 'a Array16.t) =
  let c = Array32.init (fun i => if 16 <= i then b.[i %% 16] else a.[i]) in
  let cr = Array32.init (fun i => c.[shuffle4_idx.[i]]) in
  let ar = Array16.init (fun i => cr.[i]) in
  let br = Array16.init (fun i => cr.[i + 16]) in
  (ar, br).

op shuf2 (a b: 'a Array16.t) : ('a Array16.t * 'a Array16.t) =
  let c = Array32.init (fun i => if 16 <= i then b.[i %% 16] else a.[i]) in
  let cr = Array32.init (fun i => c.[shuffle2_idx.[i]]) in
  let ar = Array16.init (fun i => cr.[i]) in
  let br = Array16.init (fun i => cr.[i + 16]) in
  (ar, br).

op shuf1 (a b: 'a Array16.t) : ('a Array16.t * 'a Array16.t) =
  let c = Array32.init (fun i => if 16 <= i then b.[i %% 16] else a.[i]) in
  let cr = Array32.init (fun i => c.[shuffle1_idx.[i]]) in
  let ar = Array16.init (fun i => cr.[i]) in
  let br = Array16.init (fun i => cr.[i + 16]) in
  (ar, br).

lemma nttpackK: cancel nttpack<:'a> nttunpack<:'a>.
proof.
  rewrite /cancel => x.
  rewrite /nttunpack /nttpack.
  rewrite -ext_eq_all /all_eq //=.
qed.

lemma nttunpackK: cancel nttunpack<:'a> nttpack<:'a>.
proof.
  rewrite /cancel => x.
  rewrite /nttunpack /nttpack.
  rewrite -ext_eq_all /all_eq //=.
qed.

end NTT_Avx2.
