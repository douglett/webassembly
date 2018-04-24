(module
 (type $0 (func (param i32) (result i32)))
 (type $1 (func (result i32)))
 (type $2 (func (param i32 i32 i32 i32 i32) (result i32)))
 (type $3 (func (param i32 i32) (result i32)))
 (import "env" "memory" (memory $0 21))
 (table 0 anyfunc)
 (data (i32.const 4) "@\db\14\00")
 (data (i32.const 12) "@\01\00\00")
 (data (i32.const 16) "\f0\00\00\00")
 (data (i32.const 20) "@\00\00\00")
 (data (i32.const 24) "\01\00\00\00")
 (export "test1" (func $5))
 (export "getsprite" (func $6))
 (export "clearrect" (func $7))
 (export "paint" (func $8))
 (export "paintall" (func $9))
 (func $0 (type $0) (param $var$0 i32) (result i32)
  (block $label$0 i32
   (i32.store offset=12
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
    (get_local $var$0)
   )
   (get_local $var$0)
  )
 )
 (func $1 (type $0) (param $var$0 i32) (result i32)
  (block $label$0 i32
   (i32.store offset=12
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
    (get_local $var$0)
   )
   (i32.add
    (get_local $var$0)
    (i32.const 4)
   )
  )
 )
 (func $2 (type $0) (param $var$0 i32) (result i32)
  (block $label$0 i32
   (i32.store offset=12
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
    (get_local $var$0)
   )
   (i32.add
    (get_local $var$0)
    (i32.const 8)
   )
  )
 )
 (func $3 (type $0) (param $var$0 i32) (result i32)
  (block $label$0 i32
   (i32.store offset=12
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
    (get_local $var$0)
   )
   (i32.add
    (get_local $var$0)
    (i32.const 12)
   )
  )
 )
 (func $4 (type $0) (param $var$0 i32) (result i32)
  (block $label$0 i32
   (i32.store offset=12
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
    (get_local $var$0)
   )
   (i32.add
    (get_local $var$0)
    (i32.const 16)
   )
  )
 )
 (func $5 (type $1) (result i32)
  (i32.const -16776961)
 )
 (func $6 (type $0) (param $var$0 i32) (result i32)
  (local $var$1 i32)
  (local $var$2 i32)
  (block $label$0 i32
   (i32.store offset=8
    (tee_local $var$2
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
        (get_local $var$2)
       )
       (i32.const 0)
      )
     )
     (br_if $label$2
      (i32.gt_s
       (i32.load offset=8
        (get_local $var$2)
       )
       (i32.const 63)
      )
     )
     (set_local $var$0
      (i32.const 0)
     )
     (set_local $var$1
      (i32.const 0)
     )
     (block $label$3
      (br_if $label$3
       (i32.const 0)
      )
      (set_local $var$1
       (i32.const 64)
      )
      (br_if $label$3
       (i32.gt_u
        (i32.load
         (i32.add
          (i32.mul
           (i32.load offset=8
            (get_local $var$2)
           )
           (i32.const 16400)
          )
          (i32.const 307256)
         )
        )
        (i32.const 64)
       )
      )
      (set_local $var$1
       (i32.load
        (i32.add
         (i32.mul
          (i32.load offset=8
           (get_local $var$2)
          )
          (i32.const 16400)
         )
         (i32.const 307256)
        )
       )
      )
     )
     (i32.store
      (i32.add
       (i32.mul
        (i32.load offset=8
         (get_local $var$2)
        )
        (i32.const 16400)
       )
       (i32.const 307256)
      )
      (get_local $var$1)
     )
     (block $label$4
      (br_if $label$4
       (i32.const 0)
      )
      (set_local $var$0
       (i32.const 64)
      )
      (br_if $label$4
       (i32.gt_u
        (i32.load
         (i32.add
          (i32.mul
           (i32.load offset=8
            (get_local $var$2)
           )
           (i32.const 16400)
          )
          (i32.const 307260)
         )
        )
        (i32.const 64)
       )
      )
      (set_local $var$0
       (i32.load
        (i32.add
         (i32.mul
          (i32.load offset=8
           (get_local $var$2)
          )
          (i32.const 16400)
         )
         (i32.const 307260)
        )
       )
      )
     )
     (i32.store
      (i32.add
       (tee_local $var$1
        (i32.mul
         (i32.load offset=8
          (get_local $var$2)
         )
         (i32.const 16400)
        )
       )
       (i32.const 307260)
      )
      (get_local $var$0)
     )
     (i32.store offset=12
      (get_local $var$2)
      (i32.add
       (get_local $var$1)
       (i32.const 307248)
      )
     )
     (return
      (i32.load offset=12
       (get_local $var$2)
      )
     )
    )
    (i32.store offset=12
     (get_local $var$2)
     (i32.const 0)
    )
    (return
     (i32.load offset=12
      (get_local $var$2)
     )
    )
   )
   (i64.store offset=32
    (i32.const 0)
    (i64.const 0)
   )
   (i64.store offset=40
    (i32.const 0)
    (i64.const 1030792151360)
   )
   (i32.store offset=12
    (get_local $var$2)
    (i32.const 32)
   )
   (i32.load offset=12
    (get_local $var$2)
   )
  )
 )
 (func $7 (type $2) (param $var$0 i32) (param $var$1 i32) (param $var$2 i32) (param $var$3 i32) (param $var$4 i32) (result i32)
  (local $var$5 i32)
  (block $label$0 i32
   (i32.store offset=4
    (i32.const 0)
    (tee_local $var$5
     (i32.sub
      (i32.load offset=4
       (i32.const 0)
      )
      (i32.const 32)
     )
    )
   )
   (i32.store offset=24
    (get_local $var$5)
    (get_local $var$0)
   )
   (i32.store8 offset=23
    (get_local $var$5)
    (get_local $var$1)
   )
   (i32.store8 offset=22
    (get_local $var$5)
    (get_local $var$2)
   )
   (i32.store8 offset=21
    (get_local $var$5)
    (get_local $var$3)
   )
   (i32.store8 offset=20
    (get_local $var$5)
    (get_local $var$4)
   )
   (i32.store offset=16
    (get_local $var$5)
    (tee_local $var$4
     (call $6
      (i32.load offset=24
       (get_local $var$5)
      )
     )
    )
   )
   (block $label$1
    (block $label$2
     (br_if $label$2
      (i32.eqz
       (get_local $var$4)
      )
     )
     (i32.store offset=12
      (get_local $var$5)
      (i32.or
       (i32.or
        (i32.or
         (i32.shl
          (i32.load8_u offset=23
           (get_local $var$5)
          )
          (i32.const 24)
         )
         (i32.shl
          (i32.load8_u offset=22
           (get_local $var$5)
          )
          (i32.const 16)
         )
        )
        (i32.shl
         (i32.load8_u offset=21
          (get_local $var$5)
         )
         (i32.const 8)
        )
       )
       (i32.load8_u offset=20
        (get_local $var$5)
       )
      )
     )
     (i32.store offset=8
      (get_local $var$5)
      (i32.const 4)
     )
     (block $label$3
      (loop $label$4
       (br_if $label$3
        (i32.ge_u
         (i32.load offset=8
          (get_local $var$5)
         )
         (i32.add
          (i32.mul
           (i32.load
            (call $2
             (i32.load offset=16
              (get_local $var$5)
             )
            )
           )
           (i32.load
            (call $3
             (i32.load offset=16
              (get_local $var$5)
             )
            )
           )
          )
          (i32.const 4)
         )
        )
       )
       (i32.store
        (i32.add
         (i32.load offset=16
          (get_local $var$5)
         )
         (i32.shl
          (i32.load offset=8
           (get_local $var$5)
          )
          (i32.const 2)
         )
        )
        (i32.load offset=12
         (get_local $var$5)
        )
       )
       (i32.store offset=8
        (get_local $var$5)
        (i32.add
         (i32.load offset=8
          (get_local $var$5)
         )
         (i32.const 1)
        )
       )
       (br $label$4)
      )
      (unreachable)
     )
     (i32.store offset=28
      (get_local $var$5)
      (i32.const 0)
     )
     (br $label$1)
    )
    (i32.store offset=28
     (get_local $var$5)
     (i32.const 1)
    )
   )
   (set_local $var$4
    (i32.load offset=28
     (get_local $var$5)
    )
   )
   (i32.store offset=4
    (i32.const 0)
    (i32.add
     (get_local $var$5)
     (i32.const 32)
    )
   )
   (get_local $var$4)
  )
 )
 (func $8 (type $3) (param $var$0 i32) (param $var$1 i32) (result i32)
  (local $var$2 i32)
  (block $label$0 i32
   (i32.store offset=4
    (i32.const 0)
    (tee_local $var$2
     (i32.sub
      (i32.load offset=4
       (i32.const 0)
      )
      (i32.const 48)
     )
    )
   )
   (i32.store offset=40
    (get_local $var$2)
    (get_local $var$0)
   )
   (i32.store offset=36
    (get_local $var$2)
    (get_local $var$1)
   )
   (i32.store offset=32
    (get_local $var$2)
    (call $6
     (i32.load offset=40
      (get_local $var$2)
     )
    )
   )
   (i32.store offset=28
    (get_local $var$2)
    (call $6
     (i32.load offset=36
      (get_local $var$2)
     )
    )
   )
   (block $label$1
    (block $label$2
     (br_if $label$2
      (i32.eqz
       (i32.load offset=32
        (get_local $var$2)
       )
      )
     )
     (br_if $label$2
      (i32.eqz
       (i32.load offset=28
        (get_local $var$2)
       )
      )
     )
     (br_if $label$2
      (i32.eq
       (i32.load offset=32
        (get_local $var$2)
       )
       (i32.load offset=28
        (get_local $var$2)
       )
      )
     )
     (block $label$3
      (br_if $label$3
       (i32.eqz
        (i32.load
         (call $2
          (i32.load offset=32
           (get_local $var$2)
          )
         )
        )
       )
      )
      (br_if $label$3
       (i32.eqz
        (i32.load
         (call $3
          (i32.load offset=32
           (get_local $var$2)
          )
         )
        )
       )
      )
      (br_if $label$3
       (i32.eqz
        (i32.load
         (call $2
          (i32.load offset=28
           (get_local $var$2)
          )
         )
        )
       )
      )
      (br_if $label$3
       (i32.eqz
        (i32.load
         (call $3
          (i32.load offset=28
           (get_local $var$2)
          )
         )
        )
       )
      )
      (i32.store offset=24
       (get_local $var$2)
       (i32.load
        (i32.load offset=32
         (get_local $var$2)
        )
       )
      )
      (i32.store offset=20
       (get_local $var$2)
       (i32.load offset=4
        (i32.load offset=32
         (get_local $var$2)
        )
       )
      )
      (i32.store offset=16
       (get_local $var$2)
       (i32.const 0)
      )
      (loop $label$4
       (block $label$5
        (block $label$6
         (br_if $label$6
          (i32.ge_u
           (i32.load offset=16
            (get_local $var$2)
           )
           (i32.load
            (call $3
             (i32.load offset=32
              (get_local $var$2)
             )
            )
           )
          )
         )
         (i32.store offset=12
          (get_local $var$2)
          (i32.const 0)
         )
         (loop $label$7
          (br_if $label$5
           (i32.ge_u
            (i32.load offset=12
             (get_local $var$2)
            )
            (i32.load offset=8
             (i32.load offset=32
              (get_local $var$2)
             )
            )
           )
          )
          (block $label$8
           (br_if $label$8
            (i32.lt_s
             (i32.add
              (i32.load offset=12
               (get_local $var$2)
              )
              (i32.load
               (call $0
                (i32.load offset=32
                 (get_local $var$2)
                )
               )
              )
             )
             (i32.const 0)
            )
           )
           (br_if $label$8
            (i32.ge_u
             (i32.add
              (i32.load offset=12
               (get_local $var$2)
              )
              (i32.load
               (call $0
                (i32.load offset=32
                 (get_local $var$2)
                )
               )
              )
             )
             (i32.load
              (call $2
               (i32.load offset=28
                (get_local $var$2)
               )
              )
             )
            )
           )
           (br_if $label$8
            (i32.lt_s
             (i32.add
              (i32.load offset=16
               (get_local $var$2)
              )
              (i32.load
               (call $1
                (i32.load offset=32
                 (get_local $var$2)
                )
               )
              )
             )
             (i32.const 0)
            )
           )
           (br_if $label$8
            (i32.ge_u
             (i32.add
              (i32.load offset=16
               (get_local $var$2)
              )
              (i32.load
               (call $1
                (i32.load offset=32
                 (get_local $var$2)
                )
               )
              )
             )
             (i32.load
              (call $3
               (i32.load offset=28
                (get_local $var$2)
               )
              )
             )
            )
           )
           (set_local $var$1
            (i32.load
             (i32.add
              (i32.add
               (tee_local $var$1
                (i32.load offset=32
                 (get_local $var$2)
                )
               )
               (i32.shl
                (i32.add
                 (i32.mul
                  (i32.load offset=16
                   (get_local $var$2)
                  )
                  (i32.load
                   (call $2
                    (get_local $var$1)
                   )
                  )
                 )
                 (i32.load offset=12
                  (get_local $var$2)
                 )
                )
                (i32.const 2)
               )
              )
              (i32.const 16)
             )
            )
           )
           (i32.store
            (i32.add
             (i32.add
              (i32.load offset=28
               (get_local $var$2)
              )
              (i32.shl
               (i32.add
                (i32.add
                 (i32.mul
                  (i32.add
                   (i32.load
                    (call $1
                     (i32.load offset=32
                      (get_local $var$2)
                     )
                    )
                   )
                   (i32.load offset=16
                    (get_local $var$2)
                   )
                  )
                  (i32.load
                   (call $2
                    (i32.load offset=28
                     (get_local $var$2)
                    )
                   )
                  )
                 )
                 (i32.load
                  (call $0
                   (i32.load offset=32
                    (get_local $var$2)
                   )
                  )
                 )
                )
                (i32.load offset=12
                 (get_local $var$2)
                )
               )
               (i32.const 2)
              )
             )
             (i32.const 16)
            )
            (get_local $var$1)
           )
          )
          (i32.store offset=12
           (get_local $var$2)
           (i32.add
            (i32.load offset=12
             (get_local $var$2)
            )
            (i32.const 1)
           )
          )
          (br $label$7)
         )
         (unreachable)
        )
        (i32.store offset=44
         (get_local $var$2)
         (i32.const 0)
        )
        (br $label$1)
       )
       (i32.store offset=16
        (get_local $var$2)
        (i32.add
         (i32.load offset=16
          (get_local $var$2)
         )
         (i32.const 1)
        )
       )
       (br $label$4)
      )
      (unreachable)
     )
     (i32.store offset=44
      (get_local $var$2)
      (i32.const 0)
     )
     (br $label$1)
    )
    (i32.store offset=44
     (get_local $var$2)
     (i32.const 1)
    )
   )
   (set_local $var$1
    (i32.load offset=44
     (get_local $var$2)
    )
   )
   (i32.store offset=4
    (i32.const 0)
    (i32.add
     (get_local $var$2)
     (i32.const 48)
    )
   )
   (get_local $var$1)
  )
 )
 (func $9 (type $1) (result i32)
  (local $var$0 i32)
  (block $label$0 i32
   (i32.store offset=4
    (i32.const 0)
    (tee_local $var$0
     (i32.sub
      (i32.load offset=4
       (i32.const 0)
      )
      (i32.const 16)
     )
    )
   )
   (i32.store offset=12
    (get_local $var$0)
    (i32.const 0)
   )
   (block $label$1
    (loop $label$2
     (br_if $label$1
      (i32.gt_s
       (i32.load offset=12
        (get_local $var$0)
       )
       (i32.const 63)
      )
     )
     (drop
      (call $8
       (i32.load offset=12
        (get_local $var$0)
       )
       (i32.const -1)
      )
     )
     (i32.store offset=12
      (get_local $var$0)
      (i32.add
       (i32.load offset=12
        (get_local $var$0)
       )
       (i32.const 1)
      )
     )
     (br $label$2)
    )
    (unreachable)
   )
   (i32.store offset=4
    (i32.const 0)
    (i32.add
     (get_local $var$0)
     (i32.const 16)
    )
   )
   (i32.const 0)
  )
 )
)

