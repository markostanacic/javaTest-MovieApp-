package com.bookingsystem.model;


import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;

/*
    User can buy tickets the week ahead
    format "dd.MM" - day in month, month in year
 */
public class DateUtil {

    private static int weekLength = 7;
    private static String[] calendar = new String[weekLength];
    private static SimpleDateFormat format = new SimpleDateFormat("dd.MM");

    public static String[] getCalendar() {
        Date dateNow = new Date();
        Calendar cal = Calendar.getInstance();

        for(int day = 0; day < weekLength; day++ ) {
            cal.setTime(dateNow);
            cal.add(Calendar.DATE, day);
            calendar[day] = format.format(cal.getTime());
        }

        return calendar;
    }

}
