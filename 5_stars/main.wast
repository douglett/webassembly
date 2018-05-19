(module
 (type $0 (func (param i32)))
 (type $1 (func))
 (type $2 (func (param i32 i32)))
 (type $3 (func (param i32 i32) (result i32)))
 (type $4 (func (result i32)))
 (type $5 (func (param f32) (result f32)))
 (import "env" "env_cls" (func $import$0))
 (import "env" "env_drawstar" (func $import$1 (param i32 i32)))
 (import "env" "jputs" (func $import$2 (param i32)))
 (import "env" "memory" (memory $0 1))
 (table 0 anyfunc)
 (data (i32.const 4) "\80-\00\00")
 (data (i32.const 12) "d\00\00\00")
 (data (i32.const 1616) "hello world snake\00")
 (data (i32.const 1640) "\00\00\00\00\00\00\00\00")
 (export "main" (func $0))
 (export "step" (func $1))
 (export "stars_count" (func $5))
 (func $0 (type $3) (param $var$0 i32) (param $var$1 i32) (result i32)
  (local $var$2 i32)
  (block $label$0 i32
   (i32.store offset=4
    (i32.const 0)
    (tee_local $var$2
     (i32.sub
      (i32.load offset=4
       (i32.const 0)
      )
      (i32.const 16)
     )
    )
   )
   (i32.store offset=12
    (get_local $var$2)
    (i32.const 0)
   )
   (i32.store offset=8
    (get_local $var$2)
    (get_local $var$0)
   )
   (i32.store offset=4
    (get_local $var$2)
    (get_local $var$1)
   )
   (call $import$2
    (i32.const 1616)
   )
   (call $1)
   (i32.store offset=4
    (i32.const 0)
    (i32.add
     (get_local $var$2)
     (i32.const 16)
    )
   )
   (i32.const 0)
  )
 )
 (func $1 (type $1)
  (block $label$0
   (call $2)
   (call $3)
   (call $4)
  )
 )
 (func $2 (type $1)
  (local $var$0 i32)
  (local $var$1 i32)
  (local $var$2 f32)
  (local $var$3 f32)
  (block $label$0
   (i32.store offset=12
    (tee_local $var$1
     (i32.sub
      (i32.load offset=4
       (i32.const 0)
      )
      (i32.const 16)
     )
    )
    (i32.const 0)
   )
   (block $label$1
    (loop $label$2
     (br_if $label$1
      (i32.gt_s
       (i32.load offset=12
        (get_local $var$1)
       )
       (i32.const 99)
      )
     )
     (i32.store offset=8
      (get_local $var$1)
      (tee_local $var$0
       (i32.add
        (i32.shl
         (i32.load offset=12
          (get_local $var$1)
         )
         (i32.const 4)
        )
        (i32.const 16)
       )
      )
     )
     (block $label$3
      (br_if $label$3
       (i32.eqz
        (i32.load
         (get_local $var$0)
        )
       )
      )
      (f32.store offset=4
       (get_local $var$1)
       (tee_local $var$2
        (f32.demote/f64
         (f64.add
          (f64.div
           (f64.convert_s/i32
            (i32.load offset=12
             (i32.load offset=8
              (get_local $var$1)
             )
            )
           )
           (f64.const 100)
          )
          (f64.const 1)
         )
        )
       )
      )
      (f32.store offset=4
       (tee_local $var$0
        (i32.load offset=8
         (get_local $var$1)
        )
       )
       (tee_local $var$3
        (f32.mul
         (f32.load offset=4
          (get_local $var$0)
         )
         (get_local $var$2)
        )
       )
      )
      (f32.store offset=8
       (get_local $var$0)
       (f32.mul
        (f32.load offset=8
         (get_local $var$0)
        )
        (get_local $var$2)
       )
      )
      (block $label$4
       (br_if $label$4
        (f32.ge
         (f32.abs
          (get_local $var$3)
         )
         (f32.const 200)
        )
       )
       (br_if $label$3
        (i32.or
         (f32.lt
          (tee_local $var$2
           (f32.abs
            (f32.load offset=8
             (i32.load offset=8
              (get_local $var$1)
             )
            )
           )
          )
          (f32.const 200)
         )
         (f32.ne
          (get_local $var$2)
          (get_local $var$2)
         )
        )
       )
      )
      (i32.store
       (i32.load offset=8
        (get_local $var$1)
       )
       (i32.const 0)
      )
     )
     (i32.store offset=12
      (get_local $var$1)
      (i32.add
       (i32.load offset=12
        (get_local $var$1)
       )
       (i32.const 1)
      )
     )
     (br $label$2)
    )
    (unreachable)
   )
  )
 )
 (func $3 (type $1)
  (local $var$0 i32)
  (local $var$1 i32)
  (block $label$0
   (i32.store offset=4
    (i32.const 0)
    (tee_local $var$1
     (i32.sub
      (i32.load offset=4
       (i32.const 0)
      )
      (i32.const 16)
     )
    )
   )
   (block $label$1
    (loop $label$2
     (br_if $label$1
      (i32.gt_s
       (call $5)
       (i32.const 49)
      )
     )
     (i32.store offset=12
      (get_local $var$1)
      (tee_local $var$0
       (call $6)
      )
     )
     (br_if $label$1
      (i32.eqz
       (get_local $var$0)
      )
     )
     (i32.store
      (i32.load offset=12
       (get_local $var$1)
      )
      (i32.const 1)
     )
     (set_local $var$0
      (call $8)
     )
     (f32.store offset=4
      (i32.load offset=12
       (get_local $var$1)
      )
      (f32.convert_s/i32
       (i32.add
        (i32.rem_s
         (get_local $var$0)
         (i32.const 40)
        )
        (i32.const -20)
       )
      )
     )
     (set_local $var$0
      (call $8)
     )
     (f32.store offset=8
      (i32.load offset=12
       (get_local $var$1)
      )
      (f32.convert_s/i32
       (i32.add
        (i32.rem_s
         (get_local $var$0)
         (i32.const 40)
        )
        (i32.const -20)
       )
      )
     )
     (set_local $var$0
      (call $8)
     )
     (i32.store offset=12
      (i32.load offset=12
       (get_local $var$1)
      )
      (i32.add
       (i32.rem_s
        (get_local $var$0)
        (i32.const 5)
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
     (get_local $var$1)
     (i32.const 16)
    )
   )
  )
 )
 (func $4 (type $1)
  (local $var$0 i32)
  (local $var$1 i32)
  (block $label$0
   (i32.store offset=4
    (i32.const 0)
    (tee_local $var$1
     (i32.sub
      (i32.load offset=4
       (i32.const 0)
      )
      (i32.const 16)
     )
    )
   )
   (call $import$0)
   (i32.store offset=12
    (get_local $var$1)
    (i32.const 0)
   )
   (block $label$1
    (loop $label$2
     (br_if $label$1
      (i32.gt_s
       (i32.load offset=12
        (get_local $var$1)
       )
       (i32.const 99)
      )
     )
     (block $label$3
      (br_if $label$3
       (i32.eqz
        (i32.load
         (i32.add
          (i32.shl
           (i32.load offset=12
            (get_local $var$1)
           )
           (i32.const 4)
          )
          (i32.const 16)
         )
        )
       )
      )
      (call $import$1
       (i32.trunc_s/f32
        (f32.load
         (i32.add
          (tee_local $var$0
           (i32.shl
            (i32.load offset=12
             (get_local $var$1)
            )
            (i32.const 4)
           )
          )
          (i32.const 20)
         )
        )
       )
       (i32.trunc_s/f32
        (f32.load
         (i32.add
          (get_local $var$0)
          (i32.const 24)
         )
        )
       )
      )
     )
     (i32.store offset=12
      (get_local $var$1)
      (i32.add
       (i32.load offset=12
        (get_local $var$1)
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
     (get_local $var$1)
     (i32.const 16)
    )
   )
  )
 )
 (func $5 (type $4) (result i32)
  (local $var$0 i32)
  (block $label$0 i32
   (i32.store offset=12
    (tee_local $var$0
     (i32.sub
      (i32.load offset=4
       (i32.const 0)
      )
      (i32.const 16)
     )
    )
    (i32.const 0)
   )
   (i32.store offset=8
    (get_local $var$0)
    (i32.const 0)
   )
   (block $label$1
    (loop $label$2
     (br_if $label$1
      (i32.gt_s
       (i32.load offset=8
        (get_local $var$0)
       )
       (i32.const 99)
      )
     )
     (block $label$3
      (br_if $label$3
       (i32.eqz
        (i32.load
         (i32.add
          (i32.shl
           (i32.load offset=8
            (get_local $var$0)
           )
           (i32.const 4)
          )
          (i32.const 16)
         )
        )
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
     )
     (i32.store offset=8
      (get_local $var$0)
      (i32.add
       (i32.load offset=8
        (get_local $var$0)
       )
       (i32.const 1)
      )
     )
     (br $label$2)
    )
    (unreachable)
   )
   (i32.load offset=12
    (get_local $var$0)
   )
  )
 )
 (func $6 (type $4) (result i32)
  (local $var$0 i32)
  (block $label$0 i32
   (i32.store offset=8
    (tee_local $var$0
     (i32.sub
      (i32.load offset=4
       (i32.const 0)
      )
      (i32.const 16)
     )
    )
    (i32.const 0)
   )
   (block $label$1
    (loop $label$2
     (br_if $label$1
      (i32.gt_s
       (i32.load offset=8
        (get_local $var$0)
       )
       (i32.const 99)
      )
     )
     (block $label$3
      (br_if $label$3
       (i32.eqz
        (i32.load
         (i32.add
          (i32.shl
           (i32.load offset=8
            (get_local $var$0)
           )
           (i32.const 4)
          )
          (i32.const 16)
         )
        )
       )
      )
      (i32.store offset=8
       (get_local $var$0)
       (i32.add
        (i32.load offset=8
         (get_local $var$0)
        )
        (i32.const 1)
       )
      )
      (br $label$2)
     )
    )
    (i32.store offset=12
     (get_local $var$0)
     (i32.add
      (i32.shl
       (i32.load offset=8
        (get_local $var$0)
       )
       (i32.const 4)
      )
      (i32.const 16)
     )
    )
    (return
     (i32.load offset=12
      (get_local $var$0)
     )
    )
   )
   (i32.store offset=12
    (get_local $var$0)
    (i32.const 0)
   )
   (i32.load offset=12
    (get_local $var$0)
   )
  )
 )
 (func $7 (type $5) (param $var$0 f32) (result f32)
  (f32.reinterpret/i32
   (i32.and
    (i32.reinterpret/f32
     (get_local $var$0)
    )
    (i32.const 2147483647)
   )
  )
 )
 (func $8 (type $4) (result i32)
  (local $var$0 i64)
  (block $label$0 i32
   (i64.store offset=1640
    (i32.const 0)
    (tee_local $var$0
     (i64.add
      (i64.mul
       (i64.load offset=1640
        (i32.const 0)
       )
       (i64.const 6364136223846793005)
      )
      (i64.const 1)
     )
    )
   )
   (i32.wrap/i64
    (i64.shr_u
     (get_local $var$0)
     (i64.const 33)
    )
   )
  )
 )
)

