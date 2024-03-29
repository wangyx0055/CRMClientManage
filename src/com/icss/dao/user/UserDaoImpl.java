package com.icss.dao.user;

import java.sql.ResultSet;
import java.util.List;
import java.util.Map;

import com.icss.bean.UserBean;
import com.icss.dao.BaseDao;

public class UserDaoImpl extends BaseDao implements UserDao{

	@Override
	public int addUser(UserBean uBean) throws Exception {
		StringBuilder sql = new StringBuilder()
				.append(" INSERT INTO user_info(Department_id,Role_id,User_name,User_sex, ")
				.append(" User_mobile,User_age,User_address,User_num, ")
				.append(" User_pw,User_tel,User_idnum,User_email,  ")
				.append(" User_addtime,User_addman,User_intest,User_diploma, ")
				.append(" User_bankcard,User_nation,Is_married) ")
				.append(" VALUES（?,?,?,?,?,?,?,?,?,?,")
				.append(" ?,?,to_date(?,'yyyy-mm-dd,hh24:mi:ss'),?,?,?,?,?,?) ")
				;
		return executeUpdate(sql.toString(),
				uBean.getDepartment_id(),
				uBean.getRole_id(),uBean.getUser_name(),
				uBean.getUser_sex(),uBean.getUser_mobile(),
				uBean.getUser_age(),uBean.getUser_address(),
				uBean.getUser_num(),uBean.getUser_pw(),
				uBean.getUser_tel(),uBean.getUser_idnum(),
				uBean.getUser_email(),uBean.getUser_addtime(),
				uBean.getUser_addman(),uBean.getUser_intest(),
				uBean.getUser_diploma(),uBean.getUser_bankcard(),
				uBean.getUser_nation(),uBean.getIs_married()
				);
	}

	@Override
	public List<Map<String, Object>> queryUserOnPage(int nowPage, int pageSize) throws Exception {
		StringBuilder sql = new StringBuilder()
				.append("  select urole.role_name,d.department_name,uinfo.*   ")
				.append("    from user_role urole,department_info d ,(  ")
				.append("         select * from user_info ) uinfo   ")
				.append("   where urole.role_id = uinfo.role_id   ")
				.append("     and d.department_id = uinfo.department_id  ")
				.append("   order by user_id ")
				;
		
		return queryOnPage(sql.toString(), nowPage, pageSize);
	}

	@Override
	public int delUser(int user_id) throws Exception {
		
		return executeUpdate(" delete from user_info where user_id=? ", user_id);
	}

	@Override
	public List<Map<String, Object>> queryUserById(int user_id) throws Exception {
		StringBuilder sql = new StringBuilder()
				.append("  select * from( ")
				.append("  select urole.role_name,d.department_name,uinfo.*   ")
				.append("    from user_role urole,department_info d ,(  ")
				.append("         select * from user_info ) uinfo   ")
				.append("   where urole.role_id = uinfo.role_id   ")
				.append("     and d.department_id = uinfo.department_id  ")
				.append("   )mm where mm.user_id=?  ")
				;
		return executeQueryByMap(sql.toString(), user_id);
	}

	/**
	 * 模糊查询两种实现方式
	 */
	@Override
	public List<Map<String, Object>> queryUserByName(int nowPage, int pageSize, String name) throws Exception {
		StringBuilder sql = new StringBuilder()
				.append(" select * from user_info  ")
				.append(" where user_name like '%"+name+"%'  ") 
				;
		return queryOnPage(sql.toString(), nowPage, pageSize);
	}

	@Override
	public ResultSet checkLogin(String usernum, String pwd) throws Exception {
		StringBuilder sql = new StringBuilder()
				.append(" select user_name,user_pw,role_id ")
				.append("   from user_info ")
				.append("  where user_num=? ")
				.append("    and user_pw=? ")
				;
				
		return executeQuery(sql.toString(), usernum,pwd);
	}
	
	@Override
	public ResultSet checkName() throws Exception {
		
		return executeQuery(" select user_name from user_info ");
	}

	@Override
	public List<Map<String, Object>> queryAllUser() throws Exception {
		
		return executeQueryByMap(" select * from user_info ");
	}

}
