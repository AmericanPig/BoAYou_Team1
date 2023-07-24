package com.spring.service;

import java.util.List;

import com.spring.domain.ReviewDTO;

public interface ReviewService {
	
	//영화 상세페이지 진입 시 현재 user_id 리뷰 유뮤 Flag
	boolean getReviewState(String docid, String user_id);
	
	//영화 상세페이지 현재 user_id의 리뷰 출력
	ReviewDTO getUserReview(String docid, String user_id);
	
	//영화 상세페이지 현재 user_id 리뷰 생성
	int MakeUserReview(ReviewDTO reviewDTO);
	
	//영화 상세페이지 현재 user_id 리뷰 수정
	int changeUserReview(ReviewDTO reviewDTO);
	
	//영화 상세페이지 현재 user_id 리뷰 삭제
	int deleteUserReview(ReviewDTO reviewDTO);
	
	//영화 상세페이지 현재 영화의 전체리뷰 출력
	List<ReviewDTO> getMovieReviewList(String docid);
	
	//영화 상세페이지 현재 영화의 평점평균 출력
	double getMovieStarScore(String docid);
	
	//마이페이지 나의 리뷰 목록 출력
	List<ReviewDTO> getMyReviewList(String user_id);
	
}
