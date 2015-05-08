package org.fao.fir.cgrfa.objects;

import java.util.HashMap;
import java.util.List;

import lombok.Data;

public @Data class Questionnaire {
	
	QuestionnaireHeaders headers;
	List<Question> questions;
	HashMap<Integer, List<ControlledEntry>> controlledLists;
	List<QuestionType> questionType;
}
