package com.xuexin.wangshen.model.pojo;

/*
 * 多条数据分页信息
 */
public class PagingInfo {

	private int nPageSize;			//单页尺寸，输入
	private int nPageIndex;			//当前页数，输入，0开始
	private int nTotalPage;			//总页数，输出
	private int nTotalCount;		//总条数，输出
	
	public int getnPageSize() {
		return nPageSize;
	}
	public void setnPageSize(int nPageSize) {
		this.nPageSize = nPageSize;
	}
	public int getnPageIndex() {
		return nPageIndex;
	}
	public void setnPageIndex(int nPageIndex) {
		this.nPageIndex = nPageIndex;
	}
	public int getnTotalPage() {
		return nTotalPage;
	}
	public void setnTotalPage(int nTotalPage) {
		this.nTotalPage = nTotalPage;
	}
	public int getnTotalCount() {
		return nTotalCount;
	}
	public void setnTotalCount(int nTotalCount) {
		this.nTotalCount = nTotalCount;
	}
}
