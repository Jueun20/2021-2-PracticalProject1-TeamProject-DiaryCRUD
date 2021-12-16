package com.mycom.team.diary;

import java.util.List;

public interface DiaryService {
	public int insertDiary(DiaryVO vo);
	public int deleteDiary(int id);
	public int updateDiary(DiaryVO vo);
	public DiaryVO getDiary(int seq);
	public List<DiaryVO> getDiaryList();
}
