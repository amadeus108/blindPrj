package com.blindproject.blind.entity;

public class PageMaker {

	//전체 게시물수
	private int totalCount;
	//현재 페이지 번호
	private int pageNum;
	//한 페이지에 몇개 표시할지
	private int contentNum = 5;
	//현재 페이지 블록의 시작 페이지
	private int startPage = 1;
	//현재 페이지 블록의 마지막 페이지
	private int endPage = 5;
	//이전 페이지로 가는 화살표
	private boolean prev = false;
	//다음 페이지로 가는 화살표
	private boolean next;
	//현재 페이지 블록
	private int currentBlock;
	//마지막 페이지 블록
	private int lastBlock;
	
	//이전, 다음 페이지 화살표
	public void prevNext(int pageNum) {
		if(pageNum > 0 && pageNum < 6) {
			setPrev(false);
			setNext(true);
		}else if(getLastBlock() == getCurrentBlock()) {
			setPrev(true);
			setNext(false);
		}else {
			setPrev(true);
			setNext(true);
		}
	}
	
	//전체 페이지 수를 계산하는 함수
	public int calcPage(int totalCount, int contentNum) {
		int totalPage = totalCount / contentNum;
		if(totalCount % contentNum > 0) {
			totalPage++;
		}
		return totalPage;
	}
	
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}
	public int getPageNum() {
		return pageNum;
	}
	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}
	public int getContentNum() {
		return contentNum;
	}
	public void setContentNum(int contentNum) {
		this.contentNum = contentNum;
	}
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int currentBlock) {
		this.startPage = (currentBlock * 5) - 4;
	}
	public int getEndPage() {
		return endPage;
	}
	public void setEndPage(int getLastBlock, int getCurrentBlock) {
		if(getLastBlock == getCurrentBlock) {
			this.endPage = calcPage(getTotalCount(), getContentNum());
		}else {
			this.endPage = getStartPage() + 4;
		}
	}
	public boolean isPrev() {
		return prev;
	}
	public void setPrev(boolean prev) {
		this.prev = prev;
	}
	public boolean isNext() {
		return next;
	}
	public void setNext(boolean next) {
		this.next = next;
	}
	public int getCurrentBlock() {
		return currentBlock;
	}
	public void setCurrentBlock(int pageNum) {
		//페이지 번호를 통해서 구한다.
		this.currentBlock = pageNum / 5;
		if(pageNum % 5 > 0) {
			this.currentBlock++;
		}
	}
	public int getLastBlock() {
		return lastBlock;
	}
	public void setLastBlock(int totalCount) {
		this.lastBlock = totalCount / (5 * this.contentNum);
		if(totalCount % (5 * this.contentNum) > 0) {
			this.lastBlock++;
		}
	}
	
	
	
}
