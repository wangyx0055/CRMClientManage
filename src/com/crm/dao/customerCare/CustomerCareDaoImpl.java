package com.crm.dao.customerCare;

import java.sql.ResultSet;
import java.util.List;
import java.util.Map;

import com.crm.bean.customerCare.CustomerCareBean;
import com.crm.dao.BaseDao;

import oracle.net.aso.e;

public class CustomerCareDaoImpl extends BaseDao implements CustomerCareDao{

	@Override
	public int addCustomerCare(CustomerCareBean careBean) throws Exception {
		StringBuilder sql = new StringBuilder()
				.append(" INSERT INTO customer_care(customer_id,care_theme,care_way,care_time,care_remark,care_nexttime,care_people)  ")
				.append(" values(?,?,?,to_date(?,'yyyy-mm-dd'),?,to_date(?,'yyyy-mm-dd'),?)")
				;
		return executeUpdate(sql.toString(), careBean.getCustomer_id(),
				careBean.getCare_theme(),
				careBean.getCare_way(),
				careBean.getCare_time(),
				careBean.getCare_remark(),
				careBean.getCare_nexttime(),
				careBean.getCare_people());
	}

	@Override
	public int delCustomerCare(int id) throws Exception {
		
		return executeUpdate(" delete from customer_care where care_id=? ", id);
	}

	@Override
	public List<Map<String, Object>> queryCareOnPage(int nowPage, int pageSize) throws Exception {
		StringBuilder sql = new StringBuilder()
				.append(" select * from customer_care ")
				;
		return queryOnPage(sql.toString(), nowPage, pageSize);
	}

	@Override
	public int updateCare(CustomerCareBean careBean) throws Exception {
		StringBuilder sql = new StringBuilder()
				.append(" update customer_care ")
				.append(" set  customer_id=?, ")
				.append(" care_theme=?, care_way=?, ")
				.append(" care_remark=?, ")
				.append(" care_nexttime=?,care_people=? ")
				.append(" where care_id=? ")
				;
				
		return executeUpdate(sql.toString(), careBean.getCustomer_id(),
				careBean.getCare_theme(),careBean.getCare_way(),
				careBean.getCare_remark(),
				careBean.getCare_nexttime(),careBean.getCare_people(),
				careBean.getCare_id());
	}

	@Override
	public ResultSet queryCareById(int care_id) throws Exception {
		
		return executeQuery("select * from customer_care where care_id=? ", care_id);
	}

	public List<Map<String, Object>> queryCareByTheme(String theme) throws Exception{
		
		return executeQueryByMap(" select * from customer_care where care_theme=? ", theme);
	}
	
	public List<Map<String, Object>> queryCareByCustomer(int customer) throws Exception{
		
		return executeQueryByMap(" select * from customer_care where customer_id=? ",customer);
	}
	
	public List<Map<String, Object>> queryCareByCareway(String careway) throws Exception{
		
		return executeQueryByMap(" select * from customer_care where care_way=? ",careway);
	}
}