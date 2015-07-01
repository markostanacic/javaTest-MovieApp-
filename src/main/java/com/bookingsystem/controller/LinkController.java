package com.bookingsystem.controller;

import com.bookingsystem.model.DateUtil;
import com.bookingsystem.service.TimetableService;
import com.bookingsystem.valueobjects.OrderVO;
import com.bookingsystem.service.SeatService;
import com.bookingsystem.service.TicketService;
import org.apache.log4j.Logger;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.io.IOException;
import java.util.List;


@Controller
@SessionAttributes("order")
public class LinkController {

    private static final Logger log = Logger.getLogger(LinkController.class);

    @Autowired
    private TimetableService timetableService;

    @Autowired
    private SeatService seatService;

    @Autowired
    private TicketService ticketService;

    @ModelAttribute("order")
    public OrderVO addOrder() {
        return new OrderVO();
    }

	
	@RequestMapping(value="/", method = RequestMethod.GET)
	public ModelAndView mainPage() {
        OrderVO order = new OrderVO();
		return new ModelAndView("index").addObject("order", order)
                                        .addObject("calendar", DateUtil.getCalendar());
	}
	
	@RequestMapping(value="/index" , method = RequestMethod.GET)
	public ModelAndView indexPage() {
        OrderVO order = new OrderVO();
		return new ModelAndView("index").addObject("order", order)
                                        .addObject("calendar", DateUtil.getCalendar());
	}

    @RequestMapping(value = "/index/{name}", method = RequestMethod.POST)
    public ModelAndView indexForm(@PathVariable String name,
                                  @ModelAttribute("order") OrderVO order) {
        return new ModelAndView("redirect:/film/" + name).addObject("order",order);
    }



    @RequestMapping(value="/registration")
    public ModelAndView registrationPage() {
        return new ModelAndView("registration");
    }



    @RequestMapping(value = "/film/{name}", method = RequestMethod.GET)
    public ModelAndView filmPage(@PathVariable String name,
                                 @ModelAttribute("order") OrderVO order) {
        log.info("film, method GET");
        ModelAndView mav = new ModelAndView("film");
        order.setFilm(name);
        List<String> schedule = timetableService.getSchedule(name, order.getDate());
        if(schedule.isEmpty()) {
            mav.addObject("message","Sorry, in this day sessions are absent");
        } else {
            mav.addObject("schedule", schedule);
        }
        mav.addObject("order", order);
        return mav;
    }


    @RequestMapping(value ="/film/{name}",method = RequestMethod.POST)
    public ModelAndView jurassicOrder(@PathVariable String name,
                                      @ModelAttribute("order")  OrderVO order) {
        log.info("film, method POST");
        timetableService.setFilmData(order);

        return new ModelAndView("redirect:/hall")
                    .addObject("order", order);
    }

    @RequestMapping(value = "/hall", method = RequestMethod.GET)
    public ModelAndView getBohemiaHall(@ModelAttribute("order")  OrderVO order) {
        log.info("hall, method GET: choose seats");
        List<Integer> occupiedSeats =  ticketService.getPurchasedTickets
                                            (order.getHall(),order.getDate(),order.getShowtime());
        String json = "";
        try {
            json = new ObjectMapper().writeValueAsString(occupiedSeats);
        } catch (IOException e) {
            log.error("json formatting error", e);
        }
        return new ModelAndView(order.getHall()).addObject("list", json);
    }

    @RequestMapping(value="/details", method=RequestMethod.POST)
    public ModelAndView getMoney(@ModelAttribute("order")  OrderVO order) {
        if(order.getIds() == null) {
            log.info("details, method POST: seats are not  selected");
            return new ModelAndView("redirect:/hall");
        }

        seatService.takeSeats(order);
        log.info("details, method POST: take seats number from repository");
        return new ModelAndView("redirect:/payment")
                        .addObject("order", order);

    }

    @RequestMapping(value = "/payment", method = RequestMethod.GET)
    public ModelAndView getPaymentForm() {
        log.info("payment form, method GET");
        return new ModelAndView("payment");
    }

    @RequestMapping(value = "/ticket-print", method = RequestMethod.GET)
    public ModelAndView getTicketForm() {
        return new ModelAndView("ticket-print");
    }

    @RequestMapping(value="/print", method = RequestMethod.POST)
    public ModelAndView printTicket(@ModelAttribute("order") OrderVO order) {
        if(order.isPaid()) {
            log.info("order is paid, print ticket");
            ticketService.addTicket(order);
            return  new ModelAndView("redirect:/ticket-print")
                            .addObject("order", order);
        }
        log.warn("print,method POST: empty card details");
        ModelAndView mav = new ModelAndView("payment");
        mav.addObject("message","Please, fill payment's form");
        return mav;
    }


}
