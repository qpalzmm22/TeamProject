package com.sugang.exchange;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class ExchangeServiceImpl implements ExchangeService{
	
	@Autowired
	ExchangeDAO exchangeDAO;
	
	@Override
	public int insertExchange(ExchangeVO vo) {
		return exchangeDAO.insertExchange(vo);
	}

	@Override
	public int deleteExchange(int rid) {
		return exchangeDAO.deleteExchange(rid);
	}

	@Override
	public int updateExchange(ExchangeVO vo) {
		return exchangeDAO.updateExchange(vo);
	}

	@Override
	public ExchangeVO getExchange(int rid) {
		return exchangeDAO.getExchange(rid);
	}

	@Override
	public List<ExchangeVO> getExchangeList(String keyword) {
		if (keyword != null) {
			System.out.println("service : " + keyword + " passed well");
            return exchangeDAO.getSearchList(keyword);
        }
        return exchangeDAO.getExchangeList();
	}

	@Override
	public ExchangeVO verifyExchange(ExchangeVO vo) {
		return exchangeDAO.verifyUser(vo);
	}
	

}
