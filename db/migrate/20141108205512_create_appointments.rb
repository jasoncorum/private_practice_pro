class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.date :appt_one_date
      t.time :appt_one_time_one
      t.time :appt_one_time_two
      t.date :appt_two_date
      t.time :appt_two_time_one
      t.time :appt_two_time_two
      t.date :appt_three_date
      t.time :appt_three_time_one
      t.time :appt_three_time_two

      t.timestamps
    end
  end
end
