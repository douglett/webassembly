(module
 (type $0 (func (result i32)))
 (type $1 (func (param i32 i32 i32) (result i32)))
 (type $2 (func (param i32) (result i32)))
 (import "env" "memory" (memory $0 1))
 (table 0 anyfunc)
 (data (i32.const 4) "@)\00\00")
 (data (i32.const 272) "hello worldy\00")
 (data (i32.const 544) "hello \00")
 (export "test" (func $0))
 (export "test2" (func $1))
 (export "test3" (func $2))
 (export "test4" (func $3))
 (func $0 (type $0) (result i32)
  (i32.const 101)
 )
 (func $1 (type $0) (result i32)
  (i32.const 104)
 )
 (func $2 (type $0) (result i32)
  (block $label$0 i32
   (drop
    (call $6
     (i32.const 16)
     (i32.const 272)
     (i32.const 256)
    )
   )
   (i32.const 16)
  )
 )
 (func $3 (type $0) (result i32)
  (block $label$0 i32
   (drop
    (call $4
     (i32.const 288)
     (i32.const 544)
     (i32.const 256)
    )
   )
   (i32.const 288)
  )
 )
 (func $4 (type $1) (param $var$0 i32) (param $var$1 i32) (param $var$2 i32) (result i32)
  (local $var$3 i32)
  (local $var$4 i32)
  (block $label$0 i32
   (set_local $var$4
    (i32.add
     (get_local $var$0)
     (call $5
      (get_local $var$0)
     )
    )
   )
   (block $label$1
    (br_if $label$1
     (i32.eqz
      (get_local $var$2)
     )
    )
    (loop $label$2
     (br_if $label$1
      (i32.eqz
       (tee_local $var$3
        (i32.load8_u
         (get_local $var$1)
        )
       )
      )
     )
     (i32.store8
      (get_local $var$4)
      (get_local $var$3)
     )
     (set_local $var$4
      (i32.add
       (get_local $var$4)
       (i32.const 1)
      )
     )
     (set_local $var$1
      (i32.add
       (get_local $var$1)
       (i32.const 1)
      )
     )
     (br_if $label$2
      (tee_local $var$2
       (i32.add
        (get_local $var$2)
        (i32.const -1)
       )
      )
     )
    )
   )
   (i32.store8
    (get_local $var$4)
    (i32.const 0)
   )
   (get_local $var$0)
  )
 )
 (func $5 (type $2) (param $var$0 i32) (result i32)
  (local $var$1 i32)
  (local $var$2 i32)
  (local $var$3 i32)
  (block $label$0 i32
   (set_local $var$3
    (get_local $var$0)
   )
   (block $label$1
    (block $label$2
     (block $label$3
      (br_if $label$3
       (i32.eqz
        (i32.and
         (get_local $var$0)
         (i32.const 3)
        )
       )
      )
      (set_local $var$3
       (get_local $var$0)
      )
      (loop $label$4
       (br_if $label$2
        (i32.eqz
         (i32.load8_u
          (get_local $var$3)
         )
        )
       )
       (br_if $label$4
        (i32.and
         (tee_local $var$3
          (i32.add
           (get_local $var$3)
           (i32.const 1)
          )
         )
         (i32.const 3)
        )
       )
      )
     )
     (set_local $var$2
      (i32.add
       (get_local $var$3)
       (i32.const -4)
      )
     )
     (loop $label$5
      (br_if $label$5
       (i32.eqz
        (i32.and
         (i32.and
          (i32.xor
           (tee_local $var$3
            (i32.load
             (tee_local $var$2
              (i32.add
               (get_local $var$2)
               (i32.const 4)
              )
             )
            )
           )
           (i32.const -1)
          )
          (i32.add
           (get_local $var$3)
           (i32.const -16843009)
          )
         )
         (i32.const -2139062144)
        )
       )
      )
     )
     (br_if $label$1
      (i32.eqz
       (i32.and
        (get_local $var$3)
        (i32.const 255)
       )
      )
     )
     (loop $label$6
      (set_local $var$1
       (i32.load8_u offset=1
        (get_local $var$2)
       )
      )
      (set_local $var$2
       (tee_local $var$3
        (i32.add
         (get_local $var$2)
         (i32.const 1)
        )
       )
      )
      (br_if $label$6
       (get_local $var$1)
      )
     )
    )
    (return
     (i32.sub
      (get_local $var$3)
      (get_local $var$0)
     )
    )
   )
   (i32.sub
    (get_local $var$2)
    (get_local $var$0)
   )
  )
 )
 (func $6 (type $1) (param $var$0 i32) (param $var$1 i32) (param $var$2 i32) (result i32)
  (block $label$0 i32
   (drop
    (call $7
     (get_local $var$0)
     (get_local $var$1)
     (get_local $var$2)
    )
   )
   (get_local $var$0)
  )
 )
 (func $7 (type $1) (param $var$0 i32) (param $var$1 i32) (param $var$2 i32) (result i32)
  (local $var$3 i32)
  (local $var$4 i32)
  (block $label$0 i32
   (block $label$1
    (block $label$2
     (block $label$3
      (block $label$4
       (br_if $label$4
        (i32.eqz
         (i32.and
          (i32.xor
           (get_local $var$1)
           (get_local $var$0)
          )
          (i32.const 3)
         )
        )
       )
       (set_local $var$4
        (get_local $var$2)
       )
       (br $label$3)
      )
      (set_local $var$3
       (i32.ne
        (get_local $var$2)
        (i32.const 0)
       )
      )
      (block $label$5
       (block $label$6
        (block $label$7
         (br_if $label$7
          (i32.eqz
           (get_local $var$2)
          )
         )
         (br_if $label$7
          (i32.eqz
           (i32.and
            (get_local $var$1)
            (i32.const 3)
           )
          )
         )
         (loop $label$8
          (i32.store8
           (get_local $var$0)
           (tee_local $var$4
            (i32.load8_u
             (get_local $var$1)
            )
           )
          )
          (br_if $label$1
           (i32.eqz
            (get_local $var$4)
           )
          )
          (block $label$9
           (set_local $var$3
            (i32.ne
             (get_local $var$2)
             (i32.const 1)
            )
           )
           (set_local $var$0
            (i32.add
             (get_local $var$0)
             (i32.const 1)
            )
           )
           (set_local $var$4
            (i32.add
             (get_local $var$2)
             (i32.const -1)
            )
           )
           (set_local $var$1
            (i32.add
             (get_local $var$1)
             (i32.const 1)
            )
           )
           (br_if $label$9
            (i32.eq
             (get_local $var$2)
             (i32.const 1)
            )
           )
           (set_local $var$2
            (get_local $var$4)
           )
           (br_if $label$8
            (i32.and
             (get_local $var$1)
             (i32.const 3)
            )
           )
          )
         )
         (br_if $label$6
          (i32.eqz
           (get_local $var$3)
          )
         )
         (br $label$5)
        )
        (set_local $var$4
         (get_local $var$2)
        )
        (br_if $label$5
         (get_local $var$3)
        )
       )
       (set_local $var$2
        (i32.const 0)
       )
       (br $label$1)
      )
      (br_if $label$2
       (i32.eqz
        (i32.load8_u
         (get_local $var$1)
        )
       )
      )
      (br_if $label$3
       (i32.lt_u
        (get_local $var$4)
        (i32.const 4)
       )
      )
      (loop $label$10
       (br_if $label$3
        (i32.and
         (i32.and
          (i32.xor
           (tee_local $var$2
            (i32.load
             (get_local $var$1)
            )
           )
           (i32.const -1)
          )
          (i32.add
           (get_local $var$2)
           (i32.const -16843009)
          )
         )
         (i32.const -2139062144)
        )
       )
       (i32.store
        (get_local $var$0)
        (get_local $var$2)
       )
       (set_local $var$0
        (i32.add
         (get_local $var$0)
         (i32.const 4)
        )
       )
       (set_local $var$1
        (i32.add
         (get_local $var$1)
         (i32.const 4)
        )
       )
       (br_if $label$10
        (i32.gt_u
         (tee_local $var$4
          (i32.add
           (get_local $var$4)
           (i32.const -4)
          )
         )
         (i32.const 3)
        )
       )
      )
     )
     (set_local $var$2
      (i32.const 0)
     )
     (br_if $label$1
      (i32.eqz
       (get_local $var$4)
      )
     )
     (loop $label$11
      (i32.store8
       (get_local $var$0)
       (tee_local $var$3
        (i32.load8_u
         (get_local $var$1)
        )
       )
      )
      (br_if $label$2
       (i32.eqz
        (get_local $var$3)
       )
      )
      (set_local $var$0
       (i32.add
        (get_local $var$0)
        (i32.const 1)
       )
      )
      (set_local $var$1
       (i32.add
        (get_local $var$1)
        (i32.const 1)
       )
      )
      (br_if $label$11
       (tee_local $var$4
        (i32.add
         (get_local $var$4)
         (i32.const -1)
        )
       )
      )
      (br $label$1)
     )
     (unreachable)
    )
    (set_local $var$2
     (get_local $var$4)
    )
   )
   (call $8
    (get_local $var$0)
    (i32.const 0)
    (get_local $var$2)
   )
  )
 )
 (func $8 (type $1) (param $var$0 i32) (param $var$1 i32) (param $var$2 i32) (result i32)
  (local $var$3 i32)
  (local $var$4 i32)
  (local $var$5 i32)
  (local $var$6 i64)
  (block $label$0 i32
   (block $label$1
    (br_if $label$1
     (i32.eqz
      (get_local $var$2)
     )
    )
    (i32.store8
     (i32.add
      (tee_local $var$5
       (i32.add
        (get_local $var$0)
        (get_local $var$2)
       )
      )
      (i32.const -1)
     )
     (get_local $var$1)
    )
    (i32.store8
     (get_local $var$0)
     (get_local $var$1)
    )
    (br_if $label$1
     (i32.lt_u
      (get_local $var$2)
      (i32.const 3)
     )
    )
    (i32.store8
     (i32.add
      (get_local $var$5)
      (i32.const -2)
     )
     (get_local $var$1)
    )
    (i32.store8 offset=1
     (get_local $var$0)
     (get_local $var$1)
    )
    (i32.store8
     (i32.add
      (get_local $var$5)
      (i32.const -3)
     )
     (get_local $var$1)
    )
    (i32.store8 offset=2
     (get_local $var$0)
     (get_local $var$1)
    )
    (br_if $label$1
     (i32.lt_u
      (get_local $var$2)
      (i32.const 7)
     )
    )
    (i32.store8
     (i32.add
      (get_local $var$5)
      (i32.const -4)
     )
     (get_local $var$1)
    )
    (i32.store8 offset=3
     (get_local $var$0)
     (get_local $var$1)
    )
    (br_if $label$1
     (i32.lt_u
      (get_local $var$2)
      (i32.const 9)
     )
    )
    (i32.store
     (tee_local $var$5
      (i32.add
       (get_local $var$0)
       (tee_local $var$3
        (i32.and
         (i32.sub
          (i32.const 0)
          (get_local $var$0)
         )
         (i32.const 3)
        )
       )
      )
     )
     (tee_local $var$1
      (i32.mul
       (i32.and
        (get_local $var$1)
        (i32.const 255)
       )
       (i32.const 16843009)
      )
     )
    )
    (i32.store
     (i32.add
      (tee_local $var$2
       (i32.add
        (get_local $var$5)
        (tee_local $var$3
         (i32.and
          (i32.sub
           (get_local $var$2)
           (get_local $var$3)
          )
          (i32.const -4)
         )
        )
       )
      )
      (i32.const -4)
     )
     (get_local $var$1)
    )
    (br_if $label$1
     (i32.lt_u
      (get_local $var$3)
      (i32.const 9)
     )
    )
    (i32.store offset=8
     (get_local $var$5)
     (get_local $var$1)
    )
    (i32.store offset=4
     (get_local $var$5)
     (get_local $var$1)
    )
    (i32.store
     (i32.add
      (get_local $var$2)
      (i32.const -8)
     )
     (get_local $var$1)
    )
    (i32.store
     (i32.add
      (get_local $var$2)
      (i32.const -12)
     )
     (get_local $var$1)
    )
    (br_if $label$1
     (i32.lt_u
      (get_local $var$3)
      (i32.const 25)
     )
    )
    (i32.store offset=16
     (get_local $var$5)
     (get_local $var$1)
    )
    (i32.store offset=12
     (get_local $var$5)
     (get_local $var$1)
    )
    (i32.store offset=20
     (get_local $var$5)
     (get_local $var$1)
    )
    (i32.store offset=24
     (get_local $var$5)
     (get_local $var$1)
    )
    (i32.store
     (i32.add
      (get_local $var$2)
      (i32.const -24)
     )
     (get_local $var$1)
    )
    (i32.store
     (i32.add
      (get_local $var$2)
      (i32.const -28)
     )
     (get_local $var$1)
    )
    (i32.store
     (i32.add
      (get_local $var$2)
      (i32.const -20)
     )
     (get_local $var$1)
    )
    (i32.store
     (i32.add
      (get_local $var$2)
      (i32.const -16)
     )
     (get_local $var$1)
    )
    (br_if $label$1
     (i32.lt_u
      (tee_local $var$2
       (i32.sub
        (get_local $var$3)
        (tee_local $var$4
         (i32.or
          (i32.and
           (get_local $var$5)
           (i32.const 4)
          )
          (i32.const 24)
         )
        )
       )
      )
      (i32.const 32)
     )
    )
    (set_local $var$6
     (i64.or
      (i64.shl
       (tee_local $var$6
        (i64.extend_u/i32
         (get_local $var$1)
        )
       )
       (i64.const 32)
      )
      (get_local $var$6)
     )
    )
    (set_local $var$1
     (i32.add
      (get_local $var$5)
      (get_local $var$4)
     )
    )
    (loop $label$2
     (i64.store
      (get_local $var$1)
      (get_local $var$6)
     )
     (i64.store
      (i32.add
       (get_local $var$1)
       (i32.const 8)
      )
      (get_local $var$6)
     )
     (i64.store
      (i32.add
       (get_local $var$1)
       (i32.const 16)
      )
      (get_local $var$6)
     )
     (i64.store
      (i32.add
       (get_local $var$1)
       (i32.const 24)
      )
      (get_local $var$6)
     )
     (set_local $var$1
      (i32.add
       (get_local $var$1)
       (i32.const 32)
      )
     )
     (br_if $label$2
      (i32.gt_u
       (tee_local $var$2
        (i32.add
         (get_local $var$2)
         (i32.const -32)
        )
       )
       (i32.const 31)
      )
     )
    )
   )
   (get_local $var$0)
  )
 )
)

