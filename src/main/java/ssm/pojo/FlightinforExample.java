package ssm.pojo;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class FlightinforExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public FlightinforExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andFlightIdIsNull() {
            addCriterion("flight_id is null");
            return (Criteria) this;
        }

        public Criteria andFlightIdIsNotNull() {
            addCriterion("flight_id is not null");
            return (Criteria) this;
        }

        public Criteria andFlightIdEqualTo(Integer value) {
            addCriterion("flight_id =", value, "flightId");
            return (Criteria) this;
        }

        public Criteria andFlightIdNotEqualTo(Integer value) {
            addCriterion("flight_id <>", value, "flightId");
            return (Criteria) this;
        }

        public Criteria andFlightIdGreaterThan(Integer value) {
            addCriterion("flight_id >", value, "flightId");
            return (Criteria) this;
        }

        public Criteria andFlightIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("flight_id >=", value, "flightId");
            return (Criteria) this;
        }

        public Criteria andFlightIdLessThan(Integer value) {
            addCriterion("flight_id <", value, "flightId");
            return (Criteria) this;
        }

        public Criteria andFlightIdLessThanOrEqualTo(Integer value) {
            addCriterion("flight_id <=", value, "flightId");
            return (Criteria) this;
        }

        public Criteria andFlightIdIn(List<Integer> values) {
            addCriterion("flight_id in", values, "flightId");
            return (Criteria) this;
        }

        public Criteria andFlightIdNotIn(List<Integer> values) {
            addCriterion("flight_id not in", values, "flightId");
            return (Criteria) this;
        }

        public Criteria andFlightIdBetween(Integer value1, Integer value2) {
            addCriterion("flight_id between", value1, value2, "flightId");
            return (Criteria) this;
        }

        public Criteria andFlightIdNotBetween(Integer value1, Integer value2) {
            addCriterion("flight_id not between", value1, value2, "flightId");
            return (Criteria) this;
        }

        public Criteria andCompanyIsNull() {
            addCriterion("company is null");
            return (Criteria) this;
        }

        public Criteria andCompanyIsNotNull() {
            addCriterion("company is not null");
            return (Criteria) this;
        }

        public Criteria andCompanyEqualTo(String value) {
            addCriterion("company =", value, "company");
            return (Criteria) this;
        }

        public Criteria andCompanyNotEqualTo(String value) {
            addCriterion("company <>", value, "company");
            return (Criteria) this;
        }

        public Criteria andCompanyGreaterThan(String value) {
            addCriterion("company >", value, "company");
            return (Criteria) this;
        }

        public Criteria andCompanyGreaterThanOrEqualTo(String value) {
            addCriterion("company >=", value, "company");
            return (Criteria) this;
        }

        public Criteria andCompanyLessThan(String value) {
            addCriterion("company <", value, "company");
            return (Criteria) this;
        }

        public Criteria andCompanyLessThanOrEqualTo(String value) {
            addCriterion("company <=", value, "company");
            return (Criteria) this;
        }

        public Criteria andCompanyLike(String value) {
            addCriterion("company like", value, "company");
            return (Criteria) this;
        }

        public Criteria andCompanyNotLike(String value) {
            addCriterion("company not like", value, "company");
            return (Criteria) this;
        }

        public Criteria andCompanyIn(List<String> values) {
            addCriterion("company in", values, "company");
            return (Criteria) this;
        }

        public Criteria andCompanyNotIn(List<String> values) {
            addCriterion("company not in", values, "company");
            return (Criteria) this;
        }

        public Criteria andCompanyBetween(String value1, String value2) {
            addCriterion("company between", value1, value2, "company");
            return (Criteria) this;
        }

        public Criteria andCompanyNotBetween(String value1, String value2) {
            addCriterion("company not between", value1, value2, "company");
            return (Criteria) this;
        }

        public Criteria andStacityIsNull() {
            addCriterion("stacity is null");
            return (Criteria) this;
        }

        public Criteria andStacityIsNotNull() {
            addCriterion("stacity is not null");
            return (Criteria) this;
        }

        public Criteria andStacityEqualTo(String value) {
            addCriterion("stacity =", value, "stacity");
            return (Criteria) this;
        }

        public Criteria andStacityNotEqualTo(String value) {
            addCriterion("stacity <>", value, "stacity");
            return (Criteria) this;
        }

        public Criteria andStacityGreaterThan(String value) {
            addCriterion("stacity >", value, "stacity");
            return (Criteria) this;
        }

        public Criteria andStacityGreaterThanOrEqualTo(String value) {
            addCriterion("stacity >=", value, "stacity");
            return (Criteria) this;
        }

        public Criteria andStacityLessThan(String value) {
            addCriterion("stacity <", value, "stacity");
            return (Criteria) this;
        }

        public Criteria andStacityLessThanOrEqualTo(String value) {
            addCriterion("stacity <=", value, "stacity");
            return (Criteria) this;
        }

        public Criteria andStacityLike(String value) {
            addCriterion("stacity like", value, "stacity");
            return (Criteria) this;
        }

        public Criteria andStacityNotLike(String value) {
            addCriterion("stacity not like", value, "stacity");
            return (Criteria) this;
        }

        public Criteria andStacityIn(List<String> values) {
            addCriterion("stacity in", values, "stacity");
            return (Criteria) this;
        }

        public Criteria andStacityNotIn(List<String> values) {
            addCriterion("stacity not in", values, "stacity");
            return (Criteria) this;
        }

        public Criteria andStacityBetween(String value1, String value2) {
            addCriterion("stacity between", value1, value2, "stacity");
            return (Criteria) this;
        }

        public Criteria andStacityNotBetween(String value1, String value2) {
            addCriterion("stacity not between", value1, value2, "stacity");
            return (Criteria) this;
        }

        public Criteria andTarrcityIsNull() {
            addCriterion("tarrcity is null");
            return (Criteria) this;
        }

        public Criteria andTarrcityIsNotNull() {
            addCriterion("tarrcity is not null");
            return (Criteria) this;
        }

        public Criteria andTarrcityEqualTo(String value) {
            addCriterion("tarrcity =", value, "tarrcity");
            return (Criteria) this;
        }

        public Criteria andTarrcityNotEqualTo(String value) {
            addCriterion("tarrcity <>", value, "tarrcity");
            return (Criteria) this;
        }

        public Criteria andTarrcityGreaterThan(String value) {
            addCriterion("tarrcity >", value, "tarrcity");
            return (Criteria) this;
        }

        public Criteria andTarrcityGreaterThanOrEqualTo(String value) {
            addCriterion("tarrcity >=", value, "tarrcity");
            return (Criteria) this;
        }

        public Criteria andTarrcityLessThan(String value) {
            addCriterion("tarrcity <", value, "tarrcity");
            return (Criteria) this;
        }

        public Criteria andTarrcityLessThanOrEqualTo(String value) {
            addCriterion("tarrcity <=", value, "tarrcity");
            return (Criteria) this;
        }

        public Criteria andTarrcityLike(String value) {
            addCriterion("tarrcity like", value, "tarrcity");
            return (Criteria) this;
        }

        public Criteria andTarrcityNotLike(String value) {
            addCriterion("tarrcity not like", value, "tarrcity");
            return (Criteria) this;
        }

        public Criteria andTarrcityIn(List<String> values) {
            addCriterion("tarrcity in", values, "tarrcity");
            return (Criteria) this;
        }

        public Criteria andTarrcityNotIn(List<String> values) {
            addCriterion("tarrcity not in", values, "tarrcity");
            return (Criteria) this;
        }

        public Criteria andTarrcityBetween(String value1, String value2) {
            addCriterion("tarrcity between", value1, value2, "tarrcity");
            return (Criteria) this;
        }

        public Criteria andTarrcityNotBetween(String value1, String value2) {
            addCriterion("tarrcity not between", value1, value2, "tarrcity");
            return (Criteria) this;
        }

        public Criteria andDepaturetimeIsNull() {
            addCriterion("depaturetime is null");
            return (Criteria) this;
        }

        public Criteria andDepaturetimeIsNotNull() {
            addCriterion("depaturetime is not null");
            return (Criteria) this;
        }

        public Criteria andDepaturetimeEqualTo(Date value) {
            addCriterion("depaturetime =", value, "depaturetime");
            return (Criteria) this;
        }

        public Criteria andDepaturetimeNotEqualTo(Date value) {
            addCriterion("depaturetime <>", value, "depaturetime");
            return (Criteria) this;
        }

        public Criteria andDepaturetimeGreaterThan(Date value) {
            addCriterion("depaturetime >", value, "depaturetime");
            return (Criteria) this;
        }

        public Criteria andDepaturetimeGreaterThanOrEqualTo(Date value) {
            addCriterion("depaturetime >=", value, "depaturetime");
            return (Criteria) this;
        }

        public Criteria andDepaturetimeLessThan(Date value) {
            addCriterion("depaturetime <", value, "depaturetime");
            return (Criteria) this;
        }

        public Criteria andDepaturetimeLessThanOrEqualTo(Date value) {
            addCriterion("depaturetime <=", value, "depaturetime");
            return (Criteria) this;
        }

        public Criteria andDepaturetimeIn(List<Date> values) {
            addCriterion("depaturetime in", values, "depaturetime");
            return (Criteria) this;
        }

        public Criteria andDepaturetimeNotIn(List<Date> values) {
            addCriterion("depaturetime not in", values, "depaturetime");
            return (Criteria) this;
        }

        public Criteria andDepaturetimeBetween(Date value1, Date value2) {
            addCriterion("depaturetime between", value1, value2, "depaturetime");
            return (Criteria) this;
        }

        public Criteria andDepaturetimeNotBetween(Date value1, Date value2) {
            addCriterion("depaturetime not between", value1, value2, "depaturetime");
            return (Criteria) this;
        }

        public Criteria andArrivaltimeIsNull() {
            addCriterion("arrivaltime is null");
            return (Criteria) this;
        }

        public Criteria andArrivaltimeIsNotNull() {
            addCriterion("arrivaltime is not null");
            return (Criteria) this;
        }

        public Criteria andArrivaltimeEqualTo(Date value) {
            addCriterion("arrivaltime =", value, "arrivaltime");
            return (Criteria) this;
        }

        public Criteria andArrivaltimeNotEqualTo(Date value) {
            addCriterion("arrivaltime <>", value, "arrivaltime");
            return (Criteria) this;
        }

        public Criteria andArrivaltimeGreaterThan(Date value) {
            addCriterion("arrivaltime >", value, "arrivaltime");
            return (Criteria) this;
        }

        public Criteria andArrivaltimeGreaterThanOrEqualTo(Date value) {
            addCriterion("arrivaltime >=", value, "arrivaltime");
            return (Criteria) this;
        }

        public Criteria andArrivaltimeLessThan(Date value) {
            addCriterion("arrivaltime <", value, "arrivaltime");
            return (Criteria) this;
        }

        public Criteria andArrivaltimeLessThanOrEqualTo(Date value) {
            addCriterion("arrivaltime <=", value, "arrivaltime");
            return (Criteria) this;
        }

        public Criteria andArrivaltimeIn(List<Date> values) {
            addCriterion("arrivaltime in", values, "arrivaltime");
            return (Criteria) this;
        }

        public Criteria andArrivaltimeNotIn(List<Date> values) {
            addCriterion("arrivaltime not in", values, "arrivaltime");
            return (Criteria) this;
        }

        public Criteria andArrivaltimeBetween(Date value1, Date value2) {
            addCriterion("arrivaltime between", value1, value2, "arrivaltime");
            return (Criteria) this;
        }

        public Criteria andArrivaltimeNotBetween(Date value1, Date value2) {
            addCriterion("arrivaltime not between", value1, value2, "arrivaltime");
            return (Criteria) this;
        }

        public Criteria andFlighttypeIsNull() {
            addCriterion("flighttype is null");
            return (Criteria) this;
        }

        public Criteria andFlighttypeIsNotNull() {
            addCriterion("flighttype is not null");
            return (Criteria) this;
        }

        public Criteria andFlighttypeEqualTo(String value) {
            addCriterion("flighttype =", value, "flighttype");
            return (Criteria) this;
        }

        public Criteria andFlighttypeNotEqualTo(String value) {
            addCriterion("flighttype <>", value, "flighttype");
            return (Criteria) this;
        }

        public Criteria andFlighttypeGreaterThan(String value) {
            addCriterion("flighttype >", value, "flighttype");
            return (Criteria) this;
        }

        public Criteria andFlighttypeGreaterThanOrEqualTo(String value) {
            addCriterion("flighttype >=", value, "flighttype");
            return (Criteria) this;
        }

        public Criteria andFlighttypeLessThan(String value) {
            addCriterion("flighttype <", value, "flighttype");
            return (Criteria) this;
        }

        public Criteria andFlighttypeLessThanOrEqualTo(String value) {
            addCriterion("flighttype <=", value, "flighttype");
            return (Criteria) this;
        }

        public Criteria andFlighttypeLike(String value) {
            addCriterion("flighttype like", value, "flighttype");
            return (Criteria) this;
        }

        public Criteria andFlighttypeNotLike(String value) {
            addCriterion("flighttype not like", value, "flighttype");
            return (Criteria) this;
        }

        public Criteria andFlighttypeIn(List<String> values) {
            addCriterion("flighttype in", values, "flighttype");
            return (Criteria) this;
        }

        public Criteria andFlighttypeNotIn(List<String> values) {
            addCriterion("flighttype not in", values, "flighttype");
            return (Criteria) this;
        }

        public Criteria andFlighttypeBetween(String value1, String value2) {
            addCriterion("flighttype between", value1, value2, "flighttype");
            return (Criteria) this;
        }

        public Criteria andFlighttypeNotBetween(String value1, String value2) {
            addCriterion("flighttype not between", value1, value2, "flighttype");
            return (Criteria) this;
        }

        public Criteria andPriceIsNull() {
            addCriterion("price is null");
            return (Criteria) this;
        }

        public Criteria andPriceIsNotNull() {
            addCriterion("price is not null");
            return (Criteria) this;
        }

        public Criteria andPriceEqualTo(Long value) {
            addCriterion("price =", value, "price");
            return (Criteria) this;
        }

        public Criteria andPriceNotEqualTo(Long value) {
            addCriterion("price <>", value, "price");
            return (Criteria) this;
        }

        public Criteria andPriceGreaterThan(Long value) {
            addCriterion("price >", value, "price");
            return (Criteria) this;
        }

        public Criteria andPriceGreaterThanOrEqualTo(Long value) {
            addCriterion("price >=", value, "price");
            return (Criteria) this;
        }

        public Criteria andPriceLessThan(Long value) {
            addCriterion("price <", value, "price");
            return (Criteria) this;
        }

        public Criteria andPriceLessThanOrEqualTo(Long value) {
            addCriterion("price <=", value, "price");
            return (Criteria) this;
        }

        public Criteria andPriceIn(List<Long> values) {
            addCriterion("price in", values, "price");
            return (Criteria) this;
        }

        public Criteria andPriceNotIn(List<Long> values) {
            addCriterion("price not in", values, "price");
            return (Criteria) this;
        }

        public Criteria andPriceBetween(Long value1, Long value2) {
            addCriterion("price between", value1, value2, "price");
            return (Criteria) this;
        }

        public Criteria andPriceNotBetween(Long value1, Long value2) {
            addCriterion("price not between", value1, value2, "price");
            return (Criteria) this;
        }

        public Criteria andTicketsleftIsNull() {
            addCriterion("ticketsleft is null");
            return (Criteria) this;
        }

        public Criteria andTicketsleftIsNotNull() {
            addCriterion("ticketsleft is not null");
            return (Criteria) this;
        }

        public Criteria andTicketsleftEqualTo(Integer value) {
            addCriterion("ticketsleft =", value, "ticketsleft");
            return (Criteria) this;
        }

        public Criteria andTicketsleftNotEqualTo(Integer value) {
            addCriterion("ticketsleft <>", value, "ticketsleft");
            return (Criteria) this;
        }

        public Criteria andTicketsleftGreaterThan(Integer value) {
            addCriterion("ticketsleft >", value, "ticketsleft");
            return (Criteria) this;
        }

        public Criteria andTicketsleftGreaterThanOrEqualTo(Integer value) {
            addCriterion("ticketsleft >=", value, "ticketsleft");
            return (Criteria) this;
        }

        public Criteria andTicketsleftLessThan(Integer value) {
            addCriterion("ticketsleft <", value, "ticketsleft");
            return (Criteria) this;
        }

        public Criteria andTicketsleftLessThanOrEqualTo(Integer value) {
            addCriterion("ticketsleft <=", value, "ticketsleft");
            return (Criteria) this;
        }

        public Criteria andTicketsleftIn(List<Integer> values) {
            addCriterion("ticketsleft in", values, "ticketsleft");
            return (Criteria) this;
        }

        public Criteria andTicketsleftNotIn(List<Integer> values) {
            addCriterion("ticketsleft not in", values, "ticketsleft");
            return (Criteria) this;
        }

        public Criteria andTicketsleftBetween(Integer value1, Integer value2) {
            addCriterion("ticketsleft between", value1, value2, "ticketsleft");
            return (Criteria) this;
        }

        public Criteria andTicketsleftNotBetween(Integer value1, Integer value2) {
            addCriterion("ticketsleft not between", value1, value2, "ticketsleft");
            return (Criteria) this;
        }

        public Criteria andStartariportIsNull() {
            addCriterion("startariport is null");
            return (Criteria) this;
        }

        public Criteria andStartariportIsNotNull() {
            addCriterion("startariport is not null");
            return (Criteria) this;
        }

        public Criteria andStartariportEqualTo(String value) {
            addCriterion("startariport =", value, "startariport");
            return (Criteria) this;
        }

        public Criteria andStartariportNotEqualTo(String value) {
            addCriterion("startariport <>", value, "startariport");
            return (Criteria) this;
        }

        public Criteria andStartariportGreaterThan(String value) {
            addCriterion("startariport >", value, "startariport");
            return (Criteria) this;
        }

        public Criteria andStartariportGreaterThanOrEqualTo(String value) {
            addCriterion("startariport >=", value, "startariport");
            return (Criteria) this;
        }

        public Criteria andStartariportLessThan(String value) {
            addCriterion("startariport <", value, "startariport");
            return (Criteria) this;
        }

        public Criteria andStartariportLessThanOrEqualTo(String value) {
            addCriterion("startariport <=", value, "startariport");
            return (Criteria) this;
        }

        public Criteria andStartariportLike(String value) {
            addCriterion("startariport like", value, "startariport");
            return (Criteria) this;
        }

        public Criteria andStartariportNotLike(String value) {
            addCriterion("startariport not like", value, "startariport");
            return (Criteria) this;
        }

        public Criteria andStartariportIn(List<String> values) {
            addCriterion("startariport in", values, "startariport");
            return (Criteria) this;
        }

        public Criteria andStartariportNotIn(List<String> values) {
            addCriterion("startariport not in", values, "startariport");
            return (Criteria) this;
        }

        public Criteria andStartariportBetween(String value1, String value2) {
            addCriterion("startariport between", value1, value2, "startariport");
            return (Criteria) this;
        }

        public Criteria andStartariportNotBetween(String value1, String value2) {
            addCriterion("startariport not between", value1, value2, "startariport");
            return (Criteria) this;
        }

        public Criteria andArrivingairportIsNull() {
            addCriterion("arrivingairport is null");
            return (Criteria) this;
        }

        public Criteria andArrivingairportIsNotNull() {
            addCriterion("arrivingairport is not null");
            return (Criteria) this;
        }

        public Criteria andArrivingairportEqualTo(String value) {
            addCriterion("arrivingairport =", value, "arrivingairport");
            return (Criteria) this;
        }

        public Criteria andArrivingairportNotEqualTo(String value) {
            addCriterion("arrivingairport <>", value, "arrivingairport");
            return (Criteria) this;
        }

        public Criteria andArrivingairportGreaterThan(String value) {
            addCriterion("arrivingairport >", value, "arrivingairport");
            return (Criteria) this;
        }

        public Criteria andArrivingairportGreaterThanOrEqualTo(String value) {
            addCriterion("arrivingairport >=", value, "arrivingairport");
            return (Criteria) this;
        }

        public Criteria andArrivingairportLessThan(String value) {
            addCriterion("arrivingairport <", value, "arrivingairport");
            return (Criteria) this;
        }

        public Criteria andArrivingairportLessThanOrEqualTo(String value) {
            addCriterion("arrivingairport <=", value, "arrivingairport");
            return (Criteria) this;
        }

        public Criteria andArrivingairportLike(String value) {
            addCriterion("arrivingairport like", value, "arrivingairport");
            return (Criteria) this;
        }

        public Criteria andArrivingairportNotLike(String value) {
            addCriterion("arrivingairport not like", value, "arrivingairport");
            return (Criteria) this;
        }

        public Criteria andArrivingairportIn(List<String> values) {
            addCriterion("arrivingairport in", values, "arrivingairport");
            return (Criteria) this;
        }

        public Criteria andArrivingairportNotIn(List<String> values) {
            addCriterion("arrivingairport not in", values, "arrivingairport");
            return (Criteria) this;
        }

        public Criteria andArrivingairportBetween(String value1, String value2) {
            addCriterion("arrivingairport between", value1, value2, "arrivingairport");
            return (Criteria) this;
        }

        public Criteria andArrivingairportNotBetween(String value1, String value2) {
            addCriterion("arrivingairport not between", value1, value2, "arrivingairport");
            return (Criteria) this;
        }

        public Criteria andDiscountIsNull() {
            addCriterion("discount is null");
            return (Criteria) this;
        }

        public Criteria andDiscountIsNotNull() {
            addCriterion("discount is not null");
            return (Criteria) this;
        }

        public Criteria andDiscountEqualTo(String value) {
            addCriterion("discount =", value, "discount");
            return (Criteria) this;
        }

        public Criteria andDiscountNotEqualTo(String value) {
            addCriterion("discount <>", value, "discount");
            return (Criteria) this;
        }

        public Criteria andDiscountGreaterThan(String value) {
            addCriterion("discount >", value, "discount");
            return (Criteria) this;
        }

        public Criteria andDiscountGreaterThanOrEqualTo(String value) {
            addCriterion("discount >=", value, "discount");
            return (Criteria) this;
        }

        public Criteria andDiscountLessThan(String value) {
            addCriterion("discount <", value, "discount");
            return (Criteria) this;
        }

        public Criteria andDiscountLessThanOrEqualTo(String value) {
            addCriterion("discount <=", value, "discount");
            return (Criteria) this;
        }

        public Criteria andDiscountLike(String value) {
            addCriterion("discount like", value, "discount");
            return (Criteria) this;
        }

        public Criteria andDiscountNotLike(String value) {
            addCriterion("discount not like", value, "discount");
            return (Criteria) this;
        }

        public Criteria andDiscountIn(List<String> values) {
            addCriterion("discount in", values, "discount");
            return (Criteria) this;
        }

        public Criteria andDiscountNotIn(List<String> values) {
            addCriterion("discount not in", values, "discount");
            return (Criteria) this;
        }

        public Criteria andDiscountBetween(String value1, String value2) {
            addCriterion("discount between", value1, value2, "discount");
            return (Criteria) this;
        }

        public Criteria andDiscountNotBetween(String value1, String value2) {
            addCriterion("discount not between", value1, value2, "discount");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}