import SwiftUI

enum ButtonState {
    case check, next
    
    var text: String {
        switch self {
        case .check: return "check"
        case .next: return "next"
        }
    }
    
    var fillColor: Color {
        switch self {
        case .check: return .white
        case .next: return CustomColors.lightGreen
        }
    }
}

struct QuestionScreen: View {
    @ObservedObject var questionStorage: QuestionStorage
    
    @State private var currentSelection: [String] = []
    @State private var buttonState: ButtonState = .check
    @State private var currentQuestionCount: Int = 0
    @State private var validateState: Bool = false
    @State private var currentProgress: Float = 0.0
    @State private var questionList: [Question] = []

    init(questionStorage: QuestionStorage) {
            self.questionStorage = questionStorage
            _questionList = State(initialValue: questionStorage.questionList.shuffled())
        }
    
    var body: some View {
        let progressAnimated = withAnimation {
            Float(currentQuestionCount) / Float(questionList.count)
        }

        ScrollView(.vertical) {
            Spacer().frame(height: 30)
            ProgressView(value: progressAnimated)
                .progressViewStyle(LinearProgressViewStyle(tint: Color.green))
                .frame(height: 12)
                .padding(.horizontal, 12)
            VStack {
                Text(questionList[currentQuestionCount].question)
                    .font(.system(size: 18))
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                Spacer().frame(height: 4)
                QuestionComponent(
                    question: questionList[currentQuestionCount],
                    currentInputs: currentSelection,
                    validateParam: validateState,
                    onValueChanged: { newInputs in
                        currentSelection = newInputs
                    }
                )
                Spacer().frame(height: 6)
                Button(action: {
                    if buttonState == .check {
                        validateState = true
                        buttonState = .next
                        let isValid = isOptionListValid(
                            options: questionList[currentQuestionCount].options.filter { $0.isCorrect },
                            strings: currentSelection
                        )
                        if isValid {
                            let generator = UINotificationFeedbackGenerator()
                            generator.notificationOccurred(.success)
                        } else {
                            let generator = UINotificationFeedbackGenerator()
                            generator.notificationOccurred(.error)
                        }
                    } else {
                        validateState = false
                        currentQuestionCount += 1
                        buttonState = .check
                        currentSelection = []
                    }
                }) {
                    Text(buttonState.text)
                        .font(.system(size: 18))
                        .foregroundColor(CustomColors.darkGreen)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(buttonState.fillColor)
                        .cornerRadius(25)
                        .overlay(
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(currentSelection.isEmpty ? Color.gray : CustomColors.darkGreen, lineWidth: 1)
                        )
                        .padding(.horizontal, 32)
                }
                .disabled(currentSelection.isEmpty)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .padding()
            .background(Color.white)
        }
    }
}

func isOptionListValid(options: [Option], strings: [String]) -> Bool {
    let optionAnswers = Set(options.map { $0.answer })
    let stringsSet = Set(strings)
    
    return optionAnswers.isSubset(of: stringsSet) && strings.count <= options.count
}
