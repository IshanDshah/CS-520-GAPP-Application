package gapp.model.dao;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import gapp.model.ExtraInfo;
import gapp.model.Program;;

public interface ExtraInfoDao {

	ExtraInfo getExtraInfo(Integer extr_id);

	List<ExtraInfo> getExtraInfo();

	ExtraInfo saveExtraInfo(ExtraInfo extrainfo);
	void removeExtraInfo(ExtraInfo extrainfo);

}
