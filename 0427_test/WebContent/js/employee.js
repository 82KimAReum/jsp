function Employee(id, name, pay, time, fcount) {
    var id = id;
    var name = name;
    var pay = pay;
    var time = time;
    var fcount = fcount;
    var dept = null;
    var hopay = null;
    var gapay = null;
    var yapay = null;
    var tot = null;
    var real = null;
 
    this.getId = function() {
        return id;
    }
    this.getName = function() {
        return name;
    }
    this.getTime = function() {
        return time;
    }
    this.getFcount = function() {
        return fcount;
    }
    this.getDept = function() {
        return dept;
    }
    this.getPay = function() {
        return pay;
    }
    this.getGapay = function() {
        return gapay;
    }
    this.getYapay = function() {
        return yapay;
    }
    this.getHopay = function() {
        return hopay;
    }
    this.getTot = function() {
        return tot;
    }
    this.getReal = function() {
        return real;
    }
 
    this.setID = function(id) {
        id = id;
    }
    this.setName = function(i) {
        name = i;
    }
    this.setTime = function(i) {
        time = i;
    }
    this.setFcount = function(i) {
        fcount = i;
    }
    this.setDept = function(i) {
        dept = i;
    }
    this.setPay = function(i) {
        pay = i;
    }
    this.setHopay = function(i) {
        hopay = i;
    }
    this.setGapay = function(i) {
        gapay = i;
    }
    this.setYapay = function(i) {
        yapay = i;
    }
    this.setTot = function(i) {
        tot = i;
    }
    this.setReal = function(i) {
        real = i;
    }
 }
 
 
 