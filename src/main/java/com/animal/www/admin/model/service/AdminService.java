package com.animal.www.admin.model.service;

import java.util.List;

import com.animal.www.admin.model.vo.TermsVO;
import com.animal.www.commons.vo.KategorieVO;

public interface AdminService {
	List<TermsVO> termsList();
	int termsDelete(String termsName);
	int termsUpdate(String termsName, String termsInfo);
	int termsInsert(String termsName, String termsInfo);
	List<KategorieVO> getKategoryList();
}
