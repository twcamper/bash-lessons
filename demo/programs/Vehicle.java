/**
 * Created by twcamper on 5/26/14.
 */
public class Vehicle {
    private double currentSpeed;
    private int currentDirection;
    private String ownerName;
    private final long vin;

    public long getVin() {
        return vin;
    }

    public double getCurrentSpeed() {
        return currentSpeed;
    }

    public void setCurrentSpeed(double currentSpeed) {
        this.currentSpeed = currentSpeed;
    }

    public int getCurrentDirection() {
        return currentDirection;
    }

    public void setCurrentDirection(int currentDirection) {
        this.currentDirection = currentDirection;
    }

    public String getOwnerName() {
        return ownerName;
    }

    public void setOwnerName(String ownerName) {
        this.ownerName = ownerName;
    }

    private static long nextVin = 0;

    public Vehicle() {
        vin = nextVin++;
    }

    public Vehicle(String ownerName) {
        this();
        this.ownerName = ownerName;
    }

    public static long highestVin() {
        return nextVin - 1;
    }

    public void turn(int degrees) {
        currentDirection += degrees;
    }

    public static String TURN_RIGHT = "TURN_RIGHT";
    public static String TURN_LEFT = "TURN_LEFT";

    public void turn(final String direction) {
        if (direction.equals(TURN_LEFT)) {
            currentDirection -= 90;
        }
        if (direction.equals(TURN_RIGHT)) {
            currentDirection +=90;
        }

    }

    public String toString() {
        return String.format("vin: %s%nCurrent Speed: %.2f%nCurrent Direction: %d%nOwner: %s%n",
                vin, currentSpeed, currentDirection, ownerName);
    }

    public static void main(String[] args) {
        Vehicle v;
        for (String arg: args) {
            v = new Vehicle(arg);
            System.out.println(v);
        }
        Vehicle v1 = new Vehicle("Dale Everyman");
        Vehicle v2 = new Vehicle("Earl Everyman");
        Vehicle v3 = new Vehicle("Darryl Everyman");

        v1.setCurrentSpeed(23.5);
        v1.setCurrentDirection(12);

        v2.setCurrentSpeed(233.5);
        v2.setCurrentDirection(25);

        v3.setCurrentSpeed(98.1);
        v3.setCurrentDirection(-34);

        System.out.println(v1);
        System.out.println(v2);
        System.out.println(v3);

        v3.turn(TURN_RIGHT);
        System.out.println(v3);

        System.out.println("Highest VIN: " + highestVin());
    }

}
