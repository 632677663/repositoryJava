package nagel.frame.category.controller;

import nagel.frame.category.util.Const;

public class BaseController {
    
    protected int page = Const.PAGE;
    
    protected int pageSize = Const.PAGE_SIZE;

    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }
}
