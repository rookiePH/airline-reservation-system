package ssm.dto;

import java.util.Date;

public class OrderDTO {
    public Integer getOrderId() {
        return orderId;
    }

    public void setOrderId(Integer orderId) {
        this.orderId = orderId;
    }

    //order
    private  Integer orderId;
    private String userName;
    private Integer flightId;
    //seat
    private Integer seatId;

    private Integer userId;

   //user
    private Integer idnumber;

    private Integer telephone;

    //flight
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
    public Integer getSeatId() {
        return seatId;
    }

    public void setSeatId(Integer seatId) {
        this.seatId = seatId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getFlightId() {
        return flightId;
    }

    public void setFlightId(Integer flightId) {
        this.flightId = flightId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public Integer getIdnumber() {
        return idnumber;
    }

    public void setIdnumber(Integer idnumber) {
        this.idnumber = idnumber;
    }

    public Integer getTelephone() {
        return telephone;
    }

    public void setTelephone(Integer telephone) {
        this.telephone = telephone;
    }


}
