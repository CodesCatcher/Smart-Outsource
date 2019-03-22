package com.mybean;

public class UserBean {

    private String[] columnName;
    private String[][] userRecord = null;
    private int pageSize = 10;
    private int totalPages = 1;
    private int currentPage = 1;
    private int rowNumber = 1;
    private int columnNumber = 1;
    private int totalRecord = 1;

    public void setTotalRecord(int totalRecord) {
        this.totalRecord = totalRecord;
    }

    public int getTotalRecord() {
        return totalRecord;
    }

    public void setColumnName(String[] columnName) {
        this.columnName = columnName;
    }

    public String[] getColumnName() {
        return columnName;
    }

    public void setUserRecord(String[][] userRecord) {
        this.userRecord = userRecord;
    }

    public String[][] getUserRecord() {
        return userRecord;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public void setRowNumber(int rowNumber) {
        this.rowNumber = rowNumber;
    }

    public int getRowNumber() {
        return rowNumber;
    }

    public void setColumnNumber(int columnNumber) {
        this.columnNumber = columnNumber;
    }

    public int getColumnNumber() {
        return columnNumber;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setTotalPages(int totalPages) {
        this.totalPages = totalPages;
    }

    public int getTotalPages() {
        return totalPages;
    }

    public void setCurrentPage(int currentPage) {
        this.currentPage = currentPage;
    }

    public int getCurrentPage() {
        return currentPage;
    }

    private String Uaccount;
    private String Utel;
    private String Upassword;
    private String Uname;
    private String UpinCodes;

    public void setUaccount(String Uaccount){
        this.Uaccount = Uaccount;
    }
    public void setUtel(String Utel){
        this.Utel = Utel;
    }
    public void setUpassword(String Upassword){
        this.Upassword = Upassword;
    }
    public void setUname(String Uname){
        this.Uname = Uname;
    }
    public void setUpinCodes(String UpinCodes){
        this.UpinCodes = UpinCodes;
    }

    public String getUaccount(){
        return Uaccount;
    }
    public String getUtel(){
        return Utel;
    }
    public String getUpassword(){
        return Upassword;
    }
    public String getUname(){
        return Uname;
    }
    public String getUpinCodes(){
        return UpinCodes;
    }
}

