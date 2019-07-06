このディレクトリには給与計算システムのプログラムが入っています。
従業員の情報、欠席回数、上司からの評価を入力して給与を出すことができます。

また、新たに従業員を設定することも可能です

例 SalaryCalcSystem.new(Employee::Manager.new).calc_salary({
  absent_num: 0, evaluation: 'great'
  })

=> 70
