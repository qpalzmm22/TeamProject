package com.sugang.exchange;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class ExchangeDAO {
	
	@Autowired
	SqlSession sqlSession; // needs to be changed to SqlSession

	public int insertExchange(ExchangeVO vo) {
		return sqlSession.insert("Exchange.insertExchange",vo);
	}
	
	public int deleteExchange(int rid) {
		return sqlSession.delete("Exchange.deleteExchange", rid);
	}
	
	public int updateExchange(ExchangeVO vo) {
		return sqlSession.update("Exchange.updateExchange", vo);
	}
	
	public ExchangeVO getExchange(int rid) {
		return sqlSession.selectOne("Exchange.getExchange", rid);
	}
	
	public List<ExchangeVO> getExchangeList(){
		return sqlSession.selectList("Exchange.getExchangeList");
	}
	
	public ExchangeVO verifyUser(ExchangeVO vo) {
		return sqlSession.selectOne("Exchange.tryToGetExchange", vo);
	}
}