/// DAY 4: Vector + Ownership Basics
/// 
/// Today you will:
/// 1. Learn about vectors
/// 2. Create a list of habits
/// 3. Understand basic ownership concepts

module challenge::day_04 {
    use std::vector;

    public struct Habit has copy, drop {
        name: vector<u8>,
        completed: bool,
    }

    public fun new_habit(name: vector<u8>): Habit {
        Habit {
            name,
            completed: false,
        }
    }

public struct HabitList has drop {
    habits: vector<Habit>,
}

public fun empty_list(): HabitList {
    HabitList {
        habits: vector::empty(),
    }
}

public fun add_habit(list: &mut HabitList, habit: Habit) {
    vector::push_back(&mut list.habits, habit);
}
}