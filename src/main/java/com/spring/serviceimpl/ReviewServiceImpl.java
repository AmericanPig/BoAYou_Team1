package com.spring.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.domain.ReviewDTO;
import com.spring.mapper.ReviewMapper;
import com.spring.service.ReviewService;

@Service
public class ReviewServiceImpl implements ReviewService{
	
	@Autowired
	private ReviewMapper mapper;
	
		//영화 상세페이지 진입 시 현재 user_id 리뷰 유뮤 Flag
		public boolean getReviewState(String docid, String user_id) {
			boolean stmt = false;
			int reviewFlag = mapper.selectReviewCnt(docid, user_id);
			
			if(reviewFlag != 0) {
				stmt = true;
			}			
			return stmt;
		}
		
		//영화 상세페이지 현재 user_id의 리뷰 출력
		public ReviewDTO getUserReview(String docid, String user_id) {
			return mapper.selectReviewById(docid, user_id);
		}
		
		//영화 상세페이지 현재 user_id 리뷰 생성
		public int MakeUserReview(ReviewDTO reviewDTO) {
			return mapper.insertReviewById(reviewDTO);
		}
		
		//영화 상세페이지 현재 user_id 리뷰 수정
		public int changeUserReview(ReviewDTO reviewDTO) {
			return mapper.updateReviewById(reviewDTO);
		}
		
		//영화 상세페이지 현재 user_id 리뷰 삭제
		public int deleteUserReview(ReviewDTO reviewDTO) {
			return mapper.deleteReviewById(reviewDTO);
		}
		
		//영화 상세페이지 현재 영화의 전체리뷰 출력
		public List<ReviewDTO> getMovieReviewList(String docid){
			return mapper.selectMovieReviewList(docid);
		}
		
		//영화 상세페이지 현재 영화의 평점평균 출력
		public Double getMovieStarScore(String docid) {
			return mapper.selectReviewStarAvg(docid);
		}
		
		//마이페이지 나의 리뷰 목록 출력
		public List<ReviewDTO> getMyReviewList(String user_id){
			return mapper.selectUserReviewList(user_id);
		}
}
