package com.animal.www.commons;

import org.springframework.stereotype.Service;

@Service
public class Paging {
	private int nowPage = 1; // ���� ������
	private int nowBlock = 1; // ���� ���
	private int totalRecord = 0; // ��ü �Խù��� ��
	private int totalpage = 0; // ��ü �������� ��
	private int totalBlock = 0; // ��ü ����� ��
	private int numPerPage = 3; // �� �������� �����ϴ� �Խù��� ��
	private int pagePerBlock = 3; // �� ��Ͼȿ� �����ϴ� �������� ��
	
	// ���Ǵ� ����
	private int begin = 0; // ���� ��ȣ
	private int end = 0; // �� ��ȣ
	private int beginBlock = 0; // ���� ���
	private int endBlock = 0; // �� ���
	
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
