import SwiftUI

import AVFoundation

struct QuestionComponent: View {
    let question: Question
    @State private var currentInputs: [String]
    private let validate: Bool
    var onValueChanged: ([String]) -> Void

    init(question: Question, currentInputs: [String], validateParam: Bool, onValueChanged: @escaping ([String]) -> Void) {
        self.question = question
        self._currentInputs = State(initialValue: currentInputs)
        self.validate = validateParam
        self.onValueChanged = onValueChanged
    }

    var body: some View {
    
        VStack {
            ForEach(question.options) { option in
                let isChosen = currentInputs.contains(option.answer)
                let questionBackgroundColor: Color = {
                    if self.validate {
                        if isChosen && option.isCorrect {
                            return CustomColors.darkGreen
                        } else if !isChosen && !option.isCorrect {
                            return .white
                        } else if isChosen && !option.isCorrect {
                            return CustomColors.errorRed
                        } else {
                            return CustomColors.darkGreen.opacity(0.3)
                        }
                    } else {
                        return isChosen ? CustomColors.lightDarkGreen.opacity(0.7) : .white
                    }
                }()

                Text(option.answer)
                    .font(.system(size: 14))
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(questionBackgroundColor)
                    .cornerRadius(8)
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color.black, lineWidth: 0.5)
                    )
                    .padding(.horizontal, 32)
    
                    .lineLimit(10)
                    .multilineTextAlignment(.center)
                    .onTapGesture {
                        vibrate()
                        if isChosen {
                            currentInputs.removeAll { $0 == option.answer }
                        } else {
                            currentInputs.append(option.answer)
                        }
                        onValueChanged(currentInputs)
                    }
            }
        }
    }

    private func vibrate() {
        let generator = UIImpactFeedbackGenerator(style: .medium)
        generator.impactOccurred()
    }
}

struct QuestionComponent_Previews: PreviewProvider {
    static var previews: some View {
        QuestionComponent(
            question: Question(
                question: "Sample Question",
                options: [
                    Option(answer: "Option 1", isCorrect: true),
                    Option(answer: "Option 2", isCorrect: false),
                    Option(answer: "Option 3", isCorrect: false)
                ]
            ),
            currentInputs: [],
            validateParam: false,
            onValueChanged: { _ in }
        )
    }
}


