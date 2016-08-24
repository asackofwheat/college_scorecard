class CreateCompletions < ActiveRecord::Migration
  def change
    create_table :completions do |t|
      t.integer :school_id
      t.float :completion_rate_4yr_150nt
      t.float :completion_rate_less_than_4yr_150nt
      t.float :title_iv_withdrawn_by_2yrs
      t.float :title_iv_still_enrolled_by_2yrs
      t.float :title_iv_low_inc_still_enrolled_by_2yrs
      t.float :title_iv_mid_inc_still_enrolled_by_2yrs
      t.float :title_iv_high_inc_still_enrolled_by_2yrs
      t.float :title_iv_independ_withdrawn_by_2yrs
      t.float :title_iv_completed_by_4yrs
      t.float :title_iv_still_enrolled_by_4yrs
      t.float :title_iv_loan_recip_died_by_4yrs
      t.float :title_iv_no_loan_completed_by_4yrs
      t.float :title_iv_no_loan_withdrawn_by_4yrs
      t.float :title_iv_first_gen_died_by_4yrs
      t.float :title_iv_first_gen_completed_by_4yrs
      t.float :title_iv_first_gen_withdrawn_by_4yrs
      t.float :title_iv_first_gen_still_enrolled_by_4yrs
      t.float :title_iv_died_by_6yrs
      t.float :title_iv_completed_by_6yrs
      t.float :title_iv_withdrawn_by_6yrs
      t.float :title_iv_low_inc_died_by_6yrs
      t.float :title_iv_low_inc_completed_by_6yrs
      t.float :title_iv_low_inc_withdrawn_by_6yrs
      t.float :title_iv_mid_inc_died_by_6yrs
      t.float :title_iv_mid_inc_completed_by_6yrs
      t.float :title_iv_mid_inc_withdrawn_by_6yrs
      t.float :title_iv_high_inc_died_by_6yrs
      t.float :title_iv_high_inc_completed_by_6yrs
      t.float :title_iv_high_inc_withdrawn_by_6yrs
      t.float :title_iv_depend_died_by_6yrs
      t.float :title_iv_depend_completed_by_6yrs
      t.float :title_iv_depend_withdrawn_by_6yrs
      t.float :title_iv_independ_died_by_6yrs
      t.float :title_iv_independ_completed_by_6yrs
      t.float :title_iv_independ_withdrawn_by_6yrs
      t.float :title_iv_female_died_by_6yrs
      t.float :title_iv_female_completed_by_6yrs
      t.float :title_iv_female_withdrawn_by_6yrs
      t.float :title_iv_male_died_by_6yrs
      t.float :title_iv_male_completed_by_6yrs
      t.float :title_iv_male_withdrawn_by_6yrs
      t.float :title_iv_pell_recip_died_by_6yrs
      t.float :title_iv_pell_recip_completed_by_6yrs
      t.float :title_iv_pell_recip_withdrawn_by_6yrs
      t.float :title_iv_no_pell_died_by_6yrs
      t.float :title_iv_no_pell_completed_by_6yrs
      t.float :title_iv_no_pell_withdrawn_by_6yrs
      t.float :title_iv_loan_recip_died_by_6yrs
      t.float :title_iv_loan_recip_completed_by_6yrs
      t.float :title_iv_loan_recip_withdrawn_by_6yrs
      t.float :title_iv_no_loan_died_by_6yrs
      t.float :title_iv_no_loan_completed_by_6yrs
      t.float :title_iv_no_loan_withdrawn_by_6yrs
      t.float :title_iv_first_gen_died_by_6yrs
      t.float :title_iv_first_gen_completed_by_6yrs
      t.float :title_iv_first_gen_withdrawn_by_6yrs
      t.float :title_iv_not_first_gen_died_by_6yrs
      t.float :title_iv_not_first_gen_completed_by_6yrs
      t.float :title_iv_not_first_gen_withdrawn_by_6yrs
      t.float :title_iv_died_by_8yrs
      t.float :title_iv_not_first_gen_withdrawn_by_8yrs
      t.float :title_iv_not_first_gen_transf_withdrawn_4yr_by_8yrs
      t.integer :six_yr_completion_overall
      t.integer :six_yr_completion_low_income
      t.integer :six_yr_completion_middle_income
      t.integer :six_yr_completion_high_income
      t.integer :six_yr_completion_dependent_students
      t.integer :six_yr_completion_independent_students
      t.integer :six_yr_completion_female_students
      t.integer :six_yr_completion_male_students
      t.integer :six_yr_completion_no_loan_students
      t.integer :six_yr_completion_first_generation_students
      t.integer :six_yr_completion_no_first_generation_students
      t.timestamps null: false
    end
  end
end