package ssm.pojo;

public class Seatinfor {
    private Integer seatId;

    private Integer userId;

    private String seattype;

    private Integer seatstate;

    private Integer flightId;

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

    public String getSeattype() {
        return seattype;
    }

    public void setSeattype(String seattype) {
        this.seattype = seattype;
    }

    public Integer getSeatstate() {
        return seatstate;
    }

    public void setSeatstate(Integer seatstate) {
        this.seatstate = seatstate;
    }

    public Integer getFlightId() {
        return flightId;
    }

    public void setFlightId(Integer flightId) {
        this.flightId = flightId;
    }
}