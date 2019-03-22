package com.mybean;

public class ProjectBean {

    private String[] columnName;
    private String[][] projectRecord = null;
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

    public void setProjectRecord(String[][] projectRecord) {
        this.projectRecord = projectRecord;
    }

    public String[][] getProjectRecord() {
        return projectRecord;
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
}
