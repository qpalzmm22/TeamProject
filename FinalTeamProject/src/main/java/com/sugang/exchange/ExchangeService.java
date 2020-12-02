package com.sugang.exchange;

import java.util.List;

public interface ExchangeService {
	public int insertExchange(ExchangeVO vo);
	public int deleteExchange(int rid);
	public int updateExchange(ExchangeVO vo);
	public ExchangeVO getExchange(int rid);
	public List<ExchangeVO> getExchangeList();
	public ExchangeVO verifyExchange(ExchangeVO vo);
}
