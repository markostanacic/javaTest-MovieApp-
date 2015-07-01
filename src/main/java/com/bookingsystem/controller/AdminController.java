package com.bookingsystem.controller;

import com.bookingsystem.valueobjects.StatisticsVO;
import com.bookingsystem.model.DateUtil;
import com.bookingsystem.service.TicketService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class AdminController {

    @Autowired
    private TicketService ticketService;


    @RequestMapping(value="/admin0564044", method = RequestMethod.GET)
    public ModelAndView adminPanel() {
        return new ModelAndView("adminPage")
                .addObject("statistics", new StatisticsVO())
                .addObject("calendar", DateUtil.getCalendar());
    }

    @RequestMapping(value = "/chosenDate", method = RequestMethod.POST)
    public ModelAndView adminAsk(@ModelAttribute("statistics") StatisticsVO statistics) {
        ticketService.fillDayStatistics(statistics);
        return new ModelAndView("adminPage")
                .addObject("calendar",DateUtil.getCalendar())
                .addObject("statistics", statistics);
    }


}
