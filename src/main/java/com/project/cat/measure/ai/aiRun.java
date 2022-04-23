package com.project.cat.measure.ai;

public class aiRun {

	public static void main(String[] args) {

		pythonAi ai = new pythonAi();
		
		//보낼 argv경로
		
		//기본 이미지 경로
		String save_path = "C:/CatProject/cat/src/main/webapp/resources/ai_cat_img";
		//이미지 명
		String img_name = "20220408020657_ehdwn.jpg";
		
		//자바에서 파이썬으로 보내고 싶은 값을 담은 csv명
		String value = "value.csv";
		
		System.out.println(ai.aiValue(save_path, img_name));
	}

}
