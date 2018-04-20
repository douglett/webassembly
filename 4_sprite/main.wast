(module
 (type $0 (func (result i32)))
 (type $1 (func (param i32) (result i32)))
 (type $2 (func (param i32 i32) (result i32)))
 (type $3 (func (param f64 f64) (result f64)))
 (import "env" "memory" (memory $0 21))
 (table 0 anyfunc)
 (data (i32.const 4) "@\d9\14\00")
 (data (i32.const 12) "@\01\00\00")
 (data (i32.const 16) "\f0\00\00\00")
 (data (i32.const 20) "@\00\00\00")
 (export "test1" (func $0))
 (export "getsprite" (func $1))
 (export "paint" (func $2))
 (func $0 (type $0) (result i32)
  (i32.const 101)
 )
 (func $1 (type $1) (param $var$0 i32) (result i32)
  (local $var$1 i32)
  (block $label$0 i32
   (i32.store offset=8
    (tee_local $var$1
     (i32.sub
      (i32.load offset=4
       (i32.const 0)
      )
      (i32.const 16)
     )
    )
    (get_local $var$0)
   )
   (block $label$1
    (br_if $label$1
     (i32.eq
      (get_local $var$0)
      (i32.const -1)
     )
    )
    (block $label$2
     (br_if $label$2
      (i32.lt_s
       (i32.load offset=8
        (get_local $var$1)
       )
       (i32.const 0)
      )
     )
     (br_if $label$2
      (i32.gt_s
       (i32.load offset=8
        (get_local $var$1)
       )
       (i32.const 63)
      )
     )
     (i32.store offset=12
      (get_local $var$1)
      (i32.add
       (i32.mul
        (i32.load offset=8
         (get_local $var$1)
        )
        (i32.const 16392)
       )
       (i32.const 307248)
      )
     )
     (return
      (i32.load offset=12
       (get_local $var$1)
      )
     )
    )
    (i32.store offset=12
     (get_local $var$1)
     (i32.const 0)
    )
    (return
     (i32.load offset=12
      (get_local $var$1)
     )
    )
   )
   (i64.store offset=32
    (i32.const 0)
    (i64.const 1030792151360)
   )
   (i32.store offset=12
    (get_local $var$1)
    (i32.const 32)
   )
   (i32.load offset=12
    (get_local $var$1)
   )
  )
 )
 (func $2 (type $2) (param $var$0 i32) (param $var$1 i32) (result i32)
  (local $var$2 i32)
  (local $var$3 i32)
  (local $var$4 f64)
  (local $var$5 f64)
  (block $label$0 i32
   (i32.store offset=4
    (i32.const 0)
    (tee_local $var$3
     (i32.sub
      (i32.load offset=4
       (i32.const 0)
      )
      (i32.const 32)
     )
    )
   )
   (i32.store offset=24
    (get_local $var$3)
    (get_local $var$0)
   )
   (i32.store offset=20
    (get_local $var$3)
    (get_local $var$1)
   )
   (i32.store offset=16
    (get_local $var$3)
    (call $1
     (i32.load offset=24
      (get_local $var$3)
     )
    )
   )
   (i32.store offset=12
    (get_local $var$3)
    (call $1
     (i32.load offset=20
      (get_local $var$3)
     )
    )
   )
   (block $label$1
    (block $label$2
     (br_if $label$2
      (i32.eqz
       (i32.load offset=16
        (get_local $var$3)
       )
      )
     )
     (br_if $label$2
      (i32.eqz
       (i32.load offset=12
        (get_local $var$3)
       )
      )
     )
     (br_if $label$2
      (i32.eq
       (i32.load offset=16
        (get_local $var$3)
       )
       (i32.load offset=12
        (get_local $var$3)
       )
      )
     )
     (block $label$3
      (br_if $label$3
       (i32.eqz
        (i32.load
         (i32.load offset=16
          (get_local $var$3)
         )
        )
       )
      )
      (br_if $label$3
       (i32.eqz
        (i32.load offset=4
         (i32.load offset=16
          (get_local $var$3)
         )
        )
       )
      )
      (br_if $label$3
       (i32.eqz
        (i32.load
         (i32.load offset=12
          (get_local $var$3)
         )
        )
       )
      )
      (br_if $label$3
       (i32.eqz
        (i32.load offset=4
         (i32.load offset=12
          (get_local $var$3)
         )
        )
       )
      )
      (i32.store offset=8
       (get_local $var$3)
       (i32.const 0)
      )
      (loop $label$4
       (set_local $var$4
        (call $3
         (f64.convert_s/i32
          (i32.load offset=4
           (i32.load offset=16
            (get_local $var$3)
           )
          )
         )
         (f64.convert_s/i32
          (i32.load offset=4
           (i32.load offset=12
            (get_local $var$3)
           )
          )
         )
        )
       )
       (block $label$5
        (block $label$6
         (br_if $label$6
          (i32.or
           (f64.ge
            (tee_local $var$5
             (f64.convert_s/i32
              (i32.load offset=8
               (get_local $var$3)
              )
             )
            )
            (get_local $var$4)
           )
           (i32.or
            (f64.ne
             (get_local $var$5)
             (get_local $var$5)
            )
            (f64.ne
             (get_local $var$4)
             (get_local $var$4)
            )
           )
          )
         )
         (i32.store offset=4
          (get_local $var$3)
          (i32.const 0)
         )
         (loop $label$7
          (set_local $var$4
           (call $3
            (f64.convert_s/i32
             (i32.load
              (i32.load offset=16
               (get_local $var$3)
              )
             )
            )
            (f64.convert_s/i32
             (i32.load
              (i32.load offset=12
               (get_local $var$3)
              )
             )
            )
           )
          )
          (br_if $label$5
           (i32.or
            (f64.ge
             (tee_local $var$5
              (f64.convert_s/i32
               (i32.load offset=4
                (get_local $var$3)
               )
              )
             )
             (get_local $var$4)
            )
            (i32.or
             (f64.ne
              (get_local $var$5)
              (get_local $var$5)
             )
             (f64.ne
              (get_local $var$4)
              (get_local $var$4)
             )
            )
           )
          )
          (i32.store
           (i32.add
            (i32.add
             (tee_local $var$1
              (i32.load offset=12
               (get_local $var$3)
              )
             )
             (i32.shl
              (i32.add
               (i32.mul
                (tee_local $var$0
                 (i32.load offset=8
                  (get_local $var$3)
                 )
                )
                (i32.load
                 (get_local $var$1)
                )
               )
               (tee_local $var$1
                (i32.load offset=4
                 (get_local $var$3)
                )
               )
              )
              (i32.const 2)
             )
            )
            (i32.const 8)
           )
           (i32.load
            (i32.add
             (i32.add
              (tee_local $var$2
               (i32.load offset=16
                (get_local $var$3)
               )
              )
              (i32.shl
               (i32.add
                (i32.mul
                 (get_local $var$0)
                 (i32.load
                  (get_local $var$2)
                 )
                )
                (get_local $var$1)
               )
               (i32.const 2)
              )
             )
             (i32.const 8)
            )
           )
          )
          (i32.store offset=4
           (get_local $var$3)
           (i32.add
            (get_local $var$1)
            (i32.const 1)
           )
          )
          (br $label$7)
         )
         (unreachable)
        )
        (i32.store offset=28
         (get_local $var$3)
         (i32.const 0)
        )
        (br $label$1)
       )
       (i32.store offset=8
        (get_local $var$3)
        (i32.add
         (i32.load offset=8
          (get_local $var$3)
         )
         (i32.const 1)
        )
       )
       (br $label$4)
      )
      (unreachable)
     )
     (i32.store offset=28
      (get_local $var$3)
      (i32.const 0)
     )
     (br $label$1)
    )
    (i32.store offset=28
     (get_local $var$3)
     (i32.const 1)
    )
   )
   (set_local $var$1
    (i32.load offset=28
     (get_local $var$3)
    )
   )
   (i32.store offset=4
    (i32.const 0)
    (i32.add
     (get_local $var$3)
     (i32.const 32)
    )
   )
   (get_local $var$1)
  )
 )
 (func $3 (type $3) (param $var$0 f64) (param $var$1 f64) (result f64)
  (local $var$2 i64)
  (local $var$3 i64)
  (block $label$0 f64
   (block $label$1
    (block $label$2
     (br_if $label$2
      (i64.gt_u
       (i64.and
        (tee_local $var$2
         (i64.reinterpret/f64
          (get_local $var$0)
         )
        )
        (i64.const 9223372036854775807)
       )
       (i64.const 9218868437227405312)
      )
     )
     (block $label$3
      (br_if $label$3
       (i64.le_u
        (i64.and
         (tee_local $var$3
          (i64.reinterpret/f64
           (get_local $var$1)
          )
         )
         (i64.const 9223372036854775807)
        )
        (i64.const 9218868437227405312)
       )
      )
      (return
       (get_local $var$0)
      )
     )
     (br_if $label$1
      (i32.ne
       (i32.wrap/i64
        (i64.shr_u
         (get_local $var$2)
         (i64.const 63)
        )
       )
       (i32.wrap/i64
        (i64.shr_u
         (get_local $var$3)
         (i64.const 63)
        )
       )
      )
     )
     (set_local $var$1
      (select
       (get_local $var$0)
       (get_local $var$1)
       (f64.lt
        (get_local $var$0)
        (get_local $var$1)
       )
      )
     )
    )
    (return
     (get_local $var$1)
    )
   )
   (select
    (get_local $var$0)
    (get_local $var$1)
    (i64.lt_s
     (get_local $var$2)
     (i64.const 0)
    )
   )
  )
 )
)

