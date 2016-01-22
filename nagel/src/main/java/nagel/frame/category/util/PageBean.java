package nagel.frame.category.util;

import java.util.List;

public class PageBean {
    //当前页
    private int currentPage;
    // 每页显示多少条
    private int pageSize;
    //分页条显示多少页的数据,默认显示10页
    private int pageNum = Const.PAGE_NUM;
    //数据库查询总条数
    private int numCount;
    //本页的数据列表
    private List<?> pageList;
    
    //计算
    //总页数
    private int pageCount;
    //页码列表的开始索引（包含）
    private int beginPageIndex;
    //页码列表的结束索引（包含）
    private int endPageIndex;
    public PageBean(int currentPage, int numCount, int pageSize,List<?> pageList) {
        this.currentPage = currentPage;
        this.pageList = pageList;
        this.numCount = numCount;
        this.pageSize = pageSize;
        
        //如果数据不够一页,总页数为1
        if(numCount <= pageSize){
            pageCount = 1;
        }else{
            pageCount = (numCount + pageSize - 1) / pageSize;
        }
        //分页条显示的页数
        if(pageCount <= pageNum){
            beginPageIndex = 1;
            endPageIndex = pageCount;
        }else{
         //当前页附近的共pageNum个页码
         beginPageIndex = currentPage - 4;   
         endPageIndex = currentPage + 5;
         //如果当前页后面页数不足5页
         if(endPageIndex > pageCount){
             endPageIndex = pageCount;
         }
         
        }
    }
    public int getCurrentPage() {
        return currentPage;
    }
    public void setCurrentPage(int currentPage) {
        this.currentPage = currentPage;
    }
    public int getPageSize() {
        return pageSize;
    }
    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }
    public int getPageNum() {
        return pageNum;
    }
    public void setPageNum(int pageNum) {
        this.pageNum = pageNum;
    }
    public int getNumCount() {
        return numCount;
    }
    public void setNumCount(int numCount) {
        this.numCount = numCount;
    }
    public List<?> getPageList() {
        return pageList;
    }
    public void setPageList(List<?> pageList) {
        this.pageList = pageList;
    }
    public int getPageCount() {
        return pageCount;
    }
    public void setPageCount(int pageCount) {
        this.pageCount = pageCount;
    }
    public int getBeginPageIndex() {
        return beginPageIndex;
    }
    public void setBeginPageIndex(int beginPageIndex) {
        this.beginPageIndex = beginPageIndex;
    }
    public int getEndPageIndex() {
        return endPageIndex;
    }
    public void setEndPageIndex(int endPageIndex) {
        this.endPageIndex = endPageIndex;
    }
}
