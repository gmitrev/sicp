; Writing
;
; (* (expmod base (/ exp 2) m)
;    (expmod base (/ exp 2) m))
;
; instead of
;
; (double (expmod base (/ exp 2 ) m))
;
; is slower because expmode is called 2 times instead of
; one
