import java.util.Random;
import java.util.Scanner;

public class CommonEmployeeWage {

		public static void main(String[] args) {

			System.out.println("\nWelcome to Employee Wage Computation Program!\n");

			Employee emp = new Employee();
			emp.input();
			emp.computeEmpWage();

		}

	}

	class Employee {
	    Random random = new Random();
	    Scanner sc = new Scanner(System.in);
		private int wageHour = 0;
		private int fullDay = 0;
		private int halfDay = 0;
		private int totalWage = 0;
		private int dailyWage = 0;

		protected void input()
		{
			System.out.println("Enter the Wage per hour you want to provide");
			wageHour=sc.nextInt();
			System.out.println("Enter fulltime hours:");
			fullDay=sc.nextInt();
			System.out.println("Enter halfday hours:");
			halfDay=sc.nextInt();
		}

	    private boolean attendance() {
	                int rand = random.nextInt(2);

	                if(rand == 1)
	                        return true;

	                else
	                        return false;
	        }

		private void dailyEmpWage() {
			int t = random.nextInt(2);

			switch (t) {
			case 0:
				dailyWage = fullDay * wageHour;
				totalWage += dailyWage;
				break;

			case 1:
				dailyWage = halfDay * wageHour;
				totalWage += dailyWage;
				break;

			default:
				System.err.println("Invalid Operation!");
			}
		}

		protected void computeEmpWage() {
			System.out.println("Day N0." + "	" + "Status" + "	    " + "Daily Wage" + "	    " + "Total Wage");
			for (int i = 1; i <= 21; i++) {
				if (attendance()) {
					dailyEmpWage();
					System.out.println("Day " + i + "	" + "Present" + "		" + dailyWage + "		" + totalWage);

				} else {
					dailyWage = 0;
					System.out.println("Day " + i + "	" + "Absent" + "		" + dailyWage + "		" + totalWage);
				}
			}

			System.out.println("\nHence, Total employee wage for a month = " + totalWage);
		}
	}
