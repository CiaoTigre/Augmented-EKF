my_est_save.Acc(kTime,:) =(my_ahrsFeedback.Acc)';
      my_est_save.Acc_gps(kTime,:)= ( my_ahrsFeedback.Acc_gps)';
      my_est_save.ini_potion(kTime,:) = initial_pos_save';
        my_est_save.ini_speed(kTime,:) = initial_speed_save';
          my_est_save.ad_speed(kTime,:) = filter.advanced_speed';
         my_est_save.est_pos(kTime,:) = [ekf.xhat(5) ekf.xhat(6) ekf.xhat(7) ];
         my_est_save.est_v(kTime,:) = [ekf.xhat(8) ekf.xhat(9) ekf.xhat(10) ];
         my_est_save.pith_lag(kTime,:) = pitch_est_deg_lag;
         my_est_save.pith(kTime,:) = pitch_est_deg;
         my_est_save.roll_lag(kTime,:) = roll_est_deg_lag;
         my_est_save.roll(kTime,:) = roll_est_deg;
         my_est_save.yaw_lag(kTime,:) = yaw_est_deg_lag;
         my_est_save.yaw(kTime,:) = yaw_est_deg;
          my_est_save.yaw_mag(kTime,:) = yaw_mag;
         my_est_save.inter_speed(kTime,:) =  my_ahrsFeedback.intergral_speed;