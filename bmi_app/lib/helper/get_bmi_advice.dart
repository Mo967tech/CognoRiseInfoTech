import 'package:flutter/material.dart';

RichText getBmiAdvice(double bmi) {
  if (bmi < 18.5) {
    // Underweight advice
    return RichText(
      text: const TextSpan(
        style: TextStyle(color: Colors.white, fontSize: 16),
        children: <TextSpan>[
          TextSpan(
            text: 'Eat More Calories:\n',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text:
                '- Consume more high-calorie foods like nuts, avocados, and healthy oils.\n'
                '- Increase portion sizes during meals and add healthy snacks throughout the day.\n\n',
          ),
          TextSpan(
            text: 'Choose Nutrient-Rich Foods:\n',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text:
                '- Focus on foods rich in protein (lean meats, fish, eggs, legumes).\n'
                '- Include complex carbohydrates (whole grains, sweet potatoes) for sustained energy.\n'
                '- Eat plenty of fruits and vegetables for essential vitamins and minerals.\n'
                '- Add healthy fats (peanut butter, seeds) to meals to increase calorie intake.\n\n',
          ),
          TextSpan(
            text: 'Increase Meal Frequency:\n',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text:
                '- Try eating smaller, frequent meals every 2-3 hours to ensure a constant calorie intake.\n',
          ),
        ],
      ),
    );
  } else if (bmi >= 18.5 && bmi < 24.9) {
    // Normal weight advice
    return RichText(
      text: const TextSpan(
        style: TextStyle(color: Colors.white, fontSize: 16),
        children: <TextSpan>[
          TextSpan(
            text: 'Maintain Balanced Diet:\n',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text:
                '- Focus on consuming a variety of foods, ensuring an adequate intake of nutrients like protein, fiber, and healthy fats.\n'
                '- Maintain portion control and balance calorie intake with physical activity.\n\n',
          ),
          TextSpan(
            text: 'Stay Physically Active:\n',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text:
                '- Engage in regular exercise, including both cardiovascular activities and strength training.\n'
                '- Incorporate daily physical activities like walking or cycling to help maintain weight.\n\n',
          ),
          TextSpan(
            text: 'Hydration and Sleep:\n',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text:
                '- Drink plenty of water throughout the day to stay hydrated.\n'
                '- Ensure adequate sleep to support overall health and energy levels.\n',
          ),
        ],
      ),
    );
  } else if (bmi >= 25 && bmi < 29.9) {
    // Overweight advice
    return RichText(
      text: const TextSpan(
        style: TextStyle(color: Colors.white, fontSize: 16),
        children: <TextSpan>[
          TextSpan(
            text: 'Significantly Reduce Calorie Consumption:\n',
            style: TextStyle(fontWeight: FontWeight.bold),
            children: [
              TextSpan(
                text:
                    '\n - Limit intake of calorie-dense foods (fast food, sugary treats) and replace them with lower-calorie alternatives.\n'
                    '\n - Focus on mindful eating practices, such as eating slower and recognizing hunger cues.\n\n',
              ),
            ],
          ),
          TextSpan(
            text: 'Choose Foods That Support Weight Loss\n',
            style: TextStyle(fontWeight: FontWeight.bold),
            children: [
              TextSpan(text: "\n- Meat"),
              TextSpan(text: "\n- Eggs"),
              TextSpan(text: "\n- Salad"),
            ],
          ),
        ],
      ),
    );
  } else {
    return RichText(
      text: const TextSpan(
        style:
            TextStyle(color: Colors.white, fontSize: 16), // Default text style
        children: <TextSpan>[
          TextSpan(
            text: 'Adopt a Low-Calorie Diet:\n',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text:
                '- Focus on nutrient-dense, low-calorie foods such as vegetables, lean proteins, and whole grains.\n'
                '- Reduce intake of high-calorie foods, sugary drinks, and processed snacks.\n'
                '- Be mindful of portion sizes to help control calorie intake.\n\n',
          ),
          TextSpan(
            text: 'Engage in Regular Physical Activity:\n',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text:
                '- Aim for at least 150-300 minutes of moderate-intensity physical activity per week.\n'
                '- Incorporate activities like walking, swimming, or cycling into your daily routine.\n'
                '- Strength training exercises twice a week can help build muscle and improve metabolism.\n\n',
          ),
          TextSpan(
            text: 'Monitor and Plan Your Meals:\n',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text:
                '- Keep a food diary to track what you eat and identify areas for improvement.\n'
                '- Plan meals ahead of time to avoid unhealthy food choices.\n'
                '- Focus on high-fiber foods that help you feel full longer.\n\n',
          ),
          TextSpan(
            text: 'Seek Professional Help:\n',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text:
                '- Consult with a healthcare provider or dietitian to create a personalized weight loss plan.\n'
                '- Consider behavioral therapy, support groups, or counseling to help stay on track.\n'
                '- If necessary, explore medical interventions like weight-loss medication or surgery under a doctor’s supervision.\n\n',
          ),
          TextSpan(
            text: 'Stay Committed to Long-Term Changes:\n',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text:
                '- Remember, sustainable weight loss takes time. Focus on long-term lifestyle changes rather than quick fixes.\n'
                '- Stay positive and set achievable goals for gradual weight loss.\n',
          ),
        ],
      ),
    );
  }
}
