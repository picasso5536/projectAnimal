package com.animal.www.commons;

import org.springframework.stereotype.Service;

@Service
public class Paging {
	private int nowPage = 1; // 占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙
	private int nowBlock = 1; // 占쏙옙占쏙옙 占쏙옙占�
	private int totalRecord = 0; // 占쏙옙체 占쌉시뱄옙占쏙옙 占쏙옙
	private int totalpage = 0; // 占쏙옙체 占쏙옙占쏙옙占쏙옙占쏙옙 占쏙옙
	private int totalBlock = 0; // 占쏙옙체 占쏙옙占쏙옙占� 占쏙옙
	private int numPerPage = 10; // 占쏙옙 占쏙옙占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙占싹댐옙 占쌉시뱄옙占쏙옙 占쏙옙
	private int pagePerBlock = 3; // 占쏙옙 占쏙옙耉효占� 占쏙옙占쏙옙占싹댐옙 占쏙옙占쏙옙占쏙옙占쏙옙 占쏙옙
	
	// 占쏙옙占실댐옙 占쏙옙占쏙옙
	private int begin = 0; // 占쏙옙占쏙옙 占쏙옙호
	private int end = 0; // 占쏙옙 占쏙옙호
	private int beginBlock = 0; // 占쏙옙占쏙옙 占쏙옙占�
	private int endBlock = 0; // 占쏙옙 占쏙옙占�
	
	public int getNowPage() {
		return nowPage;
	}
	public void setNowPage(int nowPage) {
		this.nowPage = nowPage;
	}
	public int getNowBlock() {
		return nowBlock;
	}
	public void setNowBlock(int nowBlock) {
		this.nowBlock = nowBlock;
	}
	public int getTotalRecord() {
		return totalRecord;
	}
	public void setTotalRecord(int totalRecord) {
		this.totalRecord = totalRecord;
	}
	public int getTotalpage() {
		return totalpage;
	}
	public void setTotalpage(int totalpage) {
		this.totalpage = totalpage;
	}
	public int getTotalBlock() {
		return totalBlock;
	}
	public void setTotalBlock(int totalBlock) {
		this.totalBlock = totalBlock;
	}
	public int getNumPerPage() {
		return numPerPage;
	}
	public void setNumPerPage(int numPerPage) {
		this.numPerPage = numPerPage;
	}
	public int getPagePerBlock() {
		return pagePerBlock;
	}
	public void setPagePerBlock(int pagePerBlock) {
		this.pagePerBlock = pagePerBlock;
	}
	public int getBegin() {
		return begin;
	}
	public void setBegin(int begin) {
		this.begin = begin;
	}
	public int getEnd() {
		return end;
	}
	public void setEnd(int end) {
		this.end = end;
	}
	public int getBeginBlock() {
		return beginBlock;
	}
	public void setBeginBlock(int beginBlock) {
		this.beginBlock = beginBlock;
	}
	public int getEndBlock() {
		return endBlock;
	}
	public void setEndBlock(int endBlock) {
		this.endBlock = endBlock;
	}
}
