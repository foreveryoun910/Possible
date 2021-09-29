package com.yedam.possable.app.common.domain;


import lombok.Data;
	@Data
	//@AllArgsConstructor	//생성자 만들어줌
	//@NoArgsConstructor
	public class Criteria {
		private int pageNum = 1;
		private int amount = 10;
		
		private String type;
		private String keyword;
		
		
		public Criteria() {
		}
		
		public Criteria(int pageNum, int amount) {
			this.pageNum = pageNum;
			this.amount = amount;
		}
		
		public String[] getTypeArr() {
			return type == null ? new String[] {} : type.split("");
		}
	}