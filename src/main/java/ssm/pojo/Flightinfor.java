package ssm.pojo;

import java.util.Date;

public class Flightinfor {
    private Integer flightId;

    private String company;

    private String stacity;

    private String tarrcity;

    private Date depaturetime;

    private Date arrivaltime;

    private String flighttype;

    private Long price;

    private Integer ticketsleft;

    private String startariport;

    private String arrivingairport;

    private String discount;

    public Integer getFlightId() {
        return flightId;
    }

    public void setFlightId(Integer flightId) {
        this.flightId = flightId;
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public String getStacity() {
        return stacity;
    }

    public void setStacity(String stacity) {
        this.stacity = stacity;
    }

    public String getTarrcity() {
        return tarrcity;
    }

    public void setTarrcity(String tarrcity) {
        this.tarrcity = tarrcity;
    }

    public Date getDepaturetime() {
        return depaturetime;
    }

    public void setDepaturetime(Date depaturetime) {
        this.depaturetime = depaturetime;
    }

    public Date getArrivaltime() {
        return arrivaltime;
    }

    public void setArrivaltime(Date arrivaltime) {
        this.arrivaltime = arrivaltime;
    }

    public String getFlighttype() {
        return flighttype;
    }

    public void setFlighttype(String flighttype) {
        this.flighttype = flighttype;
    }

    public Long getPrice() {
        return price;
    }

    public void setPrice(Long price) {
        this.price = price;
    }

    public Integer getTicketsleft() {
        return ticketsleft;
    }

    public void setTicketsleft(Integer ticketsleft) {
        this.ticketsleft = ticketsleft;
    }

    public String getStartariport() {
        return startariport;
    }

    public void setStartariport(String startariport) {
        this.startariport = startariport;
    }

    public String getArrivingairport() {
        return arrivingairport;
    }

    public void setArrivingairport(String arrivingairport) {
        this.arrivingairport = arrivingairport;
    }

    public String getDiscount() {
        return discount;
    }

    public void setDiscount(String discount) {
        this.discount = discount;
    }
}