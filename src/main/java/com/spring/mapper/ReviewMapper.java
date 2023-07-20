package com.spring.mapper;

import java.util.List;

import com.spring.domain.CommentDTO;
import com.spring.domain.CommunityDTO;
import com.spring.domain.ReviewDTO;

public interface ReviewMapper {
	//=======================================================================
	//특정 영화 상세페이지에 진입하면 현재 user_id의 리뷰가 있는지확인(selectReviewCnt)
	
	//selectReviewCnt=1일 경우 현재 user_id의 리뷰 select(selectReviewById)
	//현재 리뷰 수정버튼 onclick 이벤트(updateReviewById)
	//현재 리뷰 삭제버튼 onclick 이벤트(deleteReviewById)
	
	//selectReviewCnt=0일 경우 리뷰등록버튼 onclick 이벤트 (insertReviewById)
	
	
	//=======================================================================
	
	//특정 영화 특정 id 리뷰 있는지 확인
	int selectReviewCnt(String docid, String user_id);
	
	//특정 영화 틑정 id 리뷰 출력
	ReviewDTO selectReviewById(String docid, String user_id);
	
	//특정 영화 특정 id 리뷰 생성
	int insertReviewById(ReviewDTO reviewDTO);
	
	//특정 영화 특정 id 리뷰 수정
	int updateReviewById(ReviewDTO reviewDTO);
	
	//특정 영화 특정 id 리뷰 삭제
	int deleteReviewById(ReviewDTO reviewDTO);
	
	//영화 상세페이지 해당영화 전체리뷰 목록
	List<ReviewDTO> selectMovieReviewList(String docid);
	
	//영화 상세페이지 전체리뷰 평점 평균
	double selectReviewStarAvg(String docid);
	
	//마이페이지 나의 리뷰 목록 출력
	List<ReviewDTO> selectUserReviewList(String user_id);
		
}
